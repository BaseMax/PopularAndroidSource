package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import c.e.d.p;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import h.f.b.j;

/* compiled from: AppListDto.kt */
public final class SearchSerialDto {
    @c("coverUrl")
    public final String coverUrl;
    @c("episodeId")
    public final String episodeId;
    @c("episodeIdx")
    public final Integer episodeIdx;
    @c("isAd")
    public final boolean isAd;
    @c("jsonReferrer")
    public final p jsonReferrer;
    @c("name")
    public final String name;
    @c("price")
    public final int price;
    @c("priceBeforeDiscount")
    public final int priceBeforeDiscount;
    @c("rate")
    public final Float rate;
    @c("referrer")
    public final Integer referrer;
    @c("seasonIdx")
    public final Integer seasonIdx;
    @c("serialId")
    public final String serialId;
    @c("shortInfo")
    public final ShortInfoDto shortInfo;

    public SearchSerialDto(String str, String str2, Integer num, Integer num2, String str3, int i2, Float f2, String str4, int i3, ShortInfoDto shortInfoDto, p pVar, Integer num3, boolean z) {
        j.b(str, "serialId");
        j.b(str3, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str4, "coverUrl");
        j.b(shortInfoDto, "shortInfo");
        this.serialId = str;
        this.episodeId = str2;
        this.seasonIdx = num;
        this.episodeIdx = num2;
        this.name = str3;
        this.price = i2;
        this.rate = f2;
        this.coverUrl = str4;
        this.priceBeforeDiscount = i3;
        this.shortInfo = shortInfoDto;
        this.jsonReferrer = pVar;
        this.referrer = num3;
        this.isAd = z;
    }

    public static /* synthetic */ SearchSerialDto copy$default(SearchSerialDto searchSerialDto, String str, String str2, Integer num, Integer num2, String str3, int i2, Float f2, String str4, int i3, ShortInfoDto shortInfoDto, p pVar, Integer num3, boolean z, int i4, Object obj) {
        SearchSerialDto searchSerialDto2 = searchSerialDto;
        int i5 = i4;
        return searchSerialDto.copy((i5 & 1) != 0 ? searchSerialDto2.serialId : str, (i5 & 2) != 0 ? searchSerialDto2.episodeId : str2, (i5 & 4) != 0 ? searchSerialDto2.seasonIdx : num, (i5 & 8) != 0 ? searchSerialDto2.episodeIdx : num2, (i5 & 16) != 0 ? searchSerialDto2.name : str3, (i5 & 32) != 0 ? searchSerialDto2.price : i2, (i5 & 64) != 0 ? searchSerialDto2.rate : f2, (i5 & 128) != 0 ? searchSerialDto2.coverUrl : str4, (i5 & 256) != 0 ? searchSerialDto2.priceBeforeDiscount : i3, (i5 & 512) != 0 ? searchSerialDto2.shortInfo : shortInfoDto, (i5 & 1024) != 0 ? searchSerialDto2.jsonReferrer : pVar, (i5 & 2048) != 0 ? searchSerialDto2.referrer : num3, (i5 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? searchSerialDto2.isAd : z);
    }

    public final String component1() {
        return this.serialId;
    }

    public final ShortInfoDto component10() {
        return this.shortInfo;
    }

    public final p component11() {
        return this.jsonReferrer;
    }

    public final Integer component12() {
        return this.referrer;
    }

    public final boolean component13() {
        return this.isAd;
    }

    public final String component2() {
        return this.episodeId;
    }

    public final Integer component3() {
        return this.seasonIdx;
    }

    public final Integer component4() {
        return this.episodeIdx;
    }

    public final String component5() {
        return this.name;
    }

    public final int component6() {
        return this.price;
    }

    public final Float component7() {
        return this.rate;
    }

    public final String component8() {
        return this.coverUrl;
    }

    public final int component9() {
        return this.priceBeforeDiscount;
    }

    public final SearchSerialDto copy(String str, String str2, Integer num, Integer num2, String str3, int i2, Float f2, String str4, int i3, ShortInfoDto shortInfoDto, p pVar, Integer num3, boolean z) {
        String str5 = str;
        j.b(str5, "serialId");
        String str6 = str3;
        j.b(str6, DefaultAppMeasurementEventListenerRegistrar.NAME);
        String str7 = str4;
        j.b(str7, "coverUrl");
        ShortInfoDto shortInfoDto2 = shortInfoDto;
        j.b(shortInfoDto2, "shortInfo");
        SearchSerialDto searchSerialDto = new SearchSerialDto(str5, str2, num, num2, str6, i2, f2, str7, i3, shortInfoDto2, pVar, num3, z);
        return searchSerialDto;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SearchSerialDto) {
                SearchSerialDto searchSerialDto = (SearchSerialDto) obj;
                if (j.a((Object) this.serialId, (Object) searchSerialDto.serialId) && j.a((Object) this.episodeId, (Object) searchSerialDto.episodeId) && j.a((Object) this.seasonIdx, (Object) searchSerialDto.seasonIdx) && j.a((Object) this.episodeIdx, (Object) searchSerialDto.episodeIdx) && j.a((Object) this.name, (Object) searchSerialDto.name)) {
                    if ((this.price == searchSerialDto.price) && j.a((Object) this.rate, (Object) searchSerialDto.rate) && j.a((Object) this.coverUrl, (Object) searchSerialDto.coverUrl)) {
                        if ((this.priceBeforeDiscount == searchSerialDto.priceBeforeDiscount) && j.a((Object) this.shortInfo, (Object) searchSerialDto.shortInfo) && j.a((Object) this.jsonReferrer, (Object) searchSerialDto.jsonReferrer) && j.a((Object) this.referrer, (Object) searchSerialDto.referrer)) {
                            if (this.isAd == searchSerialDto.isAd) {
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final String getEpisodeId() {
        return this.episodeId;
    }

    public final Integer getEpisodeIdx() {
        return this.episodeIdx;
    }

    public final p getJsonReferrer() {
        return this.jsonReferrer;
    }

    public final String getName() {
        return this.name;
    }

    public final int getPrice() {
        return this.price;
    }

    public final int getPriceBeforeDiscount() {
        return this.priceBeforeDiscount;
    }

    public final Float getRate() {
        return this.rate;
    }

    public final Integer getReferrer() {
        return this.referrer;
    }

    public final Integer getSeasonIdx() {
        return this.seasonIdx;
    }

    public final String getSerialId() {
        return this.serialId;
    }

    public final ShortInfoDto getShortInfo() {
        return this.shortInfo;
    }

    public int hashCode() {
        String str = this.serialId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.episodeId;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer num = this.seasonIdx;
        int hashCode3 = (hashCode2 + (num != null ? num.hashCode() : 0)) * 31;
        Integer num2 = this.episodeIdx;
        int hashCode4 = (hashCode3 + (num2 != null ? num2.hashCode() : 0)) * 31;
        String str3 = this.name;
        int hashCode5 = (((hashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.price) * 31;
        Float f2 = this.rate;
        int hashCode6 = (hashCode5 + (f2 != null ? f2.hashCode() : 0)) * 31;
        String str4 = this.coverUrl;
        int hashCode7 = (((hashCode6 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.priceBeforeDiscount) * 31;
        ShortInfoDto shortInfoDto = this.shortInfo;
        int hashCode8 = (hashCode7 + (shortInfoDto != null ? shortInfoDto.hashCode() : 0)) * 31;
        p pVar = this.jsonReferrer;
        int hashCode9 = (hashCode8 + (pVar != null ? pVar.hashCode() : 0)) * 31;
        Integer num3 = this.referrer;
        if (num3 != null) {
            i2 = num3.hashCode();
        }
        int i3 = (hashCode9 + i2) * 31;
        boolean z = this.isAd;
        if (z) {
            z = true;
        }
        return i3 + (z ? 1 : 0);
    }

    public final boolean isAd() {
        return this.isAd;
    }

    public String toString() {
        return "SearchSerialDto(serialId=" + this.serialId + ", episodeId=" + this.episodeId + ", seasonIdx=" + this.seasonIdx + ", episodeIdx=" + this.episodeIdx + ", name=" + this.name + ", price=" + this.price + ", rate=" + this.rate + ", coverUrl=" + this.coverUrl + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", shortInfo=" + this.shortInfo + ", jsonReferrer=" + this.jsonReferrer + ", referrer=" + this.referrer + ", isAd=" + this.isAd + ")";
    }
}
