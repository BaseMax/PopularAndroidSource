package com.farsitel.bazaar.common.model.appdetail;

import c.c.a.c.b.i;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.crashlytics.android.core.LogFileManager;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.Screenshot;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import h.a.l;
import h.a.m;
import h.f.b.f;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AppDetail.kt */
public final class AppInfo {
    public static final Companion Companion = new Companion(null);
    public static final int MAX_SHOWN_ARTICLES = 3;
    public final AppDetailsInline appDetailInline;
    public final String appEmail;
    public final String appPhone;
    public final AppDetailsStats appStat;
    public final Integer applicationType;
    public final List<Article> articles;
    public final String authorName;
    public final String authorSlug;
    public final String categoryName;
    public final String categorySlug;
    public final AppDetailsComment comment;
    public final String contentRating;
    public final String description;
    public final EditorChoice editorChoice;
    public final Boolean hasInAppPurchase;
    public final String homePage;
    public final String iconUrl;
    public final boolean incompatible;
    public final String incompatibleMessage;
    public final String name;
    public final PackageDiff packageDiff;
    public final Package packageInfo;
    public final String packageName;
    public final AppDetailsPrice price;
    public final String ratingImage;
    public final String referrer;
    public final List<PageTypeItem> relatedPage;
    public final List<Screenshot> screenshots;
    public final Shamed shamed;
    public final String shortDescription;
    public final String tinyRatingImage;
    public final VideoShot videoShot;

    /* compiled from: AppDetail.kt */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    public AppInfo(String str, String str2, String str3, AppDetailsStats appDetailsStats, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, VideoShot videoShot2, AppDetailsPrice appDetailsPrice, Boolean bool, Package packageR, List<Article> list, List<Screenshot> list2, List<? extends PageTypeItem> list3, AppDetailsInline appDetailsInline, PackageDiff packageDiff2, String str15, AppDetailsComment appDetailsComment, Shamed shamed2, EditorChoice editorChoice2, boolean z, String str16, Integer num, String str17) {
        String str18 = str3;
        AppDetailsStats appDetailsStats2 = appDetailsStats;
        String str19 = str7;
        String str20 = str9;
        String str21 = str10;
        AppDetailsPrice appDetailsPrice2 = appDetailsPrice;
        AppDetailsComment appDetailsComment2 = appDetailsComment;
        EditorChoice editorChoice3 = editorChoice2;
        String str22 = str17;
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str2, "iconUrl");
        j.b(str18, "packageName");
        j.b(appDetailsStats2, "appStat");
        j.b(str19, "authorName");
        j.b(str20, "categoryName");
        j.b(str21, "categorySlug");
        j.b(appDetailsPrice2, "price");
        j.b(appDetailsComment2, "comment");
        j.b(editorChoice3, "editorChoice");
        j.b(str22, "referrer");
        this.name = str;
        this.iconUrl = str2;
        this.packageName = str18;
        this.appStat = appDetailsStats2;
        this.appEmail = str4;
        this.appPhone = str5;
        this.homePage = str6;
        this.authorName = str19;
        this.authorSlug = str8;
        this.categoryName = str20;
        this.categorySlug = str21;
        this.description = str11;
        this.ratingImage = str12;
        this.tinyRatingImage = str13;
        this.contentRating = str14;
        this.videoShot = videoShot2;
        this.price = appDetailsPrice2;
        this.hasInAppPurchase = bool;
        this.packageInfo = packageR;
        this.articles = list;
        this.screenshots = list2;
        this.relatedPage = list3;
        this.appDetailInline = appDetailsInline;
        this.packageDiff = packageDiff2;
        this.shortDescription = str15;
        this.comment = appDetailsComment2;
        this.shamed = shamed2;
        this.editorChoice = editorChoice3;
        this.incompatible = z;
        this.incompatibleMessage = str16;
        this.applicationType = num;
        this.referrer = str22;
    }

    public static /* synthetic */ AppInfo copy$default(AppInfo appInfo, String str, String str2, String str3, AppDetailsStats appDetailsStats, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, VideoShot videoShot2, AppDetailsPrice appDetailsPrice, Boolean bool, Package packageR, List list, List list2, List list3, AppDetailsInline appDetailsInline, PackageDiff packageDiff2, String str15, AppDetailsComment appDetailsComment, Shamed shamed2, EditorChoice editorChoice2, boolean z, String str16, Integer num, String str17, int i2, Object obj) {
        String str18;
        VideoShot videoShot3;
        VideoShot videoShot4;
        AppDetailsPrice appDetailsPrice2;
        AppDetailsPrice appDetailsPrice3;
        Boolean bool2;
        Boolean bool3;
        Package packageR2;
        Package packageR3;
        List list4;
        List list5;
        List list6;
        List list7;
        List list8;
        List list9;
        AppDetailsInline appDetailsInline2;
        AppDetailsInline appDetailsInline3;
        PackageDiff packageDiff3;
        PackageDiff packageDiff4;
        String str19;
        String str20;
        AppDetailsComment appDetailsComment2;
        AppDetailsComment appDetailsComment3;
        Shamed shamed3;
        Shamed shamed4;
        EditorChoice editorChoice3;
        EditorChoice editorChoice4;
        boolean z2;
        boolean z3;
        String str21;
        String str22;
        Integer num2;
        AppInfo appInfo2 = appInfo;
        int i3 = i2;
        String str23 = (i3 & 1) != 0 ? appInfo2.name : str;
        String str24 = (i3 & 2) != 0 ? appInfo2.iconUrl : str2;
        String str25 = (i3 & 4) != 0 ? appInfo2.packageName : str3;
        AppDetailsStats appDetailsStats2 = (i3 & 8) != 0 ? appInfo2.appStat : appDetailsStats;
        String str26 = (i3 & 16) != 0 ? appInfo2.appEmail : str4;
        String str27 = (i3 & 32) != 0 ? appInfo2.appPhone : str5;
        String str28 = (i3 & 64) != 0 ? appInfo2.homePage : str6;
        String str29 = (i3 & 128) != 0 ? appInfo2.authorName : str7;
        String str30 = (i3 & 256) != 0 ? appInfo2.authorSlug : str8;
        String str31 = (i3 & 512) != 0 ? appInfo2.categoryName : str9;
        String str32 = (i3 & 1024) != 0 ? appInfo2.categorySlug : str10;
        String str33 = (i3 & 2048) != 0 ? appInfo2.description : str11;
        String str34 = (i3 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? appInfo2.ratingImage : str12;
        String str35 = (i3 & 8192) != 0 ? appInfo2.tinyRatingImage : str13;
        String str36 = (i3 & 16384) != 0 ? appInfo2.contentRating : str14;
        if ((i3 & 32768) != 0) {
            str18 = str36;
            videoShot3 = appInfo2.videoShot;
        } else {
            str18 = str36;
            videoShot3 = videoShot2;
        }
        if ((i3 & LogFileManager.MAX_LOG_SIZE) != 0) {
            videoShot4 = videoShot3;
            appDetailsPrice2 = appInfo2.price;
        } else {
            videoShot4 = videoShot3;
            appDetailsPrice2 = appDetailsPrice;
        }
        if ((i3 & 131072) != 0) {
            appDetailsPrice3 = appDetailsPrice2;
            bool2 = appInfo2.hasInAppPurchase;
        } else {
            appDetailsPrice3 = appDetailsPrice2;
            bool2 = bool;
        }
        if ((i3 & 262144) != 0) {
            bool3 = bool2;
            packageR2 = appInfo2.packageInfo;
        } else {
            bool3 = bool2;
            packageR2 = packageR;
        }
        if ((i3 & 524288) != 0) {
            packageR3 = packageR2;
            list4 = appInfo2.articles;
        } else {
            packageR3 = packageR2;
            list4 = list;
        }
        if ((i3 & 1048576) != 0) {
            list5 = list4;
            list6 = appInfo2.screenshots;
        } else {
            list5 = list4;
            list6 = list2;
        }
        if ((i3 & 2097152) != 0) {
            list7 = list6;
            list8 = appInfo2.relatedPage;
        } else {
            list7 = list6;
            list8 = list3;
        }
        if ((i3 & 4194304) != 0) {
            list9 = list8;
            appDetailsInline2 = appInfo2.appDetailInline;
        } else {
            list9 = list8;
            appDetailsInline2 = appDetailsInline;
        }
        if ((i3 & 8388608) != 0) {
            appDetailsInline3 = appDetailsInline2;
            packageDiff3 = appInfo2.packageDiff;
        } else {
            appDetailsInline3 = appDetailsInline2;
            packageDiff3 = packageDiff2;
        }
        if ((i3 & 16777216) != 0) {
            packageDiff4 = packageDiff3;
            str19 = appInfo2.shortDescription;
        } else {
            packageDiff4 = packageDiff3;
            str19 = str15;
        }
        if ((i3 & 33554432) != 0) {
            str20 = str19;
            appDetailsComment2 = appInfo2.comment;
        } else {
            str20 = str19;
            appDetailsComment2 = appDetailsComment;
        }
        if ((i3 & 67108864) != 0) {
            appDetailsComment3 = appDetailsComment2;
            shamed3 = appInfo2.shamed;
        } else {
            appDetailsComment3 = appDetailsComment2;
            shamed3 = shamed2;
        }
        if ((i3 & 134217728) != 0) {
            shamed4 = shamed3;
            editorChoice3 = appInfo2.editorChoice;
        } else {
            shamed4 = shamed3;
            editorChoice3 = editorChoice2;
        }
        if ((i3 & 268435456) != 0) {
            editorChoice4 = editorChoice3;
            z2 = appInfo2.incompatible;
        } else {
            editorChoice4 = editorChoice3;
            z2 = z;
        }
        if ((i3 & 536870912) != 0) {
            z3 = z2;
            str21 = appInfo2.incompatibleMessage;
        } else {
            z3 = z2;
            str21 = str16;
        }
        if ((i3 & 1073741824) != 0) {
            str22 = str21;
            num2 = appInfo2.applicationType;
        } else {
            str22 = str21;
            num2 = num;
        }
        return appInfo.copy(str23, str24, str25, appDetailsStats2, str26, str27, str28, str29, str30, str31, str32, str33, str34, str35, str18, videoShot4, appDetailsPrice3, bool3, packageR3, list5, list7, list9, appDetailsInline3, packageDiff4, str20, appDetailsComment3, shamed4, editorChoice4, z3, str22, num2, (i3 & Integer.MIN_VALUE) != 0 ? appInfo2.referrer : str17);
    }

    private final int getDefaultSortReview() {
        List<SortTypeChoice> sortTypeChoices = this.comment.getSortTypeChoices();
        int i2 = 0;
        if (sortTypeChoices != null) {
            int i3 = 0;
            for (T next : sortTypeChoices) {
                int i4 = i3 + 1;
                if (i3 >= 0) {
                    if (j.a((Object) ((SortTypeChoice) next).getIdentifier(), (Object) this.comment.getDefaultSortTypeChoice())) {
                        i2 = i3;
                    }
                    i3 = i4;
                } else {
                    l.b();
                    throw null;
                }
            }
        }
        return i2;
    }

    private final long getPackageVersion() {
        Package packageR = this.packageInfo;
        if (packageR != null) {
            return packageR.getVersionCode();
        }
        AppDetailsInline appDetailsInline = this.appDetailInline;
        if ((appDetailsInline != null ? Integer.valueOf(appDetailsInline.getMinInlinePlatformVersion()) : null) != null) {
            return (long) this.appDetailInline.getMinInlinePlatformVersion();
        }
        return 0;
    }

    private final AppInfoItem toAppInfoItem(ReviewActionItem reviewActionItem) {
        Package packageR = this.packageInfo;
        int id = packageR != null ? packageR.getId() : -1;
        String str = this.packageName;
        Package packageR2 = this.packageInfo;
        long versionCode = packageR2 != null ? packageR2.getVersionCode() : -1;
        AppDetailsInline appDetailsInline = this.appDetailInline;
        Integer valueOf = appDetailsInline != null ? Integer.valueOf(appDetailsInline.getMinInlinePlatformVersion()) : null;
        String str2 = this.name;
        String str3 = this.iconUrl;
        String str4 = this.authorName;
        String str5 = this.authorSlug;
        String verboseInstallCountRange = this.appStat.getVerboseInstallCountRange();
        String verboseInstallCountRangeLabel = this.appStat.getVerboseInstallCountRangeLabel();
        String verboseInstallCountRangeDescription = this.appStat.getVerboseInstallCountRangeDescription();
        String verboseReviewCount = this.appStat.getVerboseReviewCount();
        float rate = this.appStat.getRate();
        String str6 = this.categoryName;
        String str7 = verboseReviewCount;
        String str8 = this.categorySlug;
        Package packageR3 = this.packageInfo;
        String verboseSize = packageR3 != null ? packageR3.getVerboseSize() : null;
        Package packageR4 = this.packageInfo;
        String verboseSizeLabel = packageR4 != null ? packageR4.getVerboseSizeLabel() : null;
        Boolean bool = this.hasInAppPurchase;
        AppInfoItem appInfoItem = new AppInfoItem(id, str, versionCode, valueOf, str2, str3, str4, str5, verboseInstallCountRange, verboseInstallCountRangeLabel, verboseInstallCountRangeDescription, str7, rate, str6, str8, verboseSize, verboseSizeLabel, bool != null ? bool.booleanValue() : false, this.tinyRatingImage, this.incompatible, this.incompatibleMessage, this.price.toAppDetailPriceItem(), this.comment.getDefaultSortTypeChoice(), reviewActionItem, this.referrer, this.applicationType, false, null, null, null, 1006632960, null);
        return appInfoItem;
    }

    private final AppMoreDescriptionItem toAppMoreDescriptionItem() {
        String str = this.packageName;
        String str2 = this.iconUrl;
        String str3 = this.name;
        String str4 = this.description;
        if (str4 != null) {
            String str5 = this.categoryName;
            String str6 = this.categorySlug;
            String installCountRange = this.appStat.getInstallCountRange();
            Package packageR = this.packageInfo;
            String verboseSize = packageR != null ? packageR.getVerboseSize() : null;
            Package packageR2 = this.packageInfo;
            String verboseSizeLabel = packageR2 != null ? packageR2.getVerboseSizeLabel() : null;
            Package packageR3 = this.packageInfo;
            Long packageSize = packageR3 != null ? packageR3.getPackageSize() : null;
            PackageDiff packageDiff2 = this.packageDiff;
            Long valueOf = packageDiff2 != null ? Long.valueOf(packageDiff2.getSize()) : null;
            Package packageR4 = this.packageInfo;
            Long valueOf2 = packageR4 != null ? Long.valueOf(packageR4.getVersionCode()) : null;
            Package packageR5 = this.packageInfo;
            String versionName = packageR5 != null ? packageR5.getVersionName() : null;
            Package packageR6 = this.packageInfo;
            String lastUpdated = packageR6 != null ? packageR6.getLastUpdated() : null;
            Package packageR7 = this.packageInfo;
            List<String> permissions = packageR7 != null ? packageR7.getPermissions() : null;
            Package packageR8 = this.packageInfo;
            List<String> permissionDescriptions = packageR8 != null ? packageR8.getPermissionDescriptions() : null;
            Package packageR9 = this.packageInfo;
            String changeLog = packageR9 != null ? packageR9.getChangeLog() : null;
            Package packageR10 = this.packageInfo;
            Boolean haveAdNetwork = packageR10 != null ? packageR10.getHaveAdNetwork() : null;
            String str7 = this.contentRating;
            String str8 = lastUpdated;
            String str9 = this.tinyRatingImage;
            String str10 = str7;
            Shamed shamed2 = this.shamed;
            String id = shamed2 != null ? shamed2.getId() : null;
            Shamed shamed3 = this.shamed;
            String url = shamed3 != null ? shamed3.getUrl() : null;
            Shamed shamed4 = this.shamed;
            AppMoreDescriptionItem appMoreDescriptionItem = new AppMoreDescriptionItem(str, str2, str3, str4, str5, str6, installCountRange, verboseSize, verboseSizeLabel, packageSize, valueOf, valueOf2, versionName, str8, permissions, permissionDescriptions, changeLog, haveAdNetwork, str10, str9, id, url, shamed4 != null ? shamed4.getIcon() : null, this.referrer);
            return appMoreDescriptionItem;
        }
        j.a();
        throw null;
    }

    private final RecyclerData toChangeLogItem(AppMoreDescriptionItem appMoreDescriptionItem) {
        Package packageR = this.packageInfo;
        if (packageR == null) {
            return null;
        }
        String changeLog = packageR.getChangeLog();
        if (changeLog == null) {
            return null;
        }
        if (i.a(changeLog).length() > 0) {
            return new ChangeLogItem(changeLog, appMoreDescriptionItem);
        }
        return null;
    }

    private final List<RecyclerData> toDescriptionItems(AppMoreDescriptionItem appMoreDescriptionItem) {
        if (this.description == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String str = this.shortDescription;
        if (str != null) {
            arrayList.add(new AppDescriptionItem(str, appMoreDescriptionItem));
        }
        arrayList.add(appMoreDescriptionItem);
        return arrayList;
    }

    private final ReviewActionItem toReviewActionItem(int i2) {
        List list;
        String str = this.packageName;
        String str2 = this.iconUrl;
        String str3 = this.name;
        long packageVersion = getPackageVersion();
        int rate1Count = this.appStat.getRate1Count();
        int rate2Count = this.appStat.getRate2Count();
        int rate3Count = this.appStat.getRate3Count();
        int rate4Count = this.appStat.getRate4Count();
        int rate5Count = this.appStat.getRate5Count();
        List<SortTypeChoice> sortTypeChoices = this.comment.getSortTypeChoices();
        if (sortTypeChoices != null) {
            list = new ArrayList(m.a(sortTypeChoices, 10));
            for (SortTypeChoice sortTypeChoiceItem : sortTypeChoices) {
                list.add(sortTypeChoiceItem.toSortTypeChoiceItem());
            }
        } else {
            list = l.a();
        }
        ReviewActionItem reviewActionItem = new ReviewActionItem(str, str2, str3, packageVersion, rate1Count, rate2Count, rate3Count, rate4Count, rate5Count, list, this.comment.getDefaultSortTypeChoice(), i2);
        return reviewActionItem;
    }

    private final AppReviewInfoItem toReviewItem() {
        AppReviewInfoItem appReviewInfoItem = new AppReviewInfoItem(this.appStat.getRate1Count(), this.appStat.getRate2Count(), this.appStat.getRate3Count(), this.appStat.getRate4Count(), this.appStat.getRate5Count(), this.appStat.getVerboseReviewCount(), this.appStat.getRate());
        return appReviewInfoItem;
    }

    private final RecyclerData toScreenshotItem() {
        ArrayList<Screenshot> arrayList = new ArrayList<>();
        VideoShot videoShot2 = this.videoShot;
        String token = videoShot2 != null ? videoShot2.getToken() : null;
        boolean z = false;
        if (!(token == null || token.length() == 0)) {
            VideoShot videoShot3 = this.videoShot;
            String poster = videoShot3 != null ? videoShot3.getPoster() : null;
            if (poster == null || poster.length() == 0) {
                z = true;
            }
            if (!z) {
                Screenshot.Companion companion = Screenshot.Companion;
                VideoShot videoShot4 = this.videoShot;
                if (videoShot4 != null) {
                    String token2 = videoShot4.getToken();
                    if (token2 != null) {
                        String poster2 = this.videoShot.getPoster();
                        if (poster2 != null) {
                            arrayList.add(companion.createVideoScreenshot(token2, poster2));
                        } else {
                            j.a();
                            throw null;
                        }
                    } else {
                        j.a();
                        throw null;
                    }
                } else {
                    j.a();
                    throw null;
                }
            }
        }
        List<Screenshot> list = this.screenshots;
        if (list != null) {
            ArrayList arrayList2 = new ArrayList(m.a(list, 10));
            for (Screenshot screenShotItem : list) {
                arrayList2.add(screenShotItem.toScreenShotItem());
            }
            arrayList.addAll(arrayList2);
        }
        if (!(!arrayList.isEmpty())) {
            return null;
        }
        ArrayList arrayList3 = new ArrayList(m.a(arrayList, 10));
        for (Screenshot screenshot : arrayList) {
            arrayList3.add(new AppScreenshotItem(screenshot.getMainUrl(), screenshot.getThumbnailUrl(), screenshot.isImage()));
        }
        return new ScreenshotSectionItem(arrayList3);
    }

    public final String component1() {
        return this.name;
    }

    public final String component10() {
        return this.categoryName;
    }

    public final String component11() {
        return this.categorySlug;
    }

    public final String component12() {
        return this.description;
    }

    public final String component13() {
        return this.ratingImage;
    }

    public final String component14() {
        return this.tinyRatingImage;
    }

    public final String component15() {
        return this.contentRating;
    }

    public final VideoShot component16() {
        return this.videoShot;
    }

    public final AppDetailsPrice component17() {
        return this.price;
    }

    public final Boolean component18() {
        return this.hasInAppPurchase;
    }

    public final Package component19() {
        return this.packageInfo;
    }

    public final String component2() {
        return this.iconUrl;
    }

    public final List<Article> component20() {
        return this.articles;
    }

    public final List<Screenshot> component21() {
        return this.screenshots;
    }

    public final List<PageTypeItem> component22() {
        return this.relatedPage;
    }

    public final AppDetailsInline component23() {
        return this.appDetailInline;
    }

    public final PackageDiff component24() {
        return this.packageDiff;
    }

    public final String component25() {
        return this.shortDescription;
    }

    public final AppDetailsComment component26() {
        return this.comment;
    }

    public final Shamed component27() {
        return this.shamed;
    }

    public final EditorChoice component28() {
        return this.editorChoice;
    }

    public final boolean component29() {
        return this.incompatible;
    }

    public final String component3() {
        return this.packageName;
    }

    public final String component30() {
        return this.incompatibleMessage;
    }

    public final Integer component31() {
        return this.applicationType;
    }

    public final String component32() {
        return this.referrer;
    }

    public final AppDetailsStats component4() {
        return this.appStat;
    }

    public final String component5() {
        return this.appEmail;
    }

    public final String component6() {
        return this.appPhone;
    }

    public final String component7() {
        return this.homePage;
    }

    public final String component8() {
        return this.authorName;
    }

    public final String component9() {
        return this.authorSlug;
    }

    public final AppInfo copy(String str, String str2, String str3, AppDetailsStats appDetailsStats, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, VideoShot videoShot2, AppDetailsPrice appDetailsPrice, Boolean bool, Package packageR, List<Article> list, List<Screenshot> list2, List<? extends PageTypeItem> list3, AppDetailsInline appDetailsInline, PackageDiff packageDiff2, String str15, AppDetailsComment appDetailsComment, Shamed shamed2, EditorChoice editorChoice2, boolean z, String str16, Integer num, String str17) {
        String str18 = str;
        j.b(str18, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str2, "iconUrl");
        j.b(str3, "packageName");
        j.b(appDetailsStats, "appStat");
        j.b(str7, "authorName");
        j.b(str9, "categoryName");
        j.b(str10, "categorySlug");
        j.b(appDetailsPrice, "price");
        j.b(appDetailsComment, "comment");
        j.b(editorChoice2, "editorChoice");
        j.b(str17, "referrer");
        AppInfo appInfo = new AppInfo(str18, str2, str3, appDetailsStats, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14, videoShot2, appDetailsPrice, bool, packageR, list, list2, list3, appDetailsInline, packageDiff2, str15, appDetailsComment, shamed2, editorChoice2, z, str16, num, str17);
        return appInfo;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AppInfo) {
                AppInfo appInfo = (AppInfo) obj;
                if (j.a((Object) this.name, (Object) appInfo.name) && j.a((Object) this.iconUrl, (Object) appInfo.iconUrl) && j.a((Object) this.packageName, (Object) appInfo.packageName) && j.a((Object) this.appStat, (Object) appInfo.appStat) && j.a((Object) this.appEmail, (Object) appInfo.appEmail) && j.a((Object) this.appPhone, (Object) appInfo.appPhone) && j.a((Object) this.homePage, (Object) appInfo.homePage) && j.a((Object) this.authorName, (Object) appInfo.authorName) && j.a((Object) this.authorSlug, (Object) appInfo.authorSlug) && j.a((Object) this.categoryName, (Object) appInfo.categoryName) && j.a((Object) this.categorySlug, (Object) appInfo.categorySlug) && j.a((Object) this.description, (Object) appInfo.description) && j.a((Object) this.ratingImage, (Object) appInfo.ratingImage) && j.a((Object) this.tinyRatingImage, (Object) appInfo.tinyRatingImage) && j.a((Object) this.contentRating, (Object) appInfo.contentRating) && j.a((Object) this.videoShot, (Object) appInfo.videoShot) && j.a((Object) this.price, (Object) appInfo.price) && j.a((Object) this.hasInAppPurchase, (Object) appInfo.hasInAppPurchase) && j.a((Object) this.packageInfo, (Object) appInfo.packageInfo) && j.a((Object) this.articles, (Object) appInfo.articles) && j.a((Object) this.screenshots, (Object) appInfo.screenshots) && j.a((Object) this.relatedPage, (Object) appInfo.relatedPage) && j.a((Object) this.appDetailInline, (Object) appInfo.appDetailInline) && j.a((Object) this.packageDiff, (Object) appInfo.packageDiff) && j.a((Object) this.shortDescription, (Object) appInfo.shortDescription) && j.a((Object) this.comment, (Object) appInfo.comment) && j.a((Object) this.shamed, (Object) appInfo.shamed) && j.a((Object) this.editorChoice, (Object) appInfo.editorChoice)) {
                    if (!(this.incompatible == appInfo.incompatible) || !j.a((Object) this.incompatibleMessage, (Object) appInfo.incompatibleMessage) || !j.a((Object) this.applicationType, (Object) appInfo.applicationType) || !j.a((Object) this.referrer, (Object) appInfo.referrer)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final AppDetailsInline getAppDetailInline() {
        return this.appDetailInline;
    }

    public final String getAppEmail() {
        return this.appEmail;
    }

    public final String getAppPhone() {
        return this.appPhone;
    }

    public final AppDetailsStats getAppStat() {
        return this.appStat;
    }

    public final Integer getApplicationType() {
        return this.applicationType;
    }

    public final List<Article> getArticles() {
        return this.articles;
    }

    public final String getAuthorName() {
        return this.authorName;
    }

    public final String getAuthorSlug() {
        return this.authorSlug;
    }

    public final String getCategoryName() {
        return this.categoryName;
    }

    public final String getCategorySlug() {
        return this.categorySlug;
    }

    public final AppDetailsComment getComment() {
        return this.comment;
    }

    public final String getContentRating() {
        return this.contentRating;
    }

    public final String getDescription() {
        return this.description;
    }

    public final EditorChoice getEditorChoice() {
        return this.editorChoice;
    }

    public final Boolean getHasInAppPurchase() {
        return this.hasInAppPurchase;
    }

    public final String getHomePage() {
        return this.homePage;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final boolean getIncompatible() {
        return this.incompatible;
    }

    public final String getIncompatibleMessage() {
        return this.incompatibleMessage;
    }

    public final String getName() {
        return this.name;
    }

    public final PackageDiff getPackageDiff() {
        return this.packageDiff;
    }

    public final Package getPackageInfo() {
        return this.packageInfo;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final AppDetailsPrice getPrice() {
        return this.price;
    }

    public final String getRatingImage() {
        return this.ratingImage;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final List<PageTypeItem> getRelatedPage() {
        return this.relatedPage;
    }

    public final List<Screenshot> getScreenshots() {
        return this.screenshots;
    }

    public final Shamed getShamed() {
        return this.shamed;
    }

    public final String getShortDescription() {
        return this.shortDescription;
    }

    public final String getTinyRatingImage() {
        return this.tinyRatingImage;
    }

    public final VideoShot getVideoShot() {
        return this.videoShot;
    }

    public int hashCode() {
        String str = this.name;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.iconUrl;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.packageName;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        AppDetailsStats appDetailsStats = this.appStat;
        int hashCode4 = (hashCode3 + (appDetailsStats != null ? appDetailsStats.hashCode() : 0)) * 31;
        String str4 = this.appEmail;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.appPhone;
        int hashCode6 = (hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.homePage;
        int hashCode7 = (hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.authorName;
        int hashCode8 = (hashCode7 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.authorSlug;
        int hashCode9 = (hashCode8 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.categoryName;
        int hashCode10 = (hashCode9 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.categorySlug;
        int hashCode11 = (hashCode10 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.description;
        int hashCode12 = (hashCode11 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.ratingImage;
        int hashCode13 = (hashCode12 + (str12 != null ? str12.hashCode() : 0)) * 31;
        String str13 = this.tinyRatingImage;
        int hashCode14 = (hashCode13 + (str13 != null ? str13.hashCode() : 0)) * 31;
        String str14 = this.contentRating;
        int hashCode15 = (hashCode14 + (str14 != null ? str14.hashCode() : 0)) * 31;
        VideoShot videoShot2 = this.videoShot;
        int hashCode16 = (hashCode15 + (videoShot2 != null ? videoShot2.hashCode() : 0)) * 31;
        AppDetailsPrice appDetailsPrice = this.price;
        int hashCode17 = (hashCode16 + (appDetailsPrice != null ? appDetailsPrice.hashCode() : 0)) * 31;
        Boolean bool = this.hasInAppPurchase;
        int hashCode18 = (hashCode17 + (bool != null ? bool.hashCode() : 0)) * 31;
        Package packageR = this.packageInfo;
        int hashCode19 = (hashCode18 + (packageR != null ? packageR.hashCode() : 0)) * 31;
        List<Article> list = this.articles;
        int hashCode20 = (hashCode19 + (list != null ? list.hashCode() : 0)) * 31;
        List<Screenshot> list2 = this.screenshots;
        int hashCode21 = (hashCode20 + (list2 != null ? list2.hashCode() : 0)) * 31;
        List<PageTypeItem> list3 = this.relatedPage;
        int hashCode22 = (hashCode21 + (list3 != null ? list3.hashCode() : 0)) * 31;
        AppDetailsInline appDetailsInline = this.appDetailInline;
        int hashCode23 = (hashCode22 + (appDetailsInline != null ? appDetailsInline.hashCode() : 0)) * 31;
        PackageDiff packageDiff2 = this.packageDiff;
        int hashCode24 = (hashCode23 + (packageDiff2 != null ? packageDiff2.hashCode() : 0)) * 31;
        String str15 = this.shortDescription;
        int hashCode25 = (hashCode24 + (str15 != null ? str15.hashCode() : 0)) * 31;
        AppDetailsComment appDetailsComment = this.comment;
        int hashCode26 = (hashCode25 + (appDetailsComment != null ? appDetailsComment.hashCode() : 0)) * 31;
        Shamed shamed2 = this.shamed;
        int hashCode27 = (hashCode26 + (shamed2 != null ? shamed2.hashCode() : 0)) * 31;
        EditorChoice editorChoice2 = this.editorChoice;
        int hashCode28 = (hashCode27 + (editorChoice2 != null ? editorChoice2.hashCode() : 0)) * 31;
        boolean z = this.incompatible;
        if (z) {
            z = true;
        }
        int i3 = (hashCode28 + (z ? 1 : 0)) * 31;
        String str16 = this.incompatibleMessage;
        int hashCode29 = (i3 + (str16 != null ? str16.hashCode() : 0)) * 31;
        Integer num = this.applicationType;
        int hashCode30 = (hashCode29 + (num != null ? num.hashCode() : 0)) * 31;
        String str17 = this.referrer;
        if (str17 != null) {
            i2 = str17.hashCode();
        }
        return hashCode30 + i2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0135, code lost:
        if (r3 == false) goto L_0x0137;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<com.farsitel.bazaar.common.model.RecyclerData> toAppDetailRecyclerList(java.util.List<com.farsitel.bazaar.common.model.reviews.ReviewItem> r27, int r28) {
        /*
            r26 = this;
            r0 = r26
            r1 = r27
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            int r3 = r26.getDefaultSortReview()
            com.farsitel.bazaar.common.model.appdetail.ReviewActionItem r3 = r0.toReviewActionItem(r3)
            com.farsitel.bazaar.common.model.appdetail.AppInfoItem r4 = r0.toAppInfoItem(r3)
            com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem r5 = r26.toAppMoreDescriptionItem()
            r2.add(r4)
            com.farsitel.bazaar.common.model.appdetail.EditorChoice r4 = r0.editorChoice
            boolean r4 = r4.getEnable()
            if (r4 == 0) goto L_0x002d
            com.farsitel.bazaar.common.model.appdetail.EditorChoice r4 = r0.editorChoice
            com.farsitel.bazaar.common.model.appdetail.EditorChoiceItem r4 = r4.toEditorChoiceItem()
            r2.add(r4)
        L_0x002d:
            com.farsitel.bazaar.common.model.RecyclerData r4 = r26.toScreenshotItem()
            if (r4 == 0) goto L_0x0036
            r2.add(r4)
        L_0x0036:
            com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem r4 = r26.toAppMoreDescriptionItem()
            com.farsitel.bazaar.common.model.RecyclerData r4 = r0.toChangeLogItem(r4)
            if (r4 == 0) goto L_0x0043
            r2.add(r4)
        L_0x0043:
            java.util.List r4 = r0.toDescriptionItems(r5)
            if (r4 == 0) goto L_0x004c
            r2.addAll(r4)
        L_0x004c:
            com.farsitel.bazaar.common.model.appdetail.AppReviewInfoItem r4 = r26.toReviewItem()
            r2.add(r4)
            com.farsitel.bazaar.common.model.appdetail.AppMyRateItem r4 = new com.farsitel.bazaar.common.model.appdetail.AppMyRateItem
            r5 = r28
            r4.<init>(r5)
            r2.add(r4)
            r4 = 10
            r5 = 1
            if (r1 == 0) goto L_0x00b0
            java.util.ArrayList r6 = new java.util.ArrayList
            int r7 = h.a.m.a(r1, r4)
            r6.<init>(r7)
            java.util.Iterator r7 = r27.iterator()
        L_0x006f:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L_0x00a3
            java.lang.Object r8 = r7.next()
            r9 = r8
            com.farsitel.bazaar.common.model.reviews.ReviewItem r9 = (com.farsitel.bazaar.common.model.reviews.ReviewItem) r9
            com.farsitel.bazaar.common.model.appdetail.AppReviewItem r8 = new com.farsitel.bazaar.common.model.appdetail.AppReviewItem
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r20 = 0
            r21 = 0
            r19 = 0
            r22 = 0
            r23 = 0
            r24 = 12799(0x31ff, float:1.7935E-41)
            r25 = 0
            com.farsitel.bazaar.common.model.reviews.ReviewItem r9 = com.farsitel.bazaar.common.model.reviews.ReviewItem.copy$default(r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
            r8.<init>(r9)
            r6.add(r8)
            goto L_0x006f
        L_0x00a3:
            r2.addAll(r6)
            boolean r1 = r27.isEmpty()
            r1 = r1 ^ r5
            if (r1 == 0) goto L_0x00b0
            r2.add(r3)
        L_0x00b0:
            java.util.List<com.farsitel.bazaar.common.model.page.PageTypeItem> r1 = r0.relatedPage
            if (r1 == 0) goto L_0x00b7
            r2.addAll(r1)
        L_0x00b7:
            java.util.List<com.farsitel.bazaar.common.model.appdetail.Article> r1 = r0.articles
            r3 = 0
            if (r1 == 0) goto L_0x010a
            java.util.ArrayList r6 = new java.util.ArrayList
            int r4 = h.a.m.a(r1, r4)
            r6.<init>(r4)
            java.util.Iterator r1 = r1.iterator()
        L_0x00c9:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L_0x00dd
            java.lang.Object r4 = r1.next()
            com.farsitel.bazaar.common.model.appdetail.Article r4 = (com.farsitel.bazaar.common.model.appdetail.Article) r4
            com.farsitel.bazaar.common.model.appdetail.ArticleItem r4 = r4.toArticleItem()
            r6.add(r4)
            goto L_0x00c9
        L_0x00dd:
            boolean r1 = r6.isEmpty()
            r1 = r1 ^ r5
            if (r1 == 0) goto L_0x010a
            com.farsitel.bazaar.common.model.appdetail.ArticleTitleItem r1 = new com.farsitel.bazaar.common.model.appdetail.ArticleTitleItem
            r1.<init>()
            r2.add(r1)
            int r1 = r6.size()
            r4 = 3
            int r1 = java.lang.Math.min(r1, r4)
            java.util.List r1 = r6.subList(r3, r1)
            r2.addAll(r1)
            int r1 = r6.size()
            if (r1 <= r4) goto L_0x010a
            com.farsitel.bazaar.common.model.appdetail.MoreArticleItem r1 = new com.farsitel.bazaar.common.model.appdetail.MoreArticleItem
            r1.<init>(r6)
            r2.add(r1)
        L_0x010a:
            java.lang.String r1 = r0.appEmail
            if (r1 == 0) goto L_0x0117
            int r1 = r1.length()
            if (r1 != 0) goto L_0x0115
            goto L_0x0117
        L_0x0115:
            r1 = 0
            goto L_0x0118
        L_0x0117:
            r1 = 1
        L_0x0118:
            if (r1 == 0) goto L_0x0137
            java.lang.String r1 = r0.appPhone
            if (r1 == 0) goto L_0x0127
            int r1 = r1.length()
            if (r1 != 0) goto L_0x0125
            goto L_0x0127
        L_0x0125:
            r1 = 0
            goto L_0x0128
        L_0x0127:
            r1 = 1
        L_0x0128:
            if (r1 == 0) goto L_0x0137
            java.lang.String r1 = r0.homePage
            if (r1 == 0) goto L_0x0134
            int r1 = r1.length()
            if (r1 != 0) goto L_0x0135
        L_0x0134:
            r3 = 1
        L_0x0135:
            if (r3 != 0) goto L_0x0145
        L_0x0137:
            com.farsitel.bazaar.common.model.appdetail.DeveloperInfoSectionItem r1 = new com.farsitel.bazaar.common.model.appdetail.DeveloperInfoSectionItem
            java.lang.String r3 = r0.appEmail
            java.lang.String r4 = r0.appPhone
            java.lang.String r5 = r0.homePage
            r1.<init>(r3, r4, r5)
            r2.add(r1)
        L_0x0145:
            com.farsitel.bazaar.common.model.appdetail.ReportItem r1 = new com.farsitel.bazaar.common.model.appdetail.ReportItem
            r1.<init>()
            r2.add(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.AppInfo.toAppDetailRecyclerList(java.util.List, int):java.util.List");
    }

    public String toString() {
        return "AppInfo(name=" + this.name + ", iconUrl=" + this.iconUrl + ", packageName=" + this.packageName + ", appStat=" + this.appStat + ", appEmail=" + this.appEmail + ", appPhone=" + this.appPhone + ", homePage=" + this.homePage + ", authorName=" + this.authorName + ", authorSlug=" + this.authorSlug + ", categoryName=" + this.categoryName + ", categorySlug=" + this.categorySlug + ", description=" + this.description + ", ratingImage=" + this.ratingImage + ", tinyRatingImage=" + this.tinyRatingImage + ", contentRating=" + this.contentRating + ", videoShot=" + this.videoShot + ", price=" + this.price + ", hasInAppPurchase=" + this.hasInAppPurchase + ", packageInfo=" + this.packageInfo + ", articles=" + this.articles + ", screenshots=" + this.screenshots + ", relatedPage=" + this.relatedPage + ", appDetailInline=" + this.appDetailInline + ", packageDiff=" + this.packageDiff + ", shortDescription=" + this.shortDescription + ", comment=" + this.comment + ", shamed=" + this.shamed + ", editorChoice=" + this.editorChoice + ", incompatible=" + this.incompatible + ", incompatibleMessage=" + this.incompatibleMessage + ", applicationType=" + this.applicationType + ", referrer=" + this.referrer + ")";
    }
}
