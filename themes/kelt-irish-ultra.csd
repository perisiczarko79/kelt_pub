/* ==========================================
   KELT IRISH ULTRA - THEME STYLES
   Cleaned & Optimized
   ========================================== */

/* VARIABLES */
.theme-kelt-irish-ultra {
    --bg-dark: #0c120e;
    --bg-card: #162019;
    --bg-elevated: #1d2b22;
    --primary: #d4a96a;
    --primary-light: #f0ca8c;
    --text-light: #f5efe4;
    --text-muted: #baa07a;
    --text-tertiary: #7d6a4d;
    --border-color: rgba(212, 169, 106, .15);
}

/* ========== BASE & BACKGROUND ========== */
.theme-kelt-irish-ultra body {
    background:
        radial-gradient(circle at top, rgba(212, 169, 106, .10), transparent 35%),
        radial-gradient(circle at bottom left, rgba(31, 84, 52, .15), transparent 40%),
        linear-gradient(180deg, #09100b, #0c120e);
}

/* ========== HEADER ========== */
.theme-kelt-irish-ultra .brand-header {
    position: relative;
}

.theme-kelt-irish-ultra .brand-header::before {
    content: "☘";
    position: absolute;
    left: 50%;
    top: 10px;
    transform: translateX(-50%);
    font-size: 180px;
    opacity: .045;
    color: rgba(212, 169, 106, .35);
    pointer-events: none;
}

.theme-kelt-irish-ultra .cafe-logo-row {
    position: relative;
    min-height: 180px;
}

.theme-kelt-irish-ultra .cafe-logo-row::before {
    content: "";
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    width: 170px;
    height: 170px;
    border-radius: 50%;
    border: 1px solid rgba(212, 169, 106, .25);
    box-shadow: 0 0 25px rgba(212, 169, 106, .10);
}

.theme-kelt-irish-ultra .cafe-name {
    background: linear-gradient(180deg, #fff4d4, #d4a96a, #9f7237);
    -webkit-background-clip: text;
    background-clip: text;
    -webkit-text-fill-color: transparent;
    font-weight: 800;
}

/* ========== WELCOME MESSAGE ========== */
.theme-kelt-irish-ultra .welcome-msg {
    background: linear-gradient(135deg, rgba(15, 25, 18, .95), rgba(8, 15, 11, .95));
    border: 1px solid rgba(212, 169, 106, .15);
    box-shadow: 0 10px 30px rgba(0, 0, 0, .25);
}

.theme-kelt-irish-ultra .welcome-msg button {
    background: linear-gradient(135deg, #B88A45, #D4A96A) !important;
    color: #08110C !important;
    border: none !important;
    border-radius: 18px;
    padding: 10px 16px;
    font-weight: 700;
}

/* ========== CATEGORY NAVIGATION ========== */
.theme-kelt-irish-ultra .category-nav {
    position: relative;
    background: rgba(12, 18, 14, .95);
    border-bottom: 1px solid rgba(212, 169, 106, .12);
    box-shadow: 0 10px 35px rgba(0, 0, 0, .35);
}

.theme-kelt-irish-ultra .category-nav::after {
    content: "";
    position: absolute;
    right: 0;
    top: 0;
    width: 40px;
    height: 100%;
    background: linear-gradient(to left, rgba(12, 18, 14, 1), transparent);
    pointer-events: none;
}

.theme-kelt-irish-ultra .category-nav button {
    min-height: 44px;
    padding: 10px 18px;
    background: rgba(255, 255, 255, .02);
    border: 1px solid rgba(212, 169, 106, .12);
}

.theme-kelt-irish-ultra .category-nav button.active {
    background: linear-gradient(135deg, #a77b3f, #d4a96a);
    color: #fff;
}

/* ========== SECTION TITLES ========== */
.theme-kelt-irish-ultra .category-title {
    text-align: center;
    font-size: 34px;
    color: #d4a96a;
}

/* ========== PRODUCT CARDS ========== */
.theme-kelt-irish-ultra .card {
    position: relative;
    overflow: hidden;
    border-radius: 26px;
    backdrop-filter: blur(12px);
    background: linear-gradient(145deg, rgba(18, 32, 24, .98), rgba(10, 18, 12, .98));
    border: 1px solid rgba(212, 169, 106, .12);
    box-shadow: 0 10px 25px rgba(0, 0, 0, .25);
}

.theme-kelt-irish-ultra .card::before {
    content: "";
    position: absolute;
    inset: 0;
    background: linear-gradient(180deg, rgba(255, 255, 255, .02), transparent 45%);
    pointer-events: none;
}

.theme-kelt-irish-ultra .card.featured {
    border-color: rgba(212, 169, 106, .35);
    box-shadow: 0 0 24px rgba(212, 169, 106, .15), 0 12px 30px rgba(0, 0, 0, .35);
}

.theme-kelt-irish-ultra .card.promo {
    background: linear-gradient(145deg, rgba(45, 12, 12, .95), rgba(18, 8, 8, .95));
    border: 1px solid rgba(214, 59, 59, .28);
}

.theme-kelt-irish-ultra .item-name {
    color: #f5efe4;
}

.theme-kelt-irish-ultra .price-display {
    color: #E5C189;
    text-shadow: 0 0 15px rgba(212, 169, 106, .18);
}

/* ========== BUTTONS (GLOBAL) ========== */
.theme-kelt-irish-ultra .cart-btn,
.theme-kelt-irish-ultra .waiter-btn,
.theme-kelt-irish-ultra .badge,
.theme-kelt-irish-ultra .cart-icon,
.theme-kelt-irish-ultra .send-order-btn {
    background: linear-gradient(135deg, #B88A45, #D4A96A);
    border: none;
}

.theme-kelt-irish-ultra .cart-btn {
    border-radius: 999px;
}

/* ========== MODALS ========== */
.theme-kelt-irish-ultra .modal-content,
.theme-kelt-irish-ultra .cart-content,
.theme-kelt-irish-ultra .order-content {
    background: #162019;
    border: 1px solid rgba(212, 169, 106, .25);
    border-radius: 28px;
    box-shadow: 0 25px 60px rgba(0, 0, 0, .55);
}

.theme-kelt-irish-ultra .cart-content,
.theme-kelt-irish-ultra .order-content {
    position: relative;
    max-height: 85vh;
    overflow-y: auto;
    overflow-x: hidden;
    padding-right: 10px;
    padding-top: 20px;
    box-sizing: border-box;
}

/* Close (X) Button - Single Clean Version */
.theme-kelt-irish-ultra .close-cart,
.theme-kelt-irish-ultra .close-order {
    position: absolute;
    top: -12px;
    right: 14px;
    width: 48px;
    height: 48px;
    border-radius: 50%;
    background: #233126;
    border: 2px solid #D4A96A;
    color: #D4A96A;
    font-size: 22px;
    font-weight: 700;
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 9999;
    box-shadow: 0 8px 20px rgba(0, 0, 0, .35);
    transition: transform .2s ease, box-shadow .2s ease;
}

.theme-kelt-irish-ultra .close-cart:hover,
.theme-kelt-irish-ultra .close-order:hover {
    transform: scale(1.05);
    box-shadow: 0 10px 30px rgba(0, 0, 0, .45);
}

/* Modal overflow fix */
.theme-kelt-irish-ultra .cart-modal,
.theme-kelt-irish-ultra .orders-modal,
.theme-kelt-irish-ultra .modal {
    overflow: hidden;
}

/* ========== FORMS ========== */
.theme-kelt-irish-ultra input,
.theme-kelt-irish-ultra textarea,
.theme-kelt-irish-ultra select {
    background: #07100B;
    border: 1px solid rgba(212, 169, 106, .15);
    border-radius: 14px;
    color: #F8F3EA;
}

/* ========== ORDER STATUS BADGES ========== */
.theme-kelt-irish-ultra .order-status.pending {
    background: #D4A96A;
    color: #08110C;
}

.theme-kelt-irish-ultra .order-status.accepted {
    background: #1E7A46;
    color: #fff;
}

.theme-kelt-irish-ultra .order-status.completed {
    background: #2A9D5B;
    color: #fff;
}

/* ========== CART & ORDER ITEMS ========== */
.theme-kelt-irish-ultra .cart-item,
.theme-kelt-irish-ultra .order-item {
    background: linear-gradient(145deg, rgba(20, 35, 26, .95), rgba(10, 18, 12, .95));
    border: 1px solid rgba(212, 169, 106, .08);
    border-radius: 20px;
    margin-bottom: 16px;
    overflow: hidden;
    word-break: break-word;
}

.theme-kelt-irish-ultra .order-item {
    margin-bottom: 18px;
}

/* ========== TOTALS ========== */
.theme-kelt-irish-ultra .cart-total,
.theme-kelt-irish-ultra .order-total,
.theme-kelt-irish-ultra .payment-total,
.theme-kelt-irish-ultra .grand-total {
    color: #D4A96A;
    font-weight: 900;
    text-shadow: 0 0 12px rgba(212, 169, 106, .15);
}

/* Sticky totals at bottom */
.theme-kelt-irish-ultra .orders-total,
.theme-kelt-irish-ultra .payment-total {
    position: sticky;
    bottom: 0;
    background: #162019;
    padding-top: 12px;
}

/* ========== CLEAR CART BUTTON ========== */
.theme-kelt-irish-ultra #clearCartBtn {
    min-width: 220px;
    min-height: 58px;
    padding: 16px 24px;
    font-size: 18px;
    font-weight: 700;
    border: none;
    border-radius: 18px;
    background: linear-gradient(135deg, #9B2020, #C52A2A);
    color: #fff;
}

/* ========== SEND ORDER BUTTON ========== */
.theme-kelt-irish-ultra .send-order-btn {
    min-height: 58px;
    font-size: 20px;
    border-radius: 999px;
}

/* ========== ADMIN CONTROLS ========== */
.theme-kelt-irish-ultra .admin-controls {
    gap: 10px;
    flex-wrap: wrap;
}

.theme-kelt-irish-ultra .admin-btn {
    min-height: 42px;
    padding: 10px 14px;
}

/* ========== HISTORY TABLE ========== */
.theme-kelt-irish-ultra .history-table th {
    background: #132019;
    color: #D4A96A;
}

.theme-kelt-irish-ultra .history-table td {
    color: #F8F3EA;
}

/* ========== FOOTER ========== */
.theme-kelt-irish-ultra .klikhub-footer {
    background: linear-gradient(180deg, rgba(212, 169, 106, .04), rgba(0, 0, 0, .18));
}

/* ========== SCROLLBAR ========== */
.theme-kelt-irish-ultra ::-webkit-scrollbar {
    width: 6px;
}

.theme-kelt-irish-ultra ::-webkit-scrollbar-thumb {
    background: #D4A96A;
    border-radius: 999px;
}

/* ========== RESPONSIVE ========== */
@media (max-width: 768px) {
    .theme-kelt-irish-ultra .cafe-logo-row::before {
        width: 180px;
        height: 180px;
    }

    .theme-kelt-irish-ultra .category-title {
        font-size: 28px;
    }
}
