package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.Screenshot;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.common.model.page.PageMiniAppDetailItem;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FehrestResponseDto.kt */
public final class PageAppRowItemDto {
    @c("name")
    public final String appName;
    @c("authorName")
    public final String authorName;
    @c("category")
    public final String category;
    @c("hasInAppPurchase")
    public final Boolean hasInAppPurchase;
    @c("image")
    public final String image;
    @c("incompatible")
    public final Boolean incompatible;
    @c("inlineVersion")
    public final Integer inlineVersion;
    @c("installCountVerbose")
    public final String installCountVerbose;
    @c("installCountVerboseDescription")
    public final String installCountVerboseDescription;
    @c("installCountVerboseLabel")
    public final String installCountVerboseLabel;
    @c("isEnabled")
    public final Boolean isEnabled;
    @c("minimumSdkVersion")
    public final Integer minSdkVersion;
    @c("priceBeforeDiscountString")
    public final String noDiscountPriceString;
    @c("packageName")
    public final String packageName;
    @c("price")
    public final Integer price;
    @c("priceString")
    public final String priceString;
    @c("rate")
    public final Float rate;
    @c("referrerList")
    public final String referrer;
    @c("screenshots")
    public final List<DetailInfoScreenshotDto> screenshots;
    @c("shortDescription")
    public final String shortDescription;
    @c("versionCode")
    public final Long versionCode;

    public PageAppRowItemDto(String str, String str2, String str3, Long l2, Integer num, Integer num2, Float f2, Boolean bool, String str4, Boolean bool2, Integer num3, String str5, String str6, String str7, Boolean bool3, String str8, String str9, String str10, String str11, List<DetailInfoScreenshotDto> list, String str12) {
        String str13 = str4;
        String str14 = str6;
        String str15 = str12;
        j.b(str, "packageName");
        j.b(str2, "appName");
        j.b(str3, "image");
        j.b(str13, "authorName");
        j.b(str14, "noDiscountPriceString");
        j.b(str15, "referrer");
        this.packageName = str;
        this.appName = str2;
        this.image = str3;
        this.versionCode = l2;
        this.minSdkVersion = num;
        this.inlineVersion = num2;
        this.rate = f2;
        this.isEnabled = bool;
        this.authorName = str13;
        this.hasInAppPurchase = bool2;
        this.price = num3;
        this.priceString = str5;
        this.noDiscountPriceString = str14;
        this.category = str7;
        this.incompatible = bool3;
        this.shortDescription = str8;
        this.installCountVerbose = str9;
        this.installCountVerboseLabel = str10;
        this.installCountVerboseDescription = str11;
        this.screenshots = list;
        this.referrer = str15;
    }

    private final Screenshot toScreenShot(DetailInfoScreenshotDto detailInfoScreenshotDto) {
        return Screenshot.Companion.createImageScreenshot(detailInfoScreenshotDto.getFullName(), detailInfoScreenshotDto.getThumbnail());
    }

    public final String getAppName() {
        return this.appName;
    }

    public final String getAuthorName() {
        return this.authorName;
    }

    public final String getCategory() {
        return this.category;
    }

    public final Boolean getHasInAppPurchase() {
        return this.hasInAppPurchase;
    }

    public final String getImage() {
        return this.image;
    }

    public final Boolean getIncompatible() {
        return this.incompatible;
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

    public final Integer getMinSdkVersion() {
        return this.minSdkVersion;
    }

    public final String getNoDiscountPriceString() {
        return this.noDiscountPriceString;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final Integer getPrice() {
        return this.price;
    }

    public final String getPriceString() {
        return this.priceString;
    }

    public final Float getRate() {
        return this.rate;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final List<DetailInfoScreenshotDto> getScreenshots() {
        return this.screenshots;
    }

    public final String getShortDescription() {
        return this.shortDescription;
    }

    public final Long getVersionCode() {
        return this.versionCode;
    }

    public final boolean hasDetail() {
        String str = this.category;
        if (str == null || str.length() == 0) {
            String str2 = this.shortDescription;
            if (str2 == null || str2.length() == 0) {
                String str3 = this.installCountVerbose;
                if (str3 == null || str3.length() == 0) {
                    String str4 = this.installCountVerboseLabel;
                    if (str4 == null || str4.length() == 0) {
                        String str5 = this.installCountVerboseDescription;
                        if (str5 == null || str5.length() == 0) {
                            List<DetailInfoScreenshotDto> list = this.screenshots;
                            if (list == null || list.isEmpty()) {
                                return false;
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    public final Boolean isEnabled() {
        return this.isEnabled;
    }

    public final PageAppItem toPageAppItem(Boolean bool) {
        String str;
        String str2;
        Boolean bool2;
        Boolean bool3;
        Boolean bool4;
        String str3;
        Integer num;
        Integer num2;
        ArrayList arrayList;
        String str4 = this.packageName;
        String str5 = this.appName;
        String str6 = this.authorName;
        Long l2 = this.versionCode;
        Float f2 = this.rate;
        Integer num3 = this.price;
        int intValue = num3 != null ? num3.intValue() : 0;
        String str7 = this.priceString;
        String str8 = this.noDiscountPriceString;
        Boolean bool5 = this.isEnabled;
        Boolean bool6 = bool5 != null ? bool5 : false;
        Boolean bool7 = this.hasInAppPurchase;
        Boolean bool8 = bool != null ? bool : false;
        String str9 = this.image;
        Integer num4 = this.inlineVersion;
        Integer num5 = this.minSdkVersion;
        Boolean bool9 = this.incompatible;
        boolean z = !(bool9 != null ? bool9.booleanValue() : false);
        String str10 = this.referrer;
        PageMiniAppDetailItem pageMiniAppDetailItem = null;
        if (hasDetail()) {
            num2 = num5;
            String str11 = this.category;
            str = str10;
            String str12 = this.shortDescription;
            num = num4;
            String str13 = this.installCountVerbose;
            str3 = str9;
            String str14 = this.installCountVerboseLabel;
            bool4 = bool8;
            String str15 = this.installCountVerboseDescription;
            bool3 = bool7;
            List<DetailInfoScreenshotDto> list = this.screenshots;
            if (list != null) {
                bool2 = bool6;
                str2 = str8;
                ArrayList arrayList2 = new ArrayList(m.a(list, 10));
                for (DetailInfoScreenshotDto screenShot : list) {
                    arrayList2.add(toScreenShot(screenShot));
                }
                arrayList = arrayList2;
            } else {
                str2 = str8;
                bool2 = bool6;
                arrayList = null;
            }
            PageMiniAppDetailItem pageMiniAppDetailItem2 = new PageMiniAppDetailItem(str11, str12, str13, str14, str15, arrayList);
            pageMiniAppDetailItem = pageMiniAppDetailItem2;
        } else {
            num2 = num5;
            str = str10;
            num = num4;
            str2 = str8;
            bool2 = bool6;
            bool3 = bool7;
            bool4 = bool8;
            str3 = str9;
        }
        PageAppItem pageAppItem = new PageAppItem(str4, str5, str6, l2, f2, intValue, str7, str2, bool2, bool3, bool4, str3, num, num2, z, str, pageMiniAppDetailItem, null, null, null, null, 1966080, null);
        return pageAppItem;
    }
}
