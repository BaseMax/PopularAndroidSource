package com.farsitel.bazaar.common.model.page;

import com.farsitel.bazaar.common.model.PurchasableEntity;
import com.farsitel.bazaar.common.model.page.MovieItem;
import h.f.b.f;
import h.f.b.j;

/* compiled from: PageType.kt */
public abstract class ListItem implements PageTypeItem {

    /* compiled from: PageType.kt */
    public static final class App extends ListItem {
        public final PageAppItem app;
        public final boolean hasDetail;
        public final boolean showMoreMenu;
        public final int viewType;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public App(PageAppItem pageAppItem, boolean z, boolean z2) {
            super(null);
            j.b(pageAppItem, "app");
            this.app = pageAppItem;
            this.hasDetail = z;
            this.showMoreMenu = z2;
            this.viewType = (this.hasDetail ? PageItemType.LIST_APP_MINI : PageItemType.LIST_APP).ordinal();
        }

        public static /* synthetic */ App copy$default(App app2, PageAppItem pageAppItem, boolean z, boolean z2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                pageAppItem = app2.app;
            }
            if ((i2 & 2) != 0) {
                z = app2.hasDetail;
            }
            if ((i2 & 4) != 0) {
                z2 = app2.showMoreMenu;
            }
            return app2.copy(pageAppItem, z, z2);
        }

        public final PageAppItem component1() {
            return this.app;
        }

        public final boolean component2() {
            return this.hasDetail;
        }

        public final boolean component3() {
            return this.showMoreMenu;
        }

        public final App copy(PageAppItem pageAppItem, boolean z, boolean z2) {
            j.b(pageAppItem, "app");
            return new App(pageAppItem, z, z2);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof App) {
                    App app2 = (App) obj;
                    if (j.a((Object) this.app, (Object) app2.app)) {
                        if (this.hasDetail == app2.hasDetail) {
                            if (this.showMoreMenu == app2.showMoreMenu) {
                                return true;
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public final PageAppItem getApp() {
            return this.app;
        }

        public final boolean getHasDetail() {
            return this.hasDetail;
        }

        public final boolean getShowMoreMenu() {
            return this.showMoreMenu;
        }

        public int getViewType() {
            return this.viewType;
        }

        public int hashCode() {
            PageAppItem pageAppItem = this.app;
            int hashCode = (pageAppItem != null ? pageAppItem.hashCode() : 0) * 31;
            boolean z = this.hasDetail;
            if (z) {
                z = true;
            }
            int i2 = (hashCode + (z ? 1 : 0)) * 31;
            boolean z2 = this.showMoreMenu;
            if (z2) {
                z2 = true;
            }
            return i2 + (z2 ? 1 : 0);
        }

        public String toString() {
            return "App(app=" + this.app + ", hasDetail=" + this.hasDetail + ", showMoreMenu=" + this.showMoreMenu + ")";
        }

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public /* synthetic */ App(PageAppItem pageAppItem, boolean z, boolean z2, int i2, f fVar) {
            this(pageAppItem, z, (i2 & 4) != 0 ? false : z2);
        }
    }

    /* compiled from: PageType.kt */
    public static final class CategoryHeaderItem extends ListItem {
        public final String referrer;
        public final String slug;
        public final String title;
        public final int viewType = PageItemType.LIST_CATEGORY_HEADER.ordinal();

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public CategoryHeaderItem(String str, String str2, String str3) {
            super(null);
            j.b(str, "title");
            j.b(str3, "referrer");
            this.title = str;
            this.slug = str2;
            this.referrer = str3;
        }

        public static /* synthetic */ CategoryHeaderItem copy$default(CategoryHeaderItem categoryHeaderItem, String str, String str2, String str3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = categoryHeaderItem.title;
            }
            if ((i2 & 2) != 0) {
                str2 = categoryHeaderItem.slug;
            }
            if ((i2 & 4) != 0) {
                str3 = categoryHeaderItem.referrer;
            }
            return categoryHeaderItem.copy(str, str2, str3);
        }

        public final String component1() {
            return this.title;
        }

        public final String component2() {
            return this.slug;
        }

        public final String component3() {
            return this.referrer;
        }

        public final CategoryHeaderItem copy(String str, String str2, String str3) {
            j.b(str, "title");
            j.b(str3, "referrer");
            return new CategoryHeaderItem(str, str2, str3);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x0029;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0029
                boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.page.ListItem.CategoryHeaderItem
                if (r0 == 0) goto L_0x0027
                com.farsitel.bazaar.common.model.page.ListItem$CategoryHeaderItem r3 = (com.farsitel.bazaar.common.model.page.ListItem.CategoryHeaderItem) r3
                java.lang.String r0 = r2.title
                java.lang.String r1 = r3.title
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.lang.String r0 = r2.slug
                java.lang.String r1 = r3.slug
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0027
                java.lang.String r0 = r2.referrer
                java.lang.String r3 = r3.referrer
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0027
                goto L_0x0029
            L_0x0027:
                r3 = 0
                return r3
            L_0x0029:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.page.ListItem.CategoryHeaderItem.equals(java.lang.Object):boolean");
        }

        public final String getReferrer() {
            return this.referrer;
        }

        public final String getSlug() {
            return this.slug;
        }

        public final String getTitle() {
            return this.title;
        }

        public int getViewType() {
            return this.viewType;
        }

        public int hashCode() {
            String str = this.title;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.slug;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.referrer;
            if (str3 != null) {
                i2 = str3.hashCode();
            }
            return hashCode2 + i2;
        }

        public String toString() {
            return "CategoryHeaderItem(title=" + this.title + ", slug=" + this.slug + ", referrer=" + this.referrer + ")";
        }
    }

    /* compiled from: PageType.kt */
    public static final class CategoryItem extends ListItem {
        public final String icon;
        public final String info;
        public final String referrer;
        public final String slug;
        public final String title;
        public final int viewType = PageItemType.LIST_CATEGORY_ITEM.ordinal();

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public CategoryItem(String str, String str2, String str3, String str4, String str5) {
            super(null);
            j.b(str, "icon");
            j.b(str2, "title");
            j.b(str4, "referrer");
            this.icon = str;
            this.title = str2;
            this.info = str3;
            this.referrer = str4;
            this.slug = str5;
        }

        public static /* synthetic */ CategoryItem copy$default(CategoryItem categoryItem, String str, String str2, String str3, String str4, String str5, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = categoryItem.icon;
            }
            if ((i2 & 2) != 0) {
                str2 = categoryItem.title;
            }
            String str6 = str2;
            if ((i2 & 4) != 0) {
                str3 = categoryItem.info;
            }
            String str7 = str3;
            if ((i2 & 8) != 0) {
                str4 = categoryItem.referrer;
            }
            String str8 = str4;
            if ((i2 & 16) != 0) {
                str5 = categoryItem.slug;
            }
            return categoryItem.copy(str, str6, str7, str8, str5);
        }

        public final String component1() {
            return this.icon;
        }

        public final String component2() {
            return this.title;
        }

        public final String component3() {
            return this.info;
        }

        public final String component4() {
            return this.referrer;
        }

        public final String component5() {
            return this.slug;
        }

        public final CategoryItem copy(String str, String str2, String str3, String str4, String str5) {
            j.b(str, "icon");
            j.b(str2, "title");
            j.b(str4, "referrer");
            CategoryItem categoryItem = new CategoryItem(str, str2, str3, str4, str5);
            return categoryItem;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.slug, (java.lang.Object) r3.slug) != false) goto L_0x003d;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x003d
                boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.page.ListItem.CategoryItem
                if (r0 == 0) goto L_0x003b
                com.farsitel.bazaar.common.model.page.ListItem$CategoryItem r3 = (com.farsitel.bazaar.common.model.page.ListItem.CategoryItem) r3
                java.lang.String r0 = r2.icon
                java.lang.String r1 = r3.icon
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.title
                java.lang.String r1 = r3.title
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.info
                java.lang.String r1 = r3.info
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.referrer
                java.lang.String r1 = r3.referrer
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.slug
                java.lang.String r3 = r3.slug
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x003b
                goto L_0x003d
            L_0x003b:
                r3 = 0
                return r3
            L_0x003d:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.page.ListItem.CategoryItem.equals(java.lang.Object):boolean");
        }

        public final String getIcon() {
            return this.icon;
        }

        public final String getInfo() {
            return this.info;
        }

        public final String getReferrer() {
            return this.referrer;
        }

        public final String getSlug() {
            return this.slug;
        }

        public final String getTitle() {
            return this.title;
        }

        public int getViewType() {
            return this.viewType;
        }

        public int hashCode() {
            String str = this.icon;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.title;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.info;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.referrer;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.slug;
            if (str5 != null) {
                i2 = str5.hashCode();
            }
            return hashCode4 + i2;
        }

        public String toString() {
            return "CategoryItem(icon=" + this.icon + ", title=" + this.title + ", info=" + this.info + ", referrer=" + this.referrer + ", slug=" + this.slug + ")";
        }
    }

    /* compiled from: PageType.kt */
    public static final class EditorChoiceHeader extends ListItem {
        public final String title;
        public final int viewType = CommonItemType.EDITOR_CHOICE_HEADER.getValue();

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public EditorChoiceHeader(String str) {
            super(null);
            j.b(str, "title");
            this.title = str;
        }

        public static /* synthetic */ EditorChoiceHeader copy$default(EditorChoiceHeader editorChoiceHeader, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = editorChoiceHeader.title;
            }
            return editorChoiceHeader.copy(str);
        }

        public final String component1() {
            return this.title;
        }

        public final EditorChoiceHeader copy(String str) {
            j.b(str, "title");
            return new EditorChoiceHeader(str);
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof EditorChoiceHeader) && j.a((Object) this.title, (Object) ((EditorChoiceHeader) obj).title));
        }

        public final String getTitle() {
            return this.title;
        }

        public int getViewType() {
            return this.viewType;
        }

        public int hashCode() {
            String str = this.title;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "EditorChoiceHeader(title=" + this.title + ")";
        }
    }

    /* compiled from: PageType.kt */
    public static final class Episode extends ListItem implements PurchasableEntity {
        public final MovieItem.EpisodeItem episode;
        public final boolean showActionButton;
        public final int viewType;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Episode(MovieItem.EpisodeItem episodeItem, boolean z) {
            super(null);
            j.b(episodeItem, "episode");
            this.episode = episodeItem;
            this.showActionButton = z;
            this.viewType = CommonItemType.LIST_EPISODE.getValue();
        }

        public static /* synthetic */ Episode copy$default(Episode episode2, MovieItem.EpisodeItem episodeItem, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                episodeItem = episode2.episode;
            }
            if ((i2 & 2) != 0) {
                z = episode2.showActionButton;
            }
            return episode2.copy(episodeItem, z);
        }

        public final MovieItem.EpisodeItem component1() {
            return this.episode;
        }

        public final boolean component2() {
            return this.showActionButton;
        }

        public final Episode copy(MovieItem.EpisodeItem episodeItem, boolean z) {
            j.b(episodeItem, "episode");
            return new Episode(episodeItem, z);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Episode) {
                    Episode episode2 = (Episode) obj;
                    if (j.a((Object) this.episode, (Object) episode2.episode)) {
                        if (this.showActionButton == episode2.showActionButton) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public String getEntityId() {
            return this.episode.getEntityId();
        }

        public final MovieItem.EpisodeItem getEpisode() {
            return this.episode;
        }

        public final boolean getShowActionButton() {
            return this.showActionButton;
        }

        public int getViewType() {
            return this.viewType;
        }

        public int hashCode() {
            MovieItem.EpisodeItem episodeItem = this.episode;
            int hashCode = (episodeItem != null ? episodeItem.hashCode() : 0) * 31;
            boolean z = this.showActionButton;
            if (z) {
                z = true;
            }
            return hashCode + (z ? 1 : 0);
        }

        public boolean isBought() {
            return this.episode.isBought();
        }

        public void setBought(boolean z) {
            this.episode.setBought(z);
        }

        public String toString() {
            return "Episode(episode=" + this.episode + ", showActionButton=" + this.showActionButton + ")";
        }

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Episode(MovieItem.EpisodeItem episodeItem, boolean z, int i2, f fVar) {
            this(episodeItem, (i2 & 2) != 0 ? true : z);
        }
    }

    /* compiled from: PageType.kt */
    public static final class Hami extends ListItem {
        public final HamiItem hami;
        public final int viewType;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Hami(HamiItem hamiItem) {
            super(null);
            int i2;
            j.b(hamiItem, "hami");
            this.hami = hamiItem;
            if (this.hami.getApp() != null && this.hami.getInlineXML() != null) {
                i2 = PageItemType.LIST_INLINE_APP.ordinal();
            } else if (this.hami.getApp() != null) {
                i2 = PageItemType.LIST_HAMI_APP.ordinal();
            } else {
                i2 = PageItemType.LIST_HAMI_INLINE.ordinal();
            }
            this.viewType = i2;
        }

        public static /* synthetic */ Hami copy$default(Hami hami2, HamiItem hamiItem, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                hamiItem = hami2.hami;
            }
            return hami2.copy(hamiItem);
        }

        public final HamiItem component1() {
            return this.hami;
        }

        public final Hami copy(HamiItem hamiItem) {
            j.b(hamiItem, "hami");
            return new Hami(hamiItem);
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof Hami) && j.a((Object) this.hami, (Object) ((Hami) obj).hami));
        }

        public final HamiItem getHami() {
            return this.hami;
        }

        public int getViewType() {
            return this.viewType;
        }

        public int hashCode() {
            HamiItem hamiItem = this.hami;
            if (hamiItem != null) {
                return hamiItem.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "Hami(hami=" + this.hami + ")";
        }
    }

    /* compiled from: PageType.kt */
    public static final class Promo extends ListItem {
        public final PromoItem promo;
        public final int viewType = PageItemType.LIST_PROMO.ordinal();

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Promo(PromoItem promoItem) {
            super(null);
            j.b(promoItem, "promo");
            this.promo = promoItem;
        }

        public static /* synthetic */ Promo copy$default(Promo promo2, PromoItem promoItem, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                promoItem = promo2.promo;
            }
            return promo2.copy(promoItem);
        }

        public final PromoItem component1() {
            return this.promo;
        }

        public final Promo copy(PromoItem promoItem) {
            j.b(promoItem, "promo");
            return new Promo(promoItem);
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof Promo) && j.a((Object) this.promo, (Object) ((Promo) obj).promo));
        }

        public final PromoItem getPromo() {
            return this.promo;
        }

        public int getViewType() {
            return this.viewType;
        }

        public int hashCode() {
            PromoItem promoItem = this.promo;
            if (promoItem != null) {
                return promoItem.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "Promo(promo=" + this.promo + ")";
        }
    }

    /* compiled from: PageType.kt */
    public static final class Serial extends ListItem {
        public final MovieItem.SerialItem serial;
        public final int viewType = PageItemType.LIST_SERIAL.ordinal();

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Serial(MovieItem.SerialItem serialItem) {
            super(null);
            j.b(serialItem, "serial");
            this.serial = serialItem;
        }

        public static /* synthetic */ Serial copy$default(Serial serial2, MovieItem.SerialItem serialItem, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                serialItem = serial2.serial;
            }
            return serial2.copy(serialItem);
        }

        public final MovieItem.SerialItem component1() {
            return this.serial;
        }

        public final Serial copy(MovieItem.SerialItem serialItem) {
            j.b(serialItem, "serial");
            return new Serial(serialItem);
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof Serial) && j.a((Object) this.serial, (Object) ((Serial) obj).serial));
        }

        public final MovieItem.SerialItem getSerial() {
            return this.serial;
        }

        public int getViewType() {
            return this.viewType;
        }

        public int hashCode() {
            MovieItem.SerialItem serialItem = this.serial;
            if (serialItem != null) {
                return serialItem.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "Serial(serial=" + this.serial + ")";
        }
    }

    /* compiled from: PageType.kt */
    public static final class Video extends ListItem {
        public final boolean showActionButton;
        public final MovieItem.VideoItem video;
        public final int viewType;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Video(MovieItem.VideoItem videoItem, boolean z) {
            super(null);
            j.b(videoItem, "video");
            this.video = videoItem;
            this.showActionButton = z;
            this.viewType = PageItemType.LIST_VIDEO.ordinal();
        }

        public static /* synthetic */ Video copy$default(Video video2, MovieItem.VideoItem videoItem, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                videoItem = video2.video;
            }
            if ((i2 & 2) != 0) {
                z = video2.showActionButton;
            }
            return video2.copy(videoItem, z);
        }

        public final MovieItem.VideoItem component1() {
            return this.video;
        }

        public final boolean component2() {
            return this.showActionButton;
        }

        public final Video copy(MovieItem.VideoItem videoItem, boolean z) {
            j.b(videoItem, "video");
            return new Video(videoItem, z);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Video) {
                    Video video2 = (Video) obj;
                    if (j.a((Object) this.video, (Object) video2.video)) {
                        if (this.showActionButton == video2.showActionButton) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public final boolean getShowActionButton() {
            return this.showActionButton;
        }

        public final MovieItem.VideoItem getVideo() {
            return this.video;
        }

        public int getViewType() {
            return this.viewType;
        }

        public int hashCode() {
            MovieItem.VideoItem videoItem = this.video;
            int hashCode = (videoItem != null ? videoItem.hashCode() : 0) * 31;
            boolean z = this.showActionButton;
            if (z) {
                z = true;
            }
            return hashCode + (z ? 1 : 0);
        }

        public String toString() {
            return "Video(video=" + this.video + ", showActionButton=" + this.showActionButton + ")";
        }

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Video(MovieItem.VideoItem videoItem, boolean z, int i2, f fVar) {
            this(videoItem, (i2 & 2) != 0 ? true : z);
        }
    }

    public ListItem() {
    }

    public /* synthetic */ ListItem(f fVar) {
        this();
    }
}
