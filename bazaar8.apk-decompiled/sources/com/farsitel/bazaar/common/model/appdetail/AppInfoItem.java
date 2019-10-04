package com.farsitel.bazaar.common.model.appdetail;

import android.content.Context;
import c.c.a.c.a;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.crashlytics.android.core.LogFileManager;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.ui.EntityState;
import h.c;
import h.d;
import h.f.b.f;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: ViewHolderItem.kt */
public final class AppInfoItem implements RecyclerData {
    public static final /* synthetic */ i[] $$delegatedProperties;
    public final EntityState _appState;
    public final float appRate;
    public final String appSize;
    public final String appSizeLabel;
    public final String appSizeWithLabel;
    public EntityState appState;
    public final c appType$delegate;
    public final Integer applicationType;
    public final String authorName;
    public final String authorSlug;
    public final String categoryName;
    public final String categorySlug;
    public final String defaultSortTypeChoice;
    public EntityState getAppStateForInitializeView;
    public final boolean hasInAppPurchase;
    public final String iconURL;
    public final boolean incompatible;
    public final String incompatibleMessage;
    public final Integer inlineVersion;
    public final String installLabel;
    public boolean isApplicationInstalled;
    public boolean isBought;
    public final boolean isDualInlineApp;
    public final boolean isFree;
    public final boolean isInlineOnly;
    public Boolean isUnInstallable;
    public final String name;
    public final int packageId;
    public final String packageName;
    public final AppDetailsPriceItem prices;
    public DownloaderProgressInfo progressInfo;
    public final String referrer;
    public final ReviewActionItem reviewActionItem;
    public final String reviewCount;
    public final String tinyRatingImage;
    public final String verboseInstallCountRange;
    public final String verboseInstallCountRangeDescription;
    public final String verboseInstallCountRangeLabel;
    public final long versionCode;

    /* compiled from: ViewHolderItem.kt */
    private enum AppType {
        APP(0),
        INLINE(1),
        DUAL(2);
        
        public final int value;

        /* access modifiers changed from: public */
        AppType(int i2) {
            this.value = i2;
        }

        public final int getValue() {
            return this.value;
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(AppInfoItem.class), "appType", "getAppType()Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;");
        k.a((PropertyReference1) propertyReference1Impl);
        $$delegatedProperties = new i[]{propertyReference1Impl};
    }

    public AppInfoItem(int i2, String str, long j2, Integer num, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, float f2, String str10, String str11, String str12, String str13, boolean z, String str14, boolean z2, String str15, AppDetailsPriceItem appDetailsPriceItem, String str16, ReviewActionItem reviewActionItem2, String str17, Integer num2, boolean z3, EntityState entityState, DownloaderProgressInfo downloaderProgressInfo, Boolean bool) {
        String str18 = str;
        String str19 = str2;
        String str20 = str3;
        String str21 = str4;
        String str22 = str6;
        String str23 = str8;
        String str24 = str9;
        String str25 = str10;
        String str26 = str11;
        AppDetailsPriceItem appDetailsPriceItem2 = appDetailsPriceItem;
        String str27 = str16;
        ReviewActionItem reviewActionItem3 = reviewActionItem2;
        EntityState entityState2 = entityState;
        j.b(str18, "packageName");
        j.b(str19, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str20, "iconURL");
        j.b(str21, "authorName");
        j.b(str22, "verboseInstallCountRange");
        j.b(str23, "verboseInstallCountRangeDescription");
        j.b(str24, "reviewCount");
        j.b(str25, "categoryName");
        j.b(str26, "categorySlug");
        j.b(appDetailsPriceItem2, "prices");
        j.b(str27, "defaultSortTypeChoice");
        j.b(reviewActionItem3, "reviewActionItem");
        j.b(entityState2, "_appState");
        this.packageId = i2;
        this.packageName = str18;
        this.versionCode = j2;
        this.inlineVersion = num;
        this.name = str19;
        this.iconURL = str20;
        this.authorName = str21;
        this.authorSlug = str5;
        this.verboseInstallCountRange = str22;
        this.verboseInstallCountRangeLabel = str7;
        this.verboseInstallCountRangeDescription = str23;
        this.reviewCount = str24;
        this.appRate = f2;
        this.categoryName = str25;
        this.categorySlug = str26;
        this.appSize = str12;
        this.appSizeLabel = str13;
        this.hasInAppPurchase = z;
        this.tinyRatingImage = str14;
        this.incompatible = z2;
        this.incompatibleMessage = str15;
        this.prices = appDetailsPriceItem2;
        this.defaultSortTypeChoice = str27;
        this.reviewActionItem = reviewActionItem3;
        this.referrer = str17;
        this.applicationType = num2;
        this.isBought = z3;
        this._appState = entityState2;
        this.progressInfo = downloaderProgressInfo;
        this.isUnInstallable = bool;
        this.appState = this._appState;
        this.getAppStateForInitializeView = getAppState();
        this.appType$delegate = d.a(new AppInfoItem$appType$2(this));
        boolean z4 = true;
        this.isInlineOnly = getAppType() == AppType.INLINE;
        this.isDualInlineApp = getAppType() == AppType.DUAL;
        this.appSizeWithLabel = this.appSize + ' ' + this.appSizeLabel;
        StringBuilder sb = new StringBuilder();
        sb.append(this.verboseInstallCountRange);
        sb.append(' ');
        String str28 = this.verboseInstallCountRangeLabel;
        sb.append(str28 == null || str28.length() == 0 ? "" : this.verboseInstallCountRangeLabel);
        this.installLabel = sb.toString();
        this.isFree = getPrice() != 0 ? false : z4;
    }

    private final Integer component26() {
        return this.applicationType;
    }

    private final EntityState component28() {
        return this._appState;
    }

    public static /* synthetic */ AppInfoItem copy$default(AppInfoItem appInfoItem, int i2, String str, long j2, Integer num, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, float f2, String str10, String str11, String str12, String str13, boolean z, String str14, boolean z2, String str15, AppDetailsPriceItem appDetailsPriceItem, String str16, ReviewActionItem reviewActionItem2, String str17, Integer num2, boolean z3, EntityState entityState, DownloaderProgressInfo downloaderProgressInfo, Boolean bool, int i3, Object obj) {
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        boolean z4;
        boolean z5;
        String str23;
        String str24;
        boolean z6;
        boolean z7;
        String str25;
        String str26;
        AppDetailsPriceItem appDetailsPriceItem2;
        AppDetailsPriceItem appDetailsPriceItem3;
        String str27;
        String str28;
        ReviewActionItem reviewActionItem3;
        ReviewActionItem reviewActionItem4;
        String str29;
        String str30;
        Integer num3;
        Integer num4;
        boolean z8;
        boolean z9;
        EntityState entityState2;
        EntityState entityState3;
        DownloaderProgressInfo downloaderProgressInfo2;
        AppInfoItem appInfoItem2 = appInfoItem;
        int i4 = i3;
        int i5 = (i4 & 1) != 0 ? appInfoItem2.packageId : i2;
        String str31 = (i4 & 2) != 0 ? appInfoItem2.packageName : str;
        long j3 = (i4 & 4) != 0 ? appInfoItem2.versionCode : j2;
        Integer num5 = (i4 & 8) != 0 ? appInfoItem2.inlineVersion : num;
        String str32 = (i4 & 16) != 0 ? appInfoItem2.name : str2;
        String str33 = (i4 & 32) != 0 ? appInfoItem2.iconURL : str3;
        String str34 = (i4 & 64) != 0 ? appInfoItem2.authorName : str4;
        String str35 = (i4 & 128) != 0 ? appInfoItem2.authorSlug : str5;
        String str36 = (i4 & 256) != 0 ? appInfoItem2.verboseInstallCountRange : str6;
        String str37 = (i4 & 512) != 0 ? appInfoItem2.verboseInstallCountRangeLabel : str7;
        String str38 = (i4 & 1024) != 0 ? appInfoItem2.verboseInstallCountRangeDescription : str8;
        String str39 = (i4 & 2048) != 0 ? appInfoItem2.reviewCount : str9;
        float f3 = (i4 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? appInfoItem2.appRate : f2;
        String str40 = (i4 & 8192) != 0 ? appInfoItem2.categoryName : str10;
        String str41 = (i4 & 16384) != 0 ? appInfoItem2.categorySlug : str11;
        if ((i4 & 32768) != 0) {
            str18 = str41;
            str19 = appInfoItem2.appSize;
        } else {
            str18 = str41;
            str19 = str12;
        }
        if ((i4 & LogFileManager.MAX_LOG_SIZE) != 0) {
            str20 = str19;
            str21 = appInfoItem2.appSizeLabel;
        } else {
            str20 = str19;
            str21 = str13;
        }
        if ((i4 & 131072) != 0) {
            str22 = str21;
            z4 = appInfoItem2.hasInAppPurchase;
        } else {
            str22 = str21;
            z4 = z;
        }
        if ((i4 & 262144) != 0) {
            z5 = z4;
            str23 = appInfoItem2.tinyRatingImage;
        } else {
            z5 = z4;
            str23 = str14;
        }
        if ((i4 & 524288) != 0) {
            str24 = str23;
            z6 = appInfoItem2.incompatible;
        } else {
            str24 = str23;
            z6 = z2;
        }
        if ((i4 & 1048576) != 0) {
            z7 = z6;
            str25 = appInfoItem2.incompatibleMessage;
        } else {
            z7 = z6;
            str25 = str15;
        }
        if ((i4 & 2097152) != 0) {
            str26 = str25;
            appDetailsPriceItem2 = appInfoItem2.prices;
        } else {
            str26 = str25;
            appDetailsPriceItem2 = appDetailsPriceItem;
        }
        if ((i4 & 4194304) != 0) {
            appDetailsPriceItem3 = appDetailsPriceItem2;
            str27 = appInfoItem2.defaultSortTypeChoice;
        } else {
            appDetailsPriceItem3 = appDetailsPriceItem2;
            str27 = str16;
        }
        if ((i4 & 8388608) != 0) {
            str28 = str27;
            reviewActionItem3 = appInfoItem2.reviewActionItem;
        } else {
            str28 = str27;
            reviewActionItem3 = reviewActionItem2;
        }
        if ((i4 & 16777216) != 0) {
            reviewActionItem4 = reviewActionItem3;
            str29 = appInfoItem2.referrer;
        } else {
            reviewActionItem4 = reviewActionItem3;
            str29 = str17;
        }
        if ((i4 & 33554432) != 0) {
            str30 = str29;
            num3 = appInfoItem2.applicationType;
        } else {
            str30 = str29;
            num3 = num2;
        }
        if ((i4 & 67108864) != 0) {
            num4 = num3;
            z8 = appInfoItem2.isBought;
        } else {
            num4 = num3;
            z8 = z3;
        }
        if ((i4 & 134217728) != 0) {
            z9 = z8;
            entityState2 = appInfoItem2._appState;
        } else {
            z9 = z8;
            entityState2 = entityState;
        }
        if ((i4 & 268435456) != 0) {
            entityState3 = entityState2;
            downloaderProgressInfo2 = appInfoItem2.progressInfo;
        } else {
            entityState3 = entityState2;
            downloaderProgressInfo2 = downloaderProgressInfo;
        }
        return appInfoItem.copy(i5, str31, j3, num5, str32, str33, str34, str35, str36, str37, str38, str39, f3, str40, str18, str20, str22, z5, str24, z7, str26, appDetailsPriceItem3, str28, reviewActionItem4, str30, num4, z9, entityState3, downloaderProgressInfo2, (i4 & 536870912) != 0 ? appInfoItem2.isUnInstallable : bool);
    }

    private final AppType getAppType() {
        c cVar = this.appType$delegate;
        i iVar = $$delegatedProperties[0];
        return (AppType) cVar.getValue();
    }

    public final int component1() {
        return this.packageId;
    }

    public final String component10() {
        return this.verboseInstallCountRangeLabel;
    }

    public final String component11() {
        return this.verboseInstallCountRangeDescription;
    }

    public final String component12() {
        return this.reviewCount;
    }

    public final float component13() {
        return this.appRate;
    }

    public final String component14() {
        return this.categoryName;
    }

    public final String component15() {
        return this.categorySlug;
    }

    public final String component16() {
        return this.appSize;
    }

    public final String component17() {
        return this.appSizeLabel;
    }

    public final boolean component18() {
        return this.hasInAppPurchase;
    }

    public final String component19() {
        return this.tinyRatingImage;
    }

    public final String component2() {
        return this.packageName;
    }

    public final boolean component20() {
        return this.incompatible;
    }

    public final String component21() {
        return this.incompatibleMessage;
    }

    public final AppDetailsPriceItem component22() {
        return this.prices;
    }

    public final String component23() {
        return this.defaultSortTypeChoice;
    }

    public final ReviewActionItem component24() {
        return this.reviewActionItem;
    }

    public final String component25() {
        return this.referrer;
    }

    public final boolean component27() {
        return this.isBought;
    }

    public final DownloaderProgressInfo component29() {
        return this.progressInfo;
    }

    public final long component3() {
        return this.versionCode;
    }

    public final Boolean component30() {
        return this.isUnInstallable;
    }

    public final Integer component4() {
        return this.inlineVersion;
    }

    public final String component5() {
        return this.name;
    }

    public final String component6() {
        return this.iconURL;
    }

    public final String component7() {
        return this.authorName;
    }

    public final String component8() {
        return this.authorSlug;
    }

    public final String component9() {
        return this.verboseInstallCountRange;
    }

    public final AppInfoItem copy(int i2, String str, long j2, Integer num, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, float f2, String str10, String str11, String str12, String str13, boolean z, String str14, boolean z2, String str15, AppDetailsPriceItem appDetailsPriceItem, String str16, ReviewActionItem reviewActionItem2, String str17, Integer num2, boolean z3, EntityState entityState, DownloaderProgressInfo downloaderProgressInfo, Boolean bool) {
        int i3 = i2;
        j.b(str, "packageName");
        j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str3, "iconURL");
        j.b(str4, "authorName");
        j.b(str6, "verboseInstallCountRange");
        j.b(str8, "verboseInstallCountRangeDescription");
        j.b(str9, "reviewCount");
        j.b(str10, "categoryName");
        j.b(str11, "categorySlug");
        j.b(appDetailsPriceItem, "prices");
        j.b(str16, "defaultSortTypeChoice");
        j.b(reviewActionItem2, "reviewActionItem");
        j.b(entityState, "_appState");
        AppInfoItem appInfoItem = new AppInfoItem(i2, str, j2, num, str2, str3, str4, str5, str6, str7, str8, str9, f2, str10, str11, str12, str13, z, str14, z2, str15, appDetailsPriceItem, str16, reviewActionItem2, str17, num2, z3, entityState, downloaderProgressInfo, bool);
        return appInfoItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AppInfoItem) {
                AppInfoItem appInfoItem = (AppInfoItem) obj;
                if ((this.packageId == appInfoItem.packageId) && j.a((Object) this.packageName, (Object) appInfoItem.packageName)) {
                    if ((this.versionCode == appInfoItem.versionCode) && j.a((Object) this.inlineVersion, (Object) appInfoItem.inlineVersion) && j.a((Object) this.name, (Object) appInfoItem.name) && j.a((Object) this.iconURL, (Object) appInfoItem.iconURL) && j.a((Object) this.authorName, (Object) appInfoItem.authorName) && j.a((Object) this.authorSlug, (Object) appInfoItem.authorSlug) && j.a((Object) this.verboseInstallCountRange, (Object) appInfoItem.verboseInstallCountRange) && j.a((Object) this.verboseInstallCountRangeLabel, (Object) appInfoItem.verboseInstallCountRangeLabel) && j.a((Object) this.verboseInstallCountRangeDescription, (Object) appInfoItem.verboseInstallCountRangeDescription) && j.a((Object) this.reviewCount, (Object) appInfoItem.reviewCount) && Float.compare(this.appRate, appInfoItem.appRate) == 0 && j.a((Object) this.categoryName, (Object) appInfoItem.categoryName) && j.a((Object) this.categorySlug, (Object) appInfoItem.categorySlug) && j.a((Object) this.appSize, (Object) appInfoItem.appSize) && j.a((Object) this.appSizeLabel, (Object) appInfoItem.appSizeLabel)) {
                        if ((this.hasInAppPurchase == appInfoItem.hasInAppPurchase) && j.a((Object) this.tinyRatingImage, (Object) appInfoItem.tinyRatingImage)) {
                            if ((this.incompatible == appInfoItem.incompatible) && j.a((Object) this.incompatibleMessage, (Object) appInfoItem.incompatibleMessage) && j.a((Object) this.prices, (Object) appInfoItem.prices) && j.a((Object) this.defaultSortTypeChoice, (Object) appInfoItem.defaultSortTypeChoice) && j.a((Object) this.reviewActionItem, (Object) appInfoItem.reviewActionItem) && j.a((Object) this.referrer, (Object) appInfoItem.referrer) && j.a((Object) this.applicationType, (Object) appInfoItem.applicationType)) {
                                if (!(this.isBought == appInfoItem.isBought) || !j.a((Object) this._appState, (Object) appInfoItem._appState) || !j.a((Object) this.progressInfo, (Object) appInfoItem.progressInfo) || !j.a((Object) this.isUnInstallable, (Object) appInfoItem.isUnInstallable)) {
                                    return false;
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final float getAppRate() {
        return this.appRate;
    }

    public final String getAppSize() {
        return this.appSize;
    }

    public final String getAppSizeLabel() {
        return this.appSizeLabel;
    }

    public final String getAppSizeWithLabel() {
        return this.appSizeWithLabel;
    }

    public final EntityState getAppState() {
        if (this.appState != EntityState.NONE || (!this.incompatible && (this.packageId != -1 || this.isInlineOnly))) {
            return this.appState;
        }
        return EntityState.INCOMPATIBLE;
    }

    public final String getAuthorName() {
        return this.authorName;
    }

    public final String getAuthorSlug() {
        return this.authorSlug;
    }

    public final boolean getCanBeInstalled() {
        return getPrice() == 0 || this.isBought;
    }

    public final String getCategoryName() {
        return this.categoryName;
    }

    public final String getCategorySlug() {
        return this.categorySlug;
    }

    public final String getDefaultSortTypeChoice() {
        return this.defaultSortTypeChoice;
    }

    public final String getErrorMessage(Context context) {
        j.b(context, "context");
        if (this.incompatible) {
            return this.incompatibleMessage;
        }
        if (getAppState() == EntityState.FAILED_STORAGE) {
            return context.getString(a.low_storage);
        }
        return null;
    }

    public final EntityState getGetAppStateForInitializeView() {
        if (getAppState() != EntityState.FILE_EXISTS || !this.isApplicationInstalled) {
            return getAppState();
        }
        return EntityState.UPDATE_NEEDED;
    }

    public final boolean getHasError() {
        return this.incompatible || getAppState() == EntityState.FAILED_STORAGE;
    }

    public final boolean getHasInAppPurchase() {
        return this.hasInAppPurchase;
    }

    public final String getIconURL() {
        return this.iconURL;
    }

    public final boolean getIncompatible() {
        return this.incompatible;
    }

    public final String getIncompatibleMessage() {
        return this.incompatibleMessage;
    }

    public final Integer getInlineVersion() {
        return this.inlineVersion;
    }

    public final String getInstallLabel() {
        return this.installLabel;
    }

    public final String getName() {
        return this.name;
    }

    public final int getPackageId() {
        return this.packageId;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final int getPrice() {
        Integer price = this.prices.getPrice();
        if (price != null) {
            return price.intValue();
        }
        return 0;
    }

    public final AppDetailsPriceItem getPrices() {
        return this.prices;
    }

    public final DownloaderProgressInfo getProgressInfo() {
        return this.progressInfo;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final ReviewActionItem getReviewActionItem() {
        return this.reviewActionItem;
    }

    public final String getReviewCount() {
        return this.reviewCount;
    }

    public final String getTinyRatingImage() {
        return this.tinyRatingImage;
    }

    public final String getVerboseInstallCountRange() {
        return this.verboseInstallCountRange;
    }

    public final String getVerboseInstallCountRangeDescription() {
        return this.verboseInstallCountRangeDescription;
    }

    public final String getVerboseInstallCountRangeLabel() {
        return this.verboseInstallCountRangeLabel;
    }

    public final long getVersionCode() {
        return this.versionCode;
    }

    public int getViewType() {
        return AppDetailViewItemType.APP_INFO.ordinal();
    }

    public int hashCode() {
        int i2 = this.packageId * 31;
        String str = this.packageName;
        int i3 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        long j2 = this.versionCode;
        int i4 = (((i2 + hashCode) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        Integer num = this.inlineVersion;
        int hashCode2 = (i4 + (num != null ? num.hashCode() : 0)) * 31;
        String str2 = this.name;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.iconURL;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.authorName;
        int hashCode5 = (hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.authorSlug;
        int hashCode6 = (hashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.verboseInstallCountRange;
        int hashCode7 = (hashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.verboseInstallCountRangeLabel;
        int hashCode8 = (hashCode7 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.verboseInstallCountRangeDescription;
        int hashCode9 = (hashCode8 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.reviewCount;
        int hashCode10 = (((hashCode9 + (str9 != null ? str9.hashCode() : 0)) * 31) + Float.floatToIntBits(this.appRate)) * 31;
        String str10 = this.categoryName;
        int hashCode11 = (hashCode10 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.categorySlug;
        int hashCode12 = (hashCode11 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.appSize;
        int hashCode13 = (hashCode12 + (str12 != null ? str12.hashCode() : 0)) * 31;
        String str13 = this.appSizeLabel;
        int hashCode14 = (hashCode13 + (str13 != null ? str13.hashCode() : 0)) * 31;
        boolean z = this.hasInAppPurchase;
        if (z) {
            z = true;
        }
        int i5 = (hashCode14 + (z ? 1 : 0)) * 31;
        String str14 = this.tinyRatingImage;
        int hashCode15 = (i5 + (str14 != null ? str14.hashCode() : 0)) * 31;
        boolean z2 = this.incompatible;
        if (z2) {
            z2 = true;
        }
        int i6 = (hashCode15 + (z2 ? 1 : 0)) * 31;
        String str15 = this.incompatibleMessage;
        int hashCode16 = (i6 + (str15 != null ? str15.hashCode() : 0)) * 31;
        AppDetailsPriceItem appDetailsPriceItem = this.prices;
        int hashCode17 = (hashCode16 + (appDetailsPriceItem != null ? appDetailsPriceItem.hashCode() : 0)) * 31;
        String str16 = this.defaultSortTypeChoice;
        int hashCode18 = (hashCode17 + (str16 != null ? str16.hashCode() : 0)) * 31;
        ReviewActionItem reviewActionItem2 = this.reviewActionItem;
        int hashCode19 = (hashCode18 + (reviewActionItem2 != null ? reviewActionItem2.hashCode() : 0)) * 31;
        String str17 = this.referrer;
        int hashCode20 = (hashCode19 + (str17 != null ? str17.hashCode() : 0)) * 31;
        Integer num2 = this.applicationType;
        int hashCode21 = (hashCode20 + (num2 != null ? num2.hashCode() : 0)) * 31;
        boolean z3 = this.isBought;
        if (z3) {
            z3 = true;
        }
        int i7 = (hashCode21 + (z3 ? 1 : 0)) * 31;
        EntityState entityState = this._appState;
        int hashCode22 = (i7 + (entityState != null ? entityState.hashCode() : 0)) * 31;
        DownloaderProgressInfo downloaderProgressInfo = this.progressInfo;
        int hashCode23 = (hashCode22 + (downloaderProgressInfo != null ? downloaderProgressInfo.hashCode() : 0)) * 31;
        Boolean bool = this.isUnInstallable;
        if (bool != null) {
            i3 = bool.hashCode();
        }
        return hashCode23 + i3;
    }

    public final boolean isApplicationInstalled() {
        return this.isApplicationInstalled;
    }

    public final boolean isBought() {
        return this.isBought;
    }

    public final boolean isDualInlineApp() {
        return this.isDualInlineApp;
    }

    public final boolean isFree() {
        return this.isFree;
    }

    public final boolean isInlineOnly() {
        return this.isInlineOnly;
    }

    public final Boolean isUnInstallable() {
        return this.isUnInstallable;
    }

    public final void setAppState(EntityState entityState) {
        j.b(entityState, "<set-?>");
        this.appState = entityState;
    }

    public final void setApplicationInstalled(boolean z) {
        this.isApplicationInstalled = z;
    }

    public final void setBought(boolean z) {
        this.isBought = z;
    }

    public final void setGetAppStateForInitializeView(EntityState entityState) {
        j.b(entityState, "<set-?>");
        this.getAppStateForInitializeView = entityState;
    }

    public final void setProgressInfo(DownloaderProgressInfo downloaderProgressInfo) {
        this.progressInfo = downloaderProgressInfo;
    }

    public final void setUnInstallable(Boolean bool) {
        this.isUnInstallable = bool;
    }

    public String toString() {
        return "AppInfoItem(packageId=" + this.packageId + ", packageName=" + this.packageName + ", versionCode=" + this.versionCode + ", inlineVersion=" + this.inlineVersion + ", name=" + this.name + ", iconURL=" + this.iconURL + ", authorName=" + this.authorName + ", authorSlug=" + this.authorSlug + ", verboseInstallCountRange=" + this.verboseInstallCountRange + ", verboseInstallCountRangeLabel=" + this.verboseInstallCountRangeLabel + ", verboseInstallCountRangeDescription=" + this.verboseInstallCountRangeDescription + ", reviewCount=" + this.reviewCount + ", appRate=" + this.appRate + ", categoryName=" + this.categoryName + ", categorySlug=" + this.categorySlug + ", appSize=" + this.appSize + ", appSizeLabel=" + this.appSizeLabel + ", hasInAppPurchase=" + this.hasInAppPurchase + ", tinyRatingImage=" + this.tinyRatingImage + ", incompatible=" + this.incompatible + ", incompatibleMessage=" + this.incompatibleMessage + ", prices=" + this.prices + ", defaultSortTypeChoice=" + this.defaultSortTypeChoice + ", reviewActionItem=" + this.reviewActionItem + ", referrer=" + this.referrer + ", applicationType=" + this.applicationType + ", isBought=" + this.isBought + ", _appState=" + this._appState + ", progressInfo=" + this.progressInfo + ", isUnInstallable=" + this.isUnInstallable + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AppInfoItem(int i2, String str, long j2, Integer num, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, float f2, String str10, String str11, String str12, String str13, boolean z, String str14, boolean z2, String str15, AppDetailsPriceItem appDetailsPriceItem, String str16, ReviewActionItem reviewActionItem2, String str17, Integer num2, boolean z3, EntityState entityState, DownloaderProgressInfo downloaderProgressInfo, Boolean bool, int i3, f fVar) {
        this(i2, str, j2, num, str2, str3, str4, str5, str6, str7, str8, str9, f2, str10, str11, str12, str13, z, str14, z2, str15, appDetailsPriceItem, str16, reviewActionItem2, str17, num2, (i3 & 67108864) != 0 ? false : z3, (i3 & 134217728) != 0 ? EntityState.UNDEFINED : entityState, (i3 & 268435456) != 0 ? null : downloaderProgressInfo, (i3 & 536870912) != 0 ? false : bool);
    }
}
