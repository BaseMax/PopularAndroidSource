package com.farsitel.bazaar.common.model.page;

import h.f.b.f;
import h.f.b.j;
import java.util.List;

/* compiled from: PageType.kt */
public interface VitrinItem extends PageTypeItem {

    /* compiled from: PageType.kt */
    public static final class App extends AppVitrinSection implements VitrinItem {
        public final String action;
        public final String referrer;
        public final boolean showInstalledApp;
        public final String slug;
        public final int viewType;

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public /* synthetic */ App(String str, String str2, List list, String str3, boolean z, String str4, int i2, f fVar) {
            this(str, str2, list, str3, (i2 & 16) != 0 ? true : z, str4);
        }

        public final String getAction() {
            return this.action;
        }

        public String getReferrer() {
            return this.referrer;
        }

        public final boolean getShowInstalledApp() {
            return this.showInstalledApp;
        }

        public String getSlug() {
            return this.slug;
        }

        public int getViewType() {
            return this.viewType;
        }

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public App(String str, String str2, List<PageAppItem> list, String str3, boolean z, String str4) {
            super(list, str, str2, str3, str4, 0, 32, null);
            String str5 = str4;
            j.b(str, "_title");
            j.b(list, "appList");
            j.b(str5, "referrer");
            this.action = str2;
            this.slug = str3;
            this.showInstalledApp = z;
            this.referrer = str5;
            this.viewType = CommonItemType.VITRIN_APP.getValue();
        }
    }

    /* compiled from: PageType.kt */
    public static abstract class Hami implements VitrinItem {
        public final HamiItem hami;
        public final String title;

        /* compiled from: PageType.kt */
        public static final class App extends Hami {
            public final HamiItem hami;
            public final String referrer;
            public final String title;
            public final int viewType = CommonItemType.VITRIN_HAMI_APP.getValue();

            /* JADX INFO: super call moved to the top of the method (can break code semantics) */
            public App(String str, HamiItem hamiItem, String str2) {
                super(str, hamiItem, null);
                j.b(hamiItem, "hami");
                j.b(str2, "referrer");
                this.title = str;
                this.hami = hamiItem;
                this.referrer = str2;
            }

            public static /* synthetic */ App copy$default(App app, String str, HamiItem hamiItem, String str2, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = app.getTitle();
                }
                if ((i2 & 2) != 0) {
                    hamiItem = app.getHami();
                }
                if ((i2 & 4) != 0) {
                    str2 = app.getReferrer();
                }
                return app.copy(str, hamiItem, str2);
            }

            public final String component1() {
                return getTitle();
            }

            public final HamiItem component2() {
                return getHami();
            }

            public final String component3() {
                return getReferrer();
            }

            public final App copy(String str, HamiItem hamiItem, String str2) {
                j.b(hamiItem, "hami");
                j.b(str2, "referrer");
                return new App(str, hamiItem, str2);
            }

            /* JADX WARNING: Code restructure failed: missing block: B:8:0x0030, code lost:
                if (h.f.b.j.a((java.lang.Object) getReferrer(), (java.lang.Object) r3.getReferrer()) != false) goto L_0x0035;
             */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public boolean equals(java.lang.Object r3) {
                /*
                    r2 = this;
                    if (r2 == r3) goto L_0x0035
                    boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.page.VitrinItem.Hami.App
                    if (r0 == 0) goto L_0x0033
                    com.farsitel.bazaar.common.model.page.VitrinItem$Hami$App r3 = (com.farsitel.bazaar.common.model.page.VitrinItem.Hami.App) r3
                    java.lang.String r0 = r2.getTitle()
                    java.lang.String r1 = r3.getTitle()
                    boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                    if (r0 == 0) goto L_0x0033
                    com.farsitel.bazaar.common.model.page.HamiItem r0 = r2.getHami()
                    com.farsitel.bazaar.common.model.page.HamiItem r1 = r3.getHami()
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
                throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.page.VitrinItem.Hami.App.equals(java.lang.Object):boolean");
            }

            public HamiItem getHami() {
                return this.hami;
            }

            public String getReferrer() {
                return this.referrer;
            }

            public String getTitle() {
                return this.title;
            }

            public int getViewType() {
                return this.viewType;
            }

            public int hashCode() {
                String title2 = getTitle();
                int i2 = 0;
                int hashCode = (title2 != null ? title2.hashCode() : 0) * 31;
                HamiItem hami2 = getHami();
                int hashCode2 = (hashCode + (hami2 != null ? hami2.hashCode() : 0)) * 31;
                String referrer2 = getReferrer();
                if (referrer2 != null) {
                    i2 = referrer2.hashCode();
                }
                return hashCode2 + i2;
            }

            public String toString() {
                return "App(title=" + getTitle() + ", hami=" + getHami() + ", referrer=" + getReferrer() + ")";
            }
        }

        public Hami(String str, HamiItem hamiItem) {
            this.title = str;
            this.hami = hamiItem;
        }

        public HamiItem getHami() {
            return this.hami;
        }

        public String getTitle() {
            return this.title;
        }

        public /* synthetic */ Hami(String str, HamiItem hamiItem, f fVar) {
            this(str, hamiItem);
        }
    }

    /* compiled from: PageType.kt */
    public static final class Movie extends MovieVitrinSection implements VitrinItem {
        public final String action;
        public final String referrer;
        public final String slug;
        public final int viewType = CommonItemType.VITRIN_VIDEO.getValue();

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Movie(String str, String str2, String str3, List<? extends MovieItem> list, String str4) {
            super(list, str, str2, str3, str4, 0, 32, null);
            j.b(str, "_title");
            j.b(list, "videoList");
            j.b(str4, "referrer");
            this.action = str2;
            this.slug = str3;
            this.referrer = str4;
        }

        public final String getAction() {
            return this.action;
        }

        public String getReferrer() {
            return this.referrer;
        }

        public String getSlug() {
            return this.slug;
        }

        public int getViewType() {
            return this.viewType;
        }
    }

    /* compiled from: PageType.kt */
    public static final class Promo extends PromoVitrinSection implements VitrinItem {
        public final String _title;
        public final String description;
        public final List<PromoItem> promos;
        public final String referrer;
        public final String slug;
        public final int viewType = CommonItemType.VITRIN_PROMO.getValue();

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Promo(String str, String str2, List<PromoItem> list, String str3, String str4) {
            super(list, str, str2, str3, str4, 0, 32, null);
            j.b(str, "_title");
            j.b(list, "promos");
            j.b(str4, "referrer");
            this._title = str;
            this.description = str2;
            this.promos = list;
            this.slug = str3;
            this.referrer = str4;
        }

        private final String component1() {
            return this._title;
        }

        public static /* synthetic */ Promo copy$default(Promo promo, String str, String str2, List<PromoItem> list, String str3, String str4, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = promo._title;
            }
            if ((i2 & 2) != 0) {
                str2 = promo.description;
            }
            String str5 = str2;
            if ((i2 & 4) != 0) {
                list = promo.promos;
            }
            List<PromoItem> list2 = list;
            if ((i2 & 8) != 0) {
                str3 = promo.getSlug();
            }
            String str6 = str3;
            if ((i2 & 16) != 0) {
                str4 = promo.getReferrer();
            }
            return promo.copy(str, str5, list2, str6, str4);
        }

        public final String component2() {
            return this.description;
        }

        public final List<PromoItem> component3() {
            return this.promos;
        }

        public final String component4() {
            return getSlug();
        }

        public final String component5() {
            return getReferrer();
        }

        public final Promo copy(String str, String str2, List<PromoItem> list, String str3, String str4) {
            j.b(str, "_title");
            j.b(list, "promos");
            j.b(str4, "referrer");
            Promo promo = new Promo(str, str2, list, str3, str4);
            return promo;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0040, code lost:
            if (h.f.b.j.a((java.lang.Object) getReferrer(), (java.lang.Object) r3.getReferrer()) != false) goto L_0x0045;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0045
                boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.page.VitrinItem.Promo
                if (r0 == 0) goto L_0x0043
                com.farsitel.bazaar.common.model.page.VitrinItem$Promo r3 = (com.farsitel.bazaar.common.model.page.VitrinItem.Promo) r3
                java.lang.String r0 = r2._title
                java.lang.String r1 = r3._title
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0043
                java.lang.String r0 = r2.description
                java.lang.String r1 = r3.description
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0043
                java.util.List<com.farsitel.bazaar.common.model.page.PromoItem> r0 = r2.promos
                java.util.List<com.farsitel.bazaar.common.model.page.PromoItem> r1 = r3.promos
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0043
                java.lang.String r0 = r2.getSlug()
                java.lang.String r1 = r3.getSlug()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0043
                java.lang.String r0 = r2.getReferrer()
                java.lang.String r3 = r3.getReferrer()
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0043
                goto L_0x0045
            L_0x0043:
                r3 = 0
                return r3
            L_0x0045:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.page.VitrinItem.Promo.equals(java.lang.Object):boolean");
        }

        public final String getDescription() {
            return this.description;
        }

        public final List<PromoItem> getPromos() {
            return this.promos;
        }

        public String getReferrer() {
            return this.referrer;
        }

        public String getSlug() {
            return this.slug;
        }

        public int getViewType() {
            return this.viewType;
        }

        public int hashCode() {
            String str = this._title;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.description;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            List<PromoItem> list = this.promos;
            int hashCode3 = (hashCode2 + (list != null ? list.hashCode() : 0)) * 31;
            String slug2 = getSlug();
            int hashCode4 = (hashCode3 + (slug2 != null ? slug2.hashCode() : 0)) * 31;
            String referrer2 = getReferrer();
            if (referrer2 != null) {
                i2 = referrer2.hashCode();
            }
            return hashCode4 + i2;
        }

        public String toString() {
            return "Promo(_title=" + this._title + ", description=" + this.description + ", promos=" + this.promos + ", slug=" + getSlug() + ", referrer=" + getReferrer() + ")";
        }
    }

    String getReferrer();
}
