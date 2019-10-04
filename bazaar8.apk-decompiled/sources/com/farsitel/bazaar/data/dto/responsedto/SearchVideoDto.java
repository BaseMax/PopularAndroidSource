package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import c.e.d.p;
import h.f.b.j;

/* compiled from: AppListDto.kt */
public final class SearchVideoDto {
    @c("isAd")
    public final Boolean isAd;
    @c("jref")
    public final p jsonReferrer;
    @c("coverUrl")
    public final String videoCoverUrl;
    @c("videoId")
    public final String videoId;
    @c("name")
    public final String videoName;
    @c("price")
    public final int videoPrice;
    @c("priceBeforeDiscount")
    public final Integer videoPriceBeforeDiscount;
    @c("rate")
    public final Float videoRate;
    @c("referrer")
    public final String videoReferrer;
    @c("shortInfo")
    public final ShortInfoDto videoShortInfo;

    public SearchVideoDto(String str, String str2, String str3, Float f2, int i2, Integer num, String str4, p pVar, ShortInfoDto shortInfoDto, Boolean bool) {
        j.b(str, "videoName");
        j.b(str2, "videoId");
        j.b(str3, "videoCoverUrl");
        this.videoName = str;
        this.videoId = str2;
        this.videoCoverUrl = str3;
        this.videoRate = f2;
        this.videoPrice = i2;
        this.videoPriceBeforeDiscount = num;
        this.videoReferrer = str4;
        this.jsonReferrer = pVar;
        this.videoShortInfo = shortInfoDto;
        this.isAd = bool;
    }

    public static /* synthetic */ SearchVideoDto copy$default(SearchVideoDto searchVideoDto, String str, String str2, String str3, Float f2, int i2, Integer num, String str4, p pVar, ShortInfoDto shortInfoDto, Boolean bool, int i3, Object obj) {
        SearchVideoDto searchVideoDto2 = searchVideoDto;
        int i4 = i3;
        return searchVideoDto.copy((i4 & 1) != 0 ? searchVideoDto2.videoName : str, (i4 & 2) != 0 ? searchVideoDto2.videoId : str2, (i4 & 4) != 0 ? searchVideoDto2.videoCoverUrl : str3, (i4 & 8) != 0 ? searchVideoDto2.videoRate : f2, (i4 & 16) != 0 ? searchVideoDto2.videoPrice : i2, (i4 & 32) != 0 ? searchVideoDto2.videoPriceBeforeDiscount : num, (i4 & 64) != 0 ? searchVideoDto2.videoReferrer : str4, (i4 & 128) != 0 ? searchVideoDto2.jsonReferrer : pVar, (i4 & 256) != 0 ? searchVideoDto2.videoShortInfo : shortInfoDto, (i4 & 512) != 0 ? searchVideoDto2.isAd : bool);
    }

    public final String component1() {
        return this.videoName;
    }

    public final Boolean component10() {
        return this.isAd;
    }

    public final String component2() {
        return this.videoId;
    }

    public final String component3() {
        return this.videoCoverUrl;
    }

    public final Float component4() {
        return this.videoRate;
    }

    public final int component5() {
        return this.videoPrice;
    }

    public final Integer component6() {
        return this.videoPriceBeforeDiscount;
    }

    public final String component7() {
        return this.videoReferrer;
    }

    public final p component8() {
        return this.jsonReferrer;
    }

    public final ShortInfoDto component9() {
        return this.videoShortInfo;
    }

    public final SearchVideoDto copy(String str, String str2, String str3, Float f2, int i2, Integer num, String str4, p pVar, ShortInfoDto shortInfoDto, Boolean bool) {
        j.b(str, "videoName");
        j.b(str2, "videoId");
        j.b(str3, "videoCoverUrl");
        SearchVideoDto searchVideoDto = new SearchVideoDto(str, str2, str3, f2, i2, num, str4, pVar, shortInfoDto, bool);
        return searchVideoDto;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SearchVideoDto) {
                SearchVideoDto searchVideoDto = (SearchVideoDto) obj;
                if (j.a((Object) this.videoName, (Object) searchVideoDto.videoName) && j.a((Object) this.videoId, (Object) searchVideoDto.videoId) && j.a((Object) this.videoCoverUrl, (Object) searchVideoDto.videoCoverUrl) && j.a((Object) this.videoRate, (Object) searchVideoDto.videoRate)) {
                    if (!(this.videoPrice == searchVideoDto.videoPrice) || !j.a((Object) this.videoPriceBeforeDiscount, (Object) searchVideoDto.videoPriceBeforeDiscount) || !j.a((Object) this.videoReferrer, (Object) searchVideoDto.videoReferrer) || !j.a((Object) this.jsonReferrer, (Object) searchVideoDto.jsonReferrer) || !j.a((Object) this.videoShortInfo, (Object) searchVideoDto.videoShortInfo) || !j.a((Object) this.isAd, (Object) searchVideoDto.isAd)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final p getJsonReferrer() {
        return this.jsonReferrer;
    }

    public final String getVideoCoverUrl() {
        return this.videoCoverUrl;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public final String getVideoName() {
        return this.videoName;
    }

    public final int getVideoPrice() {
        return this.videoPrice;
    }

    public final Integer getVideoPriceBeforeDiscount() {
        return this.videoPriceBeforeDiscount;
    }

    public final Float getVideoRate() {
        return this.videoRate;
    }

    public final String getVideoReferrer() {
        return this.videoReferrer;
    }

    public final ShortInfoDto getVideoShortInfo() {
        return this.videoShortInfo;
    }

    public int hashCode() {
        String str = this.videoName;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.videoId;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.videoCoverUrl;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Float f2 = this.videoRate;
        int hashCode4 = (((hashCode3 + (f2 != null ? f2.hashCode() : 0)) * 31) + this.videoPrice) * 31;
        Integer num = this.videoPriceBeforeDiscount;
        int hashCode5 = (hashCode4 + (num != null ? num.hashCode() : 0)) * 31;
        String str4 = this.videoReferrer;
        int hashCode6 = (hashCode5 + (str4 != null ? str4.hashCode() : 0)) * 31;
        p pVar = this.jsonReferrer;
        int hashCode7 = (hashCode6 + (pVar != null ? pVar.hashCode() : 0)) * 31;
        ShortInfoDto shortInfoDto = this.videoShortInfo;
        int hashCode8 = (hashCode7 + (shortInfoDto != null ? shortInfoDto.hashCode() : 0)) * 31;
        Boolean bool = this.isAd;
        if (bool != null) {
            i2 = bool.hashCode();
        }
        return hashCode8 + i2;
    }

    public final Boolean isAd() {
        return this.isAd;
    }

    public String toString() {
        return "SearchVideoDto(videoName=" + this.videoName + ", videoId=" + this.videoId + ", videoCoverUrl=" + this.videoCoverUrl + ", videoRate=" + this.videoRate + ", videoPrice=" + this.videoPrice + ", videoPriceBeforeDiscount=" + this.videoPriceBeforeDiscount + ", videoReferrer=" + this.videoReferrer + ", jsonReferrer=" + this.jsonReferrer + ", videoShortInfo=" + this.videoShortInfo + ", isAd=" + this.isAd + ")";
    }
}
