package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import com.crashlytics.android.core.CodedOutputStream;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import com.farsitel.bazaar.common.model.page.VitrinItem;
import h.a.k;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FehrestResponseDto.kt */
public final class PageRowDto {
    @c("app")
    public final PageAppRowItemDto app;
    @c("appList")
    public final AppListDto appList;
    @c("description")
    public final String description;
    @c("genre")
    public final PageGenreRowDto genre;
    @c("genreList")
    public final GenreListDto genreList;
    @c("hamiPromo")
    public final PageHamiPromoRowItem hami;
    @c("isAd")
    public final Boolean isAd;
    @c("more")
    public final String moreAction;
    @c("video")
    public final PageCommonVideoDto movie;
    @c("promo")
    public final PagePromoRowDto promo;
    @c("promoList")
    public final PromoListDto promoList;
    @c("referrerList")
    public final String referrer;
    @c("title")
    public final String title;
    @c("videoList")
    public final VideoListDto videoList;

    public PageRowDto(String str, String str2, Boolean bool, String str3, PageAppRowItemDto pageAppRowItemDto, PageCommonVideoDto pageCommonVideoDto, PageHamiPromoRowItem pageHamiPromoRowItem, PageGenreRowDto pageGenreRowDto, AppListDto appListDto, PagePromoRowDto pagePromoRowDto, VideoListDto videoListDto, PromoListDto promoListDto, GenreListDto genreListDto, String str4) {
        j.b(str4, "referrer");
        this.title = str;
        this.moreAction = str2;
        this.isAd = bool;
        this.description = str3;
        this.app = pageAppRowItemDto;
        this.movie = pageCommonVideoDto;
        this.hami = pageHamiPromoRowItem;
        this.genre = pageGenreRowDto;
        this.appList = appListDto;
        this.promo = pagePromoRowDto;
        this.videoList = videoListDto;
        this.promoList = promoListDto;
        this.genreList = genreListDto;
        this.referrer = str4;
    }

    public static /* synthetic */ PageRowDto copy$default(PageRowDto pageRowDto, String str, String str2, Boolean bool, String str3, PageAppRowItemDto pageAppRowItemDto, PageCommonVideoDto pageCommonVideoDto, PageHamiPromoRowItem pageHamiPromoRowItem, PageGenreRowDto pageGenreRowDto, AppListDto appListDto, PagePromoRowDto pagePromoRowDto, VideoListDto videoListDto, PromoListDto promoListDto, GenreListDto genreListDto, String str4, int i2, Object obj) {
        PageRowDto pageRowDto2 = pageRowDto;
        int i3 = i2;
        return pageRowDto.copy((i3 & 1) != 0 ? pageRowDto2.title : str, (i3 & 2) != 0 ? pageRowDto2.moreAction : str2, (i3 & 4) != 0 ? pageRowDto2.isAd : bool, (i3 & 8) != 0 ? pageRowDto2.description : str3, (i3 & 16) != 0 ? pageRowDto2.app : pageAppRowItemDto, (i3 & 32) != 0 ? pageRowDto2.movie : pageCommonVideoDto, (i3 & 64) != 0 ? pageRowDto2.hami : pageHamiPromoRowItem, (i3 & 128) != 0 ? pageRowDto2.genre : pageGenreRowDto, (i3 & 256) != 0 ? pageRowDto2.appList : appListDto, (i3 & 512) != 0 ? pageRowDto2.promo : pagePromoRowDto, (i3 & 1024) != 0 ? pageRowDto2.videoList : videoListDto, (i3 & 2048) != 0 ? pageRowDto2.promoList : promoListDto, (i3 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? pageRowDto2.genreList : genreListDto, (i3 & 8192) != 0 ? pageRowDto2.referrer : str4);
    }

    private final VitrinItem.App toAppList() {
        AppListDto appListDto = this.appList;
        if (appListDto != null) {
            List<PageAppRowItemDto> apps = appListDto.getApps();
            ArrayList arrayList = new ArrayList(m.a(apps, 10));
            for (PageAppRowItemDto pageAppItem : apps) {
                arrayList.add(pageAppItem.toPageAppItem(this.isAd));
            }
            String str = this.title;
            if (str == null) {
                str = "";
            }
            String str2 = this.moreAction;
            VitrinItem.App app2 = new VitrinItem.App(str, str2, arrayList, str2, true, this.referrer);
            return app2;
        }
        j.a();
        throw null;
    }

    private final List<PageTypeItem> toGenreList() {
        GenreListDto genreListDto = this.genreList;
        if (genreListDto != null) {
            List<PageGenreRowDto> genres = genreListDto.getGenres();
            ArrayList arrayList = new ArrayList(m.a(genres, 10));
            for (PageGenreRowDto genreItem : genres) {
                arrayList.add(genreItem.toGenreItem());
            }
            ArrayList arrayList2 = new ArrayList();
            String str = this.title;
            if (str != null) {
                arrayList2.add(new ListItem.CategoryHeaderItem(str, this.moreAction, this.referrer));
            }
            arrayList2.addAll(arrayList);
            return arrayList2;
        }
        j.a();
        throw null;
    }

    private final VitrinItem.Promo toPromoList() {
        PromoListDto promoListDto = this.promoList;
        if (promoListDto != null) {
            List<PagePromoRowDto> promos = promoListDto.getPromos();
            ArrayList arrayList = new ArrayList(m.a(promos, 10));
            for (PagePromoRowDto promoItem : promos) {
                arrayList.add(promoItem.toPromoItem());
            }
            String str = this.title;
            if (str == null) {
                str = "";
            }
            VitrinItem.Promo promo2 = new VitrinItem.Promo(str, this.description, arrayList, this.moreAction, this.referrer);
            return promo2;
        }
        j.a();
        throw null;
    }

    private final VitrinItem.Movie toVideoList() {
        Object obj;
        VideoListDto videoListDto = this.videoList;
        if (videoListDto != null) {
            List<PageCommonVideoDto> videos = videoListDto.getVideos();
            ArrayList arrayList = new ArrayList(m.a(videos, 10));
            for (PageCommonVideoDto pageCommonVideoDto : videos) {
                if (pageCommonVideoDto.getMovie() != null) {
                    obj = pageCommonVideoDto.toMovieItem();
                } else if (pageCommonVideoDto.getSerial() != null) {
                    obj = pageCommonVideoDto.toSerialItem();
                } else if (pageCommonVideoDto.getEpisode() != null) {
                    obj = pageCommonVideoDto.toEpisodeItem();
                } else {
                    throw new IllegalStateException("invalid type for movie");
                }
                arrayList.add(obj);
            }
            String str = this.title;
            if (str == null) {
                str = "";
            }
            String str2 = this.moreAction;
            VitrinItem.Movie movie2 = new VitrinItem.Movie(str, str2, str2, arrayList, this.referrer);
            return movie2;
        }
        j.a();
        throw null;
    }

    public final String component1() {
        return this.title;
    }

    public final PagePromoRowDto component10() {
        return this.promo;
    }

    public final VideoListDto component11() {
        return this.videoList;
    }

    public final PromoListDto component12() {
        return this.promoList;
    }

    public final GenreListDto component13() {
        return this.genreList;
    }

    public final String component14() {
        return this.referrer;
    }

    public final String component2() {
        return this.moreAction;
    }

    public final Boolean component3() {
        return this.isAd;
    }

    public final String component4() {
        return this.description;
    }

    public final PageAppRowItemDto component5() {
        return this.app;
    }

    public final PageCommonVideoDto component6() {
        return this.movie;
    }

    public final PageHamiPromoRowItem component7() {
        return this.hami;
    }

    public final PageGenreRowDto component8() {
        return this.genre;
    }

    public final AppListDto component9() {
        return this.appList;
    }

    public final PageRowDto copy(String str, String str2, Boolean bool, String str3, PageAppRowItemDto pageAppRowItemDto, PageCommonVideoDto pageCommonVideoDto, PageHamiPromoRowItem pageHamiPromoRowItem, PageGenreRowDto pageGenreRowDto, AppListDto appListDto, PagePromoRowDto pagePromoRowDto, VideoListDto videoListDto, PromoListDto promoListDto, GenreListDto genreListDto, String str4) {
        String str5 = str4;
        j.b(str5, "referrer");
        PageRowDto pageRowDto = new PageRowDto(str, str2, bool, str3, pageAppRowItemDto, pageCommonVideoDto, pageHamiPromoRowItem, pageGenreRowDto, appListDto, pagePromoRowDto, videoListDto, promoListDto, genreListDto, str5);
        return pageRowDto;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0092, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x0097;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0097
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.dto.responsedto.PageRowDto
            if (r0 == 0) goto L_0x0095
            com.farsitel.bazaar.data.dto.responsedto.PageRowDto r3 = (com.farsitel.bazaar.data.dto.responsedto.PageRowDto) r3
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            java.lang.String r0 = r2.moreAction
            java.lang.String r1 = r3.moreAction
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            java.lang.Boolean r0 = r2.isAd
            java.lang.Boolean r1 = r3.isAd
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            java.lang.String r0 = r2.description
            java.lang.String r1 = r3.description
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            com.farsitel.bazaar.data.dto.responsedto.PageAppRowItemDto r0 = r2.app
            com.farsitel.bazaar.data.dto.responsedto.PageAppRowItemDto r1 = r3.app
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            com.farsitel.bazaar.data.dto.responsedto.PageCommonVideoDto r0 = r2.movie
            com.farsitel.bazaar.data.dto.responsedto.PageCommonVideoDto r1 = r3.movie
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            com.farsitel.bazaar.data.dto.responsedto.PageHamiPromoRowItem r0 = r2.hami
            com.farsitel.bazaar.data.dto.responsedto.PageHamiPromoRowItem r1 = r3.hami
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            com.farsitel.bazaar.data.dto.responsedto.PageGenreRowDto r0 = r2.genre
            com.farsitel.bazaar.data.dto.responsedto.PageGenreRowDto r1 = r3.genre
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            com.farsitel.bazaar.data.dto.responsedto.AppListDto r0 = r2.appList
            com.farsitel.bazaar.data.dto.responsedto.AppListDto r1 = r3.appList
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            com.farsitel.bazaar.data.dto.responsedto.PagePromoRowDto r0 = r2.promo
            com.farsitel.bazaar.data.dto.responsedto.PagePromoRowDto r1 = r3.promo
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            com.farsitel.bazaar.data.dto.responsedto.VideoListDto r0 = r2.videoList
            com.farsitel.bazaar.data.dto.responsedto.VideoListDto r1 = r3.videoList
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            com.farsitel.bazaar.data.dto.responsedto.PromoListDto r0 = r2.promoList
            com.farsitel.bazaar.data.dto.responsedto.PromoListDto r1 = r3.promoList
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            com.farsitel.bazaar.data.dto.responsedto.GenreListDto r0 = r2.genreList
            com.farsitel.bazaar.data.dto.responsedto.GenreListDto r1 = r3.genreList
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0095
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0095
            goto L_0x0097
        L_0x0095:
            r3 = 0
            return r3
        L_0x0097:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.dto.responsedto.PageRowDto.equals(java.lang.Object):boolean");
    }

    public final PageAppRowItemDto getApp() {
        return this.app;
    }

    public final AppListDto getAppList() {
        return this.appList;
    }

    public final String getDescription() {
        return this.description;
    }

    public final PageGenreRowDto getGenre() {
        return this.genre;
    }

    public final GenreListDto getGenreList() {
        return this.genreList;
    }

    public final PageHamiPromoRowItem getHami() {
        return this.hami;
    }

    public final String getMoreAction() {
        return this.moreAction;
    }

    public final PageCommonVideoDto getMovie() {
        return this.movie;
    }

    public final PagePromoRowDto getPromo() {
        return this.promo;
    }

    public final PromoListDto getPromoList() {
        return this.promoList;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getTitle() {
        return this.title;
    }

    public final VideoListDto getVideoList() {
        return this.videoList;
    }

    public int hashCode() {
        String str = this.title;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.moreAction;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Boolean bool = this.isAd;
        int hashCode3 = (hashCode2 + (bool != null ? bool.hashCode() : 0)) * 31;
        String str3 = this.description;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        PageAppRowItemDto pageAppRowItemDto = this.app;
        int hashCode5 = (hashCode4 + (pageAppRowItemDto != null ? pageAppRowItemDto.hashCode() : 0)) * 31;
        PageCommonVideoDto pageCommonVideoDto = this.movie;
        int hashCode6 = (hashCode5 + (pageCommonVideoDto != null ? pageCommonVideoDto.hashCode() : 0)) * 31;
        PageHamiPromoRowItem pageHamiPromoRowItem = this.hami;
        int hashCode7 = (hashCode6 + (pageHamiPromoRowItem != null ? pageHamiPromoRowItem.hashCode() : 0)) * 31;
        PageGenreRowDto pageGenreRowDto = this.genre;
        int hashCode8 = (hashCode7 + (pageGenreRowDto != null ? pageGenreRowDto.hashCode() : 0)) * 31;
        AppListDto appListDto = this.appList;
        int hashCode9 = (hashCode8 + (appListDto != null ? appListDto.hashCode() : 0)) * 31;
        PagePromoRowDto pagePromoRowDto = this.promo;
        int hashCode10 = (hashCode9 + (pagePromoRowDto != null ? pagePromoRowDto.hashCode() : 0)) * 31;
        VideoListDto videoListDto = this.videoList;
        int hashCode11 = (hashCode10 + (videoListDto != null ? videoListDto.hashCode() : 0)) * 31;
        PromoListDto promoListDto = this.promoList;
        int hashCode12 = (hashCode11 + (promoListDto != null ? promoListDto.hashCode() : 0)) * 31;
        GenreListDto genreListDto = this.genreList;
        int hashCode13 = (hashCode12 + (genreListDto != null ? genreListDto.hashCode() : 0)) * 31;
        String str4 = this.referrer;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return hashCode13 + i2;
    }

    public final Boolean isAd() {
        return this.isAd;
    }

    public final boolean notEmptyAtLeastOneField() {
        return (this.app == null && this.movie == null && this.hami == null && this.genre == null && this.promo == null && this.appList == null && this.videoList == null && this.promoList == null && this.genreList == null) ? false : true;
    }

    public final List<PageTypeItem> toPageTypeItem() {
        PageAppRowItemDto pageAppRowItemDto = this.app;
        if (pageAppRowItemDto != null) {
            ListItem.App app2 = new ListItem.App(pageAppRowItemDto.toPageAppItem(this.isAd), this.app.hasDetail(), false, 4, null);
            return k.a(app2);
        }
        PageCommonVideoDto pageCommonVideoDto = this.movie;
        if (pageCommonVideoDto != null) {
            return k.a(pageCommonVideoDto.toVideoItem());
        }
        PageHamiPromoRowItem pageHamiPromoRowItem = this.hami;
        if (pageHamiPromoRowItem != null) {
            return k.a(pageHamiPromoRowItem.toHamiItem());
        }
        PageGenreRowDto pageGenreRowDto = this.genre;
        if (pageGenreRowDto != null) {
            return k.a(pageGenreRowDto.toGenreItem());
        }
        if (this.appList != null) {
            return k.a(toAppList());
        }
        if (this.videoList != null) {
            return k.a(toVideoList());
        }
        if (this.promoList != null) {
            return k.a(toPromoList());
        }
        if (this.genreList != null) {
            return toGenreList();
        }
        PagePromoRowDto pagePromoRowDto = this.promo;
        if (pagePromoRowDto != null) {
            return k.a(new ListItem.Promo(pagePromoRowDto.toPromoItem()));
        }
        throw new IllegalStateException("invalid pageState");
    }

    public String toString() {
        return "PageRowDto(title=" + this.title + ", moreAction=" + this.moreAction + ", isAd=" + this.isAd + ", description=" + this.description + ", app=" + this.app + ", movie=" + this.movie + ", hami=" + this.hami + ", genre=" + this.genre + ", appList=" + this.appList + ", promo=" + this.promo + ", videoList=" + this.videoList + ", promoList=" + this.promoList + ", genreList=" + this.genreList + ", referrer=" + this.referrer + ")";
    }
}
