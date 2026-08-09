// /api/vodostaj.js
// Vercel serverless funkcija — čita trenutni vodostaj Drine i Ćehotine kod Foče
// direktno sa zvaničnog RHMZ RS izvora (server-side, bez CORS/robots problema
// koje bi imao poziv direktno iz browsera).
//
// Izvor (zvaničan, javni, Republički hidrometeorološki zavod RS):
//   Drina:    https://hidrologija.rhmzrs.com/dist/examples/ahsFocaVodostaj.php
//   Ćehotina: https://hidrologija.rhmzrs.com/dist/examples/ahsFocaCehotinaVodostaj.php
//
// Stranice se ažuriraju otprilike na 30 min i vraćaju HTML tabelu
// (Vrijeme | Vodostaj u cm), najnoviji red je prvi u tabeli.

const STATIONS = {
  drina: 'https://hidrologija.rhmzrs.com/dist/examples/ahsFocaVodostaj.php',
  cehotina: 'https://hidrologija.rhmzrs.com/dist/examples/ahsFocaCehotinaVodostaj.php',
};

// Traži prvi par <td>DD.MM.YYYY HH:MM</td> ... <td>VRIJEDNOST</td> u HTML-u.
// Prvi pogodak = najnoviji red (tabela je sortirana od najnovijeg ka najstarijem).
const ROW_REGEX =
  /<td[^>]*>\s*(\d{2}\.\d{2}\.\d{4}\s+\d{2}:\d{2})\s*<\/td>\s*<td[^>]*>\s*(-?\d+)\s*<\/td>/i;

async function fetchLatest(url) {
  const r = await fetch(url, {
    headers: { 'User-Agent': 'Mozilla/5.0 (focaflyspin.com water-level widget)' },
  });
  if (!r.ok) throw new Error(`HTTP ${r.status} za ${url}`);
  const html = await r.text();
  const match = html.match(ROW_REGEX);
  if (!match) throw new Error(`Nisam pronašao podatke u odgovoru sa ${url}`);
  return { time: match[1], cm: parseInt(match[2], 10) };
}

export default async function handler(req, res) {
  // CORS — dozvoli poziv sa fronta (isti domen, ali radi i za lokalni test)
  res.setHeader('Access-Control-Allow-Origin', '*');
  // Keširanje na Vercel edge-u 20 min, uz mogućnost serviranja stare verzije
  // dok se u pozadini osvježava — smanjuje broj stvarnih poziva ka RHMZ.
  res.setHeader('Cache-Control', 's-maxage=1200, stale-while-revalidate=600');

  try {
    const [drina, cehotina] = await Promise.all([
      fetchLatest(STATIONS.drina),
      fetchLatest(STATIONS.cehotina),
    ]);
    res.status(200).json({
      drina,
      cehotina,
      source: 'RHMZ Republike Srpske',
      fetchedAt: new Date().toISOString(),
    });
  } catch (err) {
    res.status(502).json({ error: 'vodostaj_fetch_failed', message: err.message });
  }
}
