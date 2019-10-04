package com.farsitel.bazaar.data.entity;

import c.c.a.c.d.e;
import h.f.b.f;
import h.f.b.j;

/* compiled from: Search.kt */
public abstract class SearchPrediction {
    public final String referrer;
    public final String subtitle;
    public final String title;

    /* compiled from: Search.kt */
    public static final class History extends SearchPrediction {
        public final String referrer;
        public final String subtitle;
        public final String title;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public History(String str, String str2, String str3) {
            super(str, str2, str3, null);
            j.b(str, "title");
            this.title = str;
            this.subtitle = str2;
            this.referrer = str3;
        }

        public static /* synthetic */ History copy$default(History history, String str, String str2, String str3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = history.getTitle();
            }
            if ((i2 & 2) != 0) {
                str2 = history.getSubtitle();
            }
            if ((i2 & 4) != 0) {
                str3 = history.getReferrer();
            }
            return history.copy(str, str2, str3);
        }

        public final String component1() {
            return getTitle();
        }

        public final String component2() {
            return getSubtitle();
        }

        public final String component3() {
            return getReferrer();
        }

        public final History copy(String str, String str2, String str3) {
            j.b(str, "title");
            return new History(str, str2, str3);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0030, code lost:
            if (h.f.b.j.a((java.lang.Object) getReferrer(), (java.lang.Object) r3.getReferrer()) != false) goto L_0x0035;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0035
                boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.SearchPrediction.History
                if (r0 == 0) goto L_0x0033
                com.farsitel.bazaar.data.entity.SearchPrediction$History r3 = (com.farsitel.bazaar.data.entity.SearchPrediction.History) r3
                java.lang.String r0 = r2.getTitle()
                java.lang.String r1 = r3.getTitle()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0033
                java.lang.String r0 = r2.getSubtitle()
                java.lang.String r1 = r3.getSubtitle()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0033
                java.lang.String r0 = r2.getReferrer()
                java.lang.String r3 = r3.getReferrer()
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0033
                goto L_0x0035
            L_0x0033:
                r3 = 0
                return r3
            L_0x0035:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.SearchPrediction.History.equals(java.lang.Object):boolean");
        }

        public String getReferrer() {
            return this.referrer;
        }

        public String getSubtitle() {
            return this.subtitle;
        }

        public String getTitle() {
            return this.title;
        }

        public int hashCode() {
            String title2 = getTitle();
            int i2 = 0;
            int hashCode = (title2 != null ? title2.hashCode() : 0) * 31;
            String subtitle2 = getSubtitle();
            int hashCode2 = (hashCode + (subtitle2 != null ? subtitle2.hashCode() : 0)) * 31;
            String referrer2 = getReferrer();
            if (referrer2 != null) {
                i2 = referrer2.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "History(title=" + getTitle() + ", subtitle=" + getSubtitle() + ", referrer=" + getReferrer() + ")";
        }
    }

    /* compiled from: Search.kt */
    public static final class Normal extends SearchPrediction {
        public final String referrer;
        public final String subtitle;
        public final String title;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Normal(String str, String str2, String str3) {
            super(str, str2, str3, null);
            j.b(str, "title");
            this.title = str;
            this.subtitle = str2;
            this.referrer = str3;
        }

        public static /* synthetic */ Normal copy$default(Normal normal, String str, String str2, String str3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = normal.getTitle();
            }
            if ((i2 & 2) != 0) {
                str2 = normal.getSubtitle();
            }
            if ((i2 & 4) != 0) {
                str3 = normal.getReferrer();
            }
            return normal.copy(str, str2, str3);
        }

        public final String component1() {
            return getTitle();
        }

        public final String component2() {
            return getSubtitle();
        }

        public final String component3() {
            return getReferrer();
        }

        public final Normal copy(String str, String str2, String str3) {
            j.b(str, "title");
            return new Normal(str, str2, str3);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0030, code lost:
            if (h.f.b.j.a((java.lang.Object) getReferrer(), (java.lang.Object) r3.getReferrer()) != false) goto L_0x0035;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0035
                boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.SearchPrediction.Normal
                if (r0 == 0) goto L_0x0033
                com.farsitel.bazaar.data.entity.SearchPrediction$Normal r3 = (com.farsitel.bazaar.data.entity.SearchPrediction.Normal) r3
                java.lang.String r0 = r2.getTitle()
                java.lang.String r1 = r3.getTitle()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0033
                java.lang.String r0 = r2.getSubtitle()
                java.lang.String r1 = r3.getSubtitle()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0033
                java.lang.String r0 = r2.getReferrer()
                java.lang.String r3 = r3.getReferrer()
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0033
                goto L_0x0035
            L_0x0033:
                r3 = 0
                return r3
            L_0x0035:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.SearchPrediction.Normal.equals(java.lang.Object):boolean");
        }

        public String getReferrer() {
            return this.referrer;
        }

        public String getSubtitle() {
            return this.subtitle;
        }

        public String getTitle() {
            return this.title;
        }

        public int hashCode() {
            String title2 = getTitle();
            int i2 = 0;
            int hashCode = (title2 != null ? title2.hashCode() : 0) * 31;
            String subtitle2 = getSubtitle();
            int hashCode2 = (hashCode + (subtitle2 != null ? subtitle2.hashCode() : 0)) * 31;
            String referrer2 = getReferrer();
            if (referrer2 != null) {
                i2 = referrer2.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "Normal(title=" + getTitle() + ", subtitle=" + getSubtitle() + ", referrer=" + getReferrer() + ")";
        }
    }

    public SearchPrediction(String str, String str2, String str3) {
        this.title = str;
        this.subtitle = str2;
        this.referrer = str3;
    }

    public String getReferrer() {
        return this.referrer;
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public String getTitle() {
        return this.title;
    }

    public /* synthetic */ SearchPrediction(String str, String str2, String str3, f fVar) {
        this(str, str2, str3);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SearchPrediction(String str, String str2, String str3, int i2, f fVar) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? e.a() : str3);
    }
}
