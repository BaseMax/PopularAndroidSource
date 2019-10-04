package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import c.e.d.p;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.crashlytics.android.core.LogFileManager;
import h.f.b.j;
import java.util.List;

/* compiled from: AppListDto.kt */
public final class SearchAppDto {
    @c("category")
    public final String category;
    @c("hasIAP")
    public final Boolean hasIAP;
    @c("iconUrl")
    public final String iconUrl;
    @c("inlineVersion")
    public final Integer inlineVersion;
    @c("installCountVerbose")
    public final String installCountVerbose;
    @c("installCountVerboseDescription")
    public final String installCountVerboseDescription;
    @c("installCountVerboseLabel")
    public final String installCountVerboseLabel;
    @c("isAd")
    public final Boolean isAd;
    @c("isDetailed")
    public final Boolean isDetailed;
    @c("isEnabled")
    public final Boolean isEnabled;
    @c("jsonReferrer")
    public final p jsonReferrer;
    @c("minimumSdkVersion")
    public final Integer minSdk;
    @c("name")
    public final String name;
    @c("packageName")
    public final String packageName;
    @c("price")
    public final int price;
    @c("priceBeforeDiscount")
    public final Integer priceBeforeDiscount;
    @c("priceBeforeDiscount1")
    public final Integer priceBeforeDiscount1;
    @c("priceString")
    public final String priceString;
    @c("published")
    public final String published;
    @c("rate")
    public final Float rate;
    @c("referrer")
    public final Integer referrer;
    @c("screenshots")
    public final List<DetailInfoScreenshotDto> screenshots;
    @c("shortDescription")
    public final String shortDescription;

    public SearchAppDto(Boolean bool, String str, String str2, String str3, String str4, String str5, Float f2, Boolean bool2, int i2, Integer num, Integer num2, Integer num3, Integer num4, String str6, String str7, String str8, String str9, String str10, List<DetailInfoScreenshotDto> list, p pVar, Integer num5, Boolean bool3, Boolean bool4) {
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str2, "packageName");
        this.hasIAP = bool;
        this.name = str;
        this.packageName = str2;
        this.iconUrl = str3;
        this.priceString = str4;
        this.published = str5;
        this.rate = f2;
        this.isEnabled = bool2;
        this.price = i2;
        this.priceBeforeDiscount = num;
        this.priceBeforeDiscount1 = num2;
        this.inlineVersion = num3;
        this.minSdk = num4;
        this.category = str6;
        this.shortDescription = str7;
        this.installCountVerbose = str8;
        this.installCountVerboseLabel = str9;
        this.installCountVerboseDescription = str10;
        this.screenshots = list;
        this.jsonReferrer = pVar;
        this.referrer = num5;
        this.isAd = bool3;
        this.isDetailed = bool4;
    }

    public static /* synthetic */ SearchAppDto copy$default(SearchAppDto searchAppDto, Boolean bool, String str, String str2, String str3, String str4, String str5, Float f2, Boolean bool2, int i2, Integer num, Integer num2, Integer num3, Integer num4, String str6, String str7, String str8, String str9, String str10, List list, p pVar, Integer num5, Boolean bool3, Boolean bool4, int i3, Object obj) {
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        List list2;
        List list3;
        p pVar2;
        p pVar3;
        Integer num6;
        Integer num7;
        Boolean bool5;
        SearchAppDto searchAppDto2 = searchAppDto;
        int i4 = i3;
        Boolean bool6 = (i4 & 1) != 0 ? searchAppDto2.hasIAP : bool;
        String str18 = (i4 & 2) != 0 ? searchAppDto2.name : str;
        String str19 = (i4 & 4) != 0 ? searchAppDto2.packageName : str2;
        String str20 = (i4 & 8) != 0 ? searchAppDto2.iconUrl : str3;
        String str21 = (i4 & 16) != 0 ? searchAppDto2.priceString : str4;
        String str22 = (i4 & 32) != 0 ? searchAppDto2.published : str5;
        Float f3 = (i4 & 64) != 0 ? searchAppDto2.rate : f2;
        Boolean bool7 = (i4 & 128) != 0 ? searchAppDto2.isEnabled : bool2;
        int i5 = (i4 & 256) != 0 ? searchAppDto2.price : i2;
        Integer num8 = (i4 & 512) != 0 ? searchAppDto2.priceBeforeDiscount : num;
        Integer num9 = (i4 & 1024) != 0 ? searchAppDto2.priceBeforeDiscount1 : num2;
        Integer num10 = (i4 & 2048) != 0 ? searchAppDto2.inlineVersion : num3;
        Integer num11 = (i4 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? searchAppDto2.minSdk : num4;
        String str23 = (i4 & 8192) != 0 ? searchAppDto2.category : str6;
        String str24 = (i4 & 16384) != 0 ? searchAppDto2.shortDescription : str7;
        if ((i4 & 32768) != 0) {
            str11 = str24;
            str12 = searchAppDto2.installCountVerbose;
        } else {
            str11 = str24;
            str12 = str8;
        }
        if ((i4 & LogFileManager.MAX_LOG_SIZE) != 0) {
            str13 = str12;
            str14 = searchAppDto2.installCountVerboseLabel;
        } else {
            str13 = str12;
            str14 = str9;
        }
        if ((i4 & 131072) != 0) {
            str15 = str14;
            str16 = searchAppDto2.installCountVerboseDescription;
        } else {
            str15 = str14;
            str16 = str10;
        }
        if ((i4 & 262144) != 0) {
            str17 = str16;
            list2 = searchAppDto2.screenshots;
        } else {
            str17 = str16;
            list2 = list;
        }
        if ((i4 & 524288) != 0) {
            list3 = list2;
            pVar2 = searchAppDto2.jsonReferrer;
        } else {
            list3 = list2;
            pVar2 = pVar;
        }
        if ((i4 & 1048576) != 0) {
            pVar3 = pVar2;
            num6 = searchAppDto2.referrer;
        } else {
            pVar3 = pVar2;
            num6 = num5;
        }
        if ((i4 & 2097152) != 0) {
            num7 = num6;
            bool5 = searchAppDto2.isAd;
        } else {
            num7 = num6;
            bool5 = bool3;
        }
        return searchAppDto.copy(bool6, str18, str19, str20, str21, str22, f3, bool7, i5, num8, num9, num10, num11, str23, str11, str13, str15, str17, list3, pVar3, num7, bool5, (i4 & 4194304) != 0 ? searchAppDto2.isDetailed : bool4);
    }

    public final Boolean component1() {
        return this.hasIAP;
    }

    public final Integer component10() {
        return this.priceBeforeDiscount;
    }

    public final Integer component11() {
        return this.priceBeforeDiscount1;
    }

    public final Integer component12() {
        return this.inlineVersion;
    }

    public final Integer component13() {
        return this.minSdk;
    }

    public final String component14() {
        return this.category;
    }

    public final String component15() {
        return this.shortDescription;
    }

    public final String component16() {
        return this.installCountVerbose;
    }

    public final String component17() {
        return this.installCountVerboseLabel;
    }

    public final String component18() {
        return this.installCountVerboseDescription;
    }

    public final List<DetailInfoScreenshotDto> component19() {
        return this.screenshots;
    }

    public final String component2() {
        return this.name;
    }

    public final p component20() {
        return this.jsonReferrer;
    }

    public final Integer component21() {
        return this.referrer;
    }

    public final Boolean component22() {
        return this.isAd;
    }

    public final Boolean component23() {
        return this.isDetailed;
    }

    public final String component3() {
        return this.packageName;
    }

    public final String component4() {
        return this.iconUrl;
    }

    public final String component5() {
        return this.priceString;
    }

    public final String component6() {
        return this.published;
    }

    public final Float component7() {
        return this.rate;
    }

    public final Boolean component8() {
        return this.isEnabled;
    }

    public final int component9() {
        return this.price;
    }

    public final SearchAppDto copy(Boolean bool, String str, String str2, String str3, String str4, String str5, Float f2, Boolean bool2, int i2, Integer num, Integer num2, Integer num3, Integer num4, String str6, String str7, String str8, String str9, String str10, List<DetailInfoScreenshotDto> list, p pVar, Integer num5, Boolean bool3, Boolean bool4) {
        Boolean bool5 = bool;
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str2, "packageName");
        SearchAppDto searchAppDto = new SearchAppDto(bool, str, str2, str3, str4, str5, f2, bool2, i2, num, num2, num3, num4, str6, str7, str8, str9, str10, list, pVar, num5, bool3, bool4);
        return searchAppDto;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SearchAppDto) {
                SearchAppDto searchAppDto = (SearchAppDto) obj;
                if (j.a((Object) this.hasIAP, (Object) searchAppDto.hasIAP) && j.a((Object) this.name, (Object) searchAppDto.name) && j.a((Object) this.packageName, (Object) searchAppDto.packageName) && j.a((Object) this.iconUrl, (Object) searchAppDto.iconUrl) && j.a((Object) this.priceString, (Object) searchAppDto.priceString) && j.a((Object) this.published, (Object) searchAppDto.published) && j.a((Object) this.rate, (Object) searchAppDto.rate) && j.a((Object) this.isEnabled, (Object) searchAppDto.isEnabled)) {
                    if (!(this.price == searchAppDto.price) || !j.a((Object) this.priceBeforeDiscount, (Object) searchAppDto.priceBeforeDiscount) || !j.a((Object) this.priceBeforeDiscount1, (Object) searchAppDto.priceBeforeDiscount1) || !j.a((Object) this.inlineVersion, (Object) searchAppDto.inlineVersion) || !j.a((Object) this.minSdk, (Object) searchAppDto.minSdk) || !j.a((Object) this.category, (Object) searchAppDto.category) || !j.a((Object) this.shortDescription, (Object) searchAppDto.shortDescription) || !j.a((Object) this.installCountVerbose, (Object) searchAppDto.installCountVerbose) || !j.a((Object) this.installCountVerboseLabel, (Object) searchAppDto.installCountVerboseLabel) || !j.a((Object) this.installCountVerboseDescription, (Object) searchAppDto.installCountVerboseDescription) || !j.a((Object) this.screenshots, (Object) searchAppDto.screenshots) || !j.a((Object) this.jsonReferrer, (Object) searchAppDto.jsonReferrer) || !j.a((Object) this.referrer, (Object) searchAppDto.referrer) || !j.a((Object) this.isAd, (Object) searchAppDto.isAd) || !j.a((Object) this.isDetailed, (Object) searchAppDto.isDetailed)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getCategory() {
        return this.category;
    }

    public final Boolean getHasIAP() {
        return this.hasIAP;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final Integer getInlineVersion() {
        return this.inlineVersion;
    }

    public final String getInstallCountVerbose() {
        return this.installCountVerbose;
    }

    public final String getInstallCountVerboseDescription() {
        return this.installCountVerboseDescription;
    }

    public final String getInstallCountVerboseLabel() {
        return this.installCountVerboseLabel;
    }

    public final p getJsonReferrer() {
        return this.jsonReferrer;
    }

    public final Integer getMinSdk() {
        return this.minSdk;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final int getPrice() {
        return this.price;
    }

    public final Integer getPriceBeforeDiscount() {
        return this.priceBeforeDiscount;
    }

    public final Integer getPriceBeforeDiscount1() {
        return this.priceBeforeDiscount1;
    }

    public final String getPriceString() {
        return this.priceString;
    }

    public final String getPublished() {
        return this.published;
    }

    public final Float getRate() {
        return this.rate;
    }

    public final Integer getReferrer() {
        return this.referrer;
    }

    public final List<DetailInfoScreenshotDto> getScreenshots() {
        return this.screenshots;
    }

    public final String getShortDescription() {
        return this.shortDescription;
    }

    public int hashCode() {
        Boolean bool = this.hasIAP;
        int i2 = 0;
        int hashCode = (bool != null ? bool.hashCode() : 0) * 31;
        String str = this.name;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.packageName;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.iconUrl;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.priceString;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.published;
        int hashCode6 = (hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31;
        Float f2 = this.rate;
        int hashCode7 = (hashCode6 + (f2 != null ? f2.hashCode() : 0)) * 31;
        Boolean bool2 = this.isEnabled;
        int hashCode8 = (((hashCode7 + (bool2 != null ? bool2.hashCode() : 0)) * 31) + this.price) * 31;
        Integer num = this.priceBeforeDiscount;
        int hashCode9 = (hashCode8 + (num != null ? num.hashCode() : 0)) * 31;
        Integer num2 = this.priceBeforeDiscount1;
        int hashCode10 = (hashCode9 + (num2 != null ? num2.hashCode() : 0)) * 31;
        Integer num3 = this.inlineVersion;
        int hashCode11 = (hashCode10 + (num3 != null ? num3.hashCode() : 0)) * 31;
        Integer num4 = this.minSdk;
        int hashCode12 = (hashCode11 + (num4 != null ? num4.hashCode() : 0)) * 31;
        String str6 = this.category;
        int hashCode13 = (hashCode12 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.shortDescription;
        int hashCode14 = (hashCode13 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.installCountVerbose;
        int hashCode15 = (hashCode14 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.installCountVerboseLabel;
        int hashCode16 = (hashCode15 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.installCountVerboseDescription;
        int hashCode17 = (hashCode16 + (str10 != null ? str10.hashCode() : 0)) * 31;
        List<DetailInfoScreenshotDto> list = this.screenshots;
        int hashCode18 = (hashCode17 + (list != null ? list.hashCode() : 0)) * 31;
        p pVar = this.jsonReferrer;
        int hashCode19 = (hashCode18 + (pVar != null ? pVar.hashCode() : 0)) * 31;
        Integer num5 = this.referrer;
        int hashCode20 = (hashCode19 + (num5 != null ? num5.hashCode() : 0)) * 31;
        Boolean bool3 = this.isAd;
        int hashCode21 = (hashCode20 + (bool3 != null ? bool3.hashCode() : 0)) * 31;
        Boolean bool4 = this.isDetailed;
        if (bool4 != null) {
            i2 = bool4.hashCode();
        }
        return hashCode21 + i2;
    }

    public final Boolean isAd() {
        return this.isAd;
    }

    public final Boolean isDetailed() {
        return this.isDetailed;
    }

    public final Boolean isEnabled() {
        return this.isEnabled;
    }

    public String toString() {
        return "SearchAppDto(hasIAP=" + this.hasIAP + ", name=" + this.name + ", packageName=" + this.packageName + ", iconUrl=" + this.iconUrl + ", priceString=" + this.priceString + ", published=" + this.published + ", rate=" + this.rate + ", isEnabled=" + this.isEnabled + ", price=" + this.price + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", priceBeforeDiscount1=" + this.priceBeforeDiscount1 + ", inlineVersion=" + this.inlineVersion + ", minSdk=" + this.minSdk + ", category=" + this.category + ", shortDescription=" + this.shortDescription + ", installCountVerbose=" + this.installCountVerbose + ", installCountVerboseLabel=" + this.installCountVerboseLabel + ", installCountVerboseDescription=" + this.installCountVerboseDescription + ", screenshots=" + this.screenshots + ", jsonReferrer=" + this.jsonReferrer + ", referrer=" + this.referrer + ", isAd=" + this.isAd + ", isDetailed=" + this.isDetailed + ")";
    }
}
