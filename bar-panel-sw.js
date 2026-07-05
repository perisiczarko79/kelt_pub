// Minimalan service worker - postoji samo da bi browser smatrao stranicu
// "instalabilnom" (Dodaj na početni ekran). Ne keširamo agresivno jer
// narudžbe MORAJU uvijek biti sveže preko Firebase-a, ne iz keša.
self.addEventListener('install', (event) => {
    self.skipWaiting();
});

self.addEventListener('activate', (event) => {
    self.clients.claim();
});

self.addEventListener('fetch', (event) => {
    // Prosto proslijedi zahtjev mreži - namjerno bez keširanja sadržaja
    // (narudžbe se ne smiju prikazivati iz zastarjelog keša).
    event.respondWith(fetch(event.request));
});
