package com.farsitel.bazaar.ui.payment;

import h.f.b.f;

/* compiled from: PaymentType.kt */
public enum PaymentType {
    CREDIT("Credit"),
    PURCHASABLE("Purchasable"),
    SUBSCRIPTION("Subscription");
    
    public static final a Companion = null;
    public final String value;

    /* compiled from: PaymentType.kt */
    public static final class a {
        public a() {
        }

        /* JADX WARNING: Code restructure failed: missing block: B:10:0x002c, code lost:
            if (r5.equals("S") != false) goto L_0x002e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0037, code lost:
            if (r5.equals("P") != false) goto L_0x0056;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0040, code lost:
            if (r5.equals("C") != false) goto L_0x004b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:17:0x0049, code lost:
            if (r5.equals("buy_credit") != false) goto L_0x004b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:20:0x0054, code lost:
            if (r5.equals("Purchasable") != false) goto L_0x0056;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
            return com.farsitel.bazaar.ui.payment.PaymentType.SUBSCRIPTION;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:?, code lost:
            return com.farsitel.bazaar.ui.payment.PaymentType.CREDIT;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
            return com.farsitel.bazaar.ui.payment.PaymentType.PURCHASABLE;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:4:0x0011, code lost:
            if (r5.equals("Credit") != false) goto L_0x004b;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
            if (r5.equals("Subscription") != false) goto L_0x002e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0023, code lost:
            if (r5.equals("pay") != false) goto L_0x0056;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final com.farsitel.bazaar.ui.payment.PaymentType a(java.lang.String r5) {
            /*
                r4 = this;
                if (r5 != 0) goto L_0x0003
                goto L_0x0059
            L_0x0003:
                int r0 = r5.hashCode()
                switch(r0) {
                    case -1993956578: goto L_0x004e;
                    case -1314396462: goto L_0x0043;
                    case 67: goto L_0x003a;
                    case 80: goto L_0x0031;
                    case 83: goto L_0x0026;
                    case 110760: goto L_0x001d;
                    case 505523517: goto L_0x0014;
                    case 2026542873: goto L_0x000b;
                    default: goto L_0x000a;
                }
            L_0x000a:
                goto L_0x0059
            L_0x000b:
                java.lang.String r0 = "Credit"
                boolean r0 = r5.equals(r0)
                if (r0 == 0) goto L_0x0059
                goto L_0x004b
            L_0x0014:
                java.lang.String r0 = "Subscription"
                boolean r0 = r5.equals(r0)
                if (r0 == 0) goto L_0x0059
                goto L_0x002e
            L_0x001d:
                java.lang.String r0 = "pay"
                boolean r0 = r5.equals(r0)
                if (r0 == 0) goto L_0x0059
                goto L_0x0056
            L_0x0026:
                java.lang.String r0 = "S"
                boolean r0 = r5.equals(r0)
                if (r0 == 0) goto L_0x0059
            L_0x002e:
                com.farsitel.bazaar.ui.payment.PaymentType r5 = com.farsitel.bazaar.ui.payment.PaymentType.SUBSCRIPTION
                goto L_0x0076
            L_0x0031:
                java.lang.String r0 = "P"
                boolean r0 = r5.equals(r0)
                if (r0 == 0) goto L_0x0059
                goto L_0x0056
            L_0x003a:
                java.lang.String r0 = "C"
                boolean r0 = r5.equals(r0)
                if (r0 == 0) goto L_0x0059
                goto L_0x004b
            L_0x0043:
                java.lang.String r0 = "buy_credit"
                boolean r0 = r5.equals(r0)
                if (r0 == 0) goto L_0x0059
            L_0x004b:
                com.farsitel.bazaar.ui.payment.PaymentType r5 = com.farsitel.bazaar.ui.payment.PaymentType.CREDIT
                goto L_0x0076
            L_0x004e:
                java.lang.String r0 = "Purchasable"
                boolean r0 = r5.equals(r0)
                if (r0 == 0) goto L_0x0059
            L_0x0056:
                com.farsitel.bazaar.ui.payment.PaymentType r5 = com.farsitel.bazaar.ui.payment.PaymentType.PURCHASABLE
                goto L_0x0076
            L_0x0059:
                c.c.a.c.c.a r0 = c.c.a.c.c.a.f4699b
                java.lang.Throwable r1 = new java.lang.Throwable
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "Illegal payment type: "
                r2.append(r3)
                r2.append(r5)
                java.lang.String r5 = r2.toString()
                r1.<init>(r5)
                r0.a((java.lang.Throwable) r1)
                com.farsitel.bazaar.ui.payment.PaymentType r5 = com.farsitel.bazaar.ui.payment.PaymentType.PURCHASABLE
            L_0x0076:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.payment.PaymentType.a.a(java.lang.String):com.farsitel.bazaar.ui.payment.PaymentType");
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    static {
        Companion = new a(null);
    }

    /* access modifiers changed from: public */
    PaymentType(String str) {
        this.value = str;
    }

    public final String f() {
        return this.value;
    }
}
