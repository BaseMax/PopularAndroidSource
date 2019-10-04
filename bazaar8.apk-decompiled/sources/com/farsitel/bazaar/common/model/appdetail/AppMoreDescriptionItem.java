package com.farsitel.bazaar.common.model.appdetail;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Spanned;
import c.c.a.c.b.i;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.LogFileManager;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.f;
import h.f.b.j;
import java.util.List;

/* compiled from: ViewHolderItem.kt */
public final class AppMoreDescriptionItem implements RecyclerData, Parcelable {
    public static final CREATOR CREATOR = new CREATOR(null);
    public final String appName;
    public final String appVersion;
    public final Long appVersionCode;
    public final String categoryName;
    public final String categorySlug;
    public final String changeLog;
    public final String contentRating;
    public final String contentRatingImage;
    public final String description;
    public final Boolean haveAdNetwork;
    public final String iconUrl;
    public final String installCountRange;
    public final String lastUpdated;
    public final Long packageDiffs;
    public final String packageName;
    public final Long packageSize;
    public final List<String> permissionDescriptions;
    public final List<String> permissions;
    public final String referrer;
    public final String shamedIconURL;
    public final String shamedId;
    public final String shamedURL;
    public final String verboseSize;
    public final String verboseSizeLabel;
    public final int viewType;

    /* compiled from: ViewHolderItem.kt */
    public static final class CREATOR implements Parcelable.Creator<AppMoreDescriptionItem> {
        public CREATOR() {
        }

        public /* synthetic */ CREATOR(f fVar) {
            this();
        }

        public AppMoreDescriptionItem createFromParcel(Parcel parcel) {
            j.b(parcel, "parcel");
            return new AppMoreDescriptionItem(parcel);
        }

        public AppMoreDescriptionItem[] newArray(int i2) {
            return new AppMoreDescriptionItem[i2];
        }
    }

    public AppMoreDescriptionItem(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, Long l2, Long l3, Long l4, String str10, String str11, List<String> list, List<String> list2, String str12, Boolean bool, String str13, String str14, String str15, String str16, String str17, String str18) {
        String str19 = str7;
        j.b(str, "packageName");
        j.b(str2, "iconUrl");
        j.b(str3, "appName");
        j.b(str4, "description");
        j.b(str5, "categoryName");
        j.b(str6, "categorySlug");
        j.b(str19, "installCountRange");
        this.packageName = str;
        this.iconUrl = str2;
        this.appName = str3;
        this.description = str4;
        this.categoryName = str5;
        this.categorySlug = str6;
        this.installCountRange = str19;
        this.verboseSize = str8;
        this.verboseSizeLabel = str9;
        this.packageSize = l2;
        this.packageDiffs = l3;
        this.appVersionCode = l4;
        this.appVersion = str10;
        this.lastUpdated = str11;
        this.permissions = list;
        this.permissionDescriptions = list2;
        this.changeLog = str12;
        this.haveAdNetwork = bool;
        this.contentRating = str13;
        this.contentRatingImage = str14;
        this.shamedId = str15;
        this.shamedURL = str16;
        this.shamedIconURL = str17;
        this.referrer = str18;
        this.viewType = AppDetailViewItemType.APP_MORE_DESCRIPTION.ordinal();
    }

    public static /* synthetic */ AppMoreDescriptionItem copy$default(AppMoreDescriptionItem appMoreDescriptionItem, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, Long l2, Long l3, Long l4, String str10, String str11, List list, List list2, String str12, Boolean bool, String str13, String str14, String str15, String str16, String str17, String str18, int i2, Object obj) {
        List list3;
        List list4;
        List list5;
        String str19;
        String str20;
        Boolean bool2;
        Boolean bool3;
        String str21;
        String str22;
        String str23;
        String str24;
        String str25;
        String str26;
        String str27;
        String str28;
        String str29;
        AppMoreDescriptionItem appMoreDescriptionItem2 = appMoreDescriptionItem;
        int i3 = i2;
        String str30 = (i3 & 1) != 0 ? appMoreDescriptionItem2.packageName : str;
        String str31 = (i3 & 2) != 0 ? appMoreDescriptionItem2.iconUrl : str2;
        String str32 = (i3 & 4) != 0 ? appMoreDescriptionItem2.appName : str3;
        String str33 = (i3 & 8) != 0 ? appMoreDescriptionItem2.description : str4;
        String str34 = (i3 & 16) != 0 ? appMoreDescriptionItem2.categoryName : str5;
        String str35 = (i3 & 32) != 0 ? appMoreDescriptionItem2.categorySlug : str6;
        String str36 = (i3 & 64) != 0 ? appMoreDescriptionItem2.installCountRange : str7;
        String str37 = (i3 & 128) != 0 ? appMoreDescriptionItem2.verboseSize : str8;
        String str38 = (i3 & 256) != 0 ? appMoreDescriptionItem2.verboseSizeLabel : str9;
        Long l5 = (i3 & 512) != 0 ? appMoreDescriptionItem2.packageSize : l2;
        Long l6 = (i3 & 1024) != 0 ? appMoreDescriptionItem2.packageDiffs : l3;
        Long l7 = (i3 & 2048) != 0 ? appMoreDescriptionItem2.appVersionCode : l4;
        String str39 = (i3 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? appMoreDescriptionItem2.appVersion : str10;
        String str40 = (i3 & 8192) != 0 ? appMoreDescriptionItem2.lastUpdated : str11;
        List list6 = (i3 & 16384) != 0 ? appMoreDescriptionItem2.permissions : list;
        if ((i3 & 32768) != 0) {
            list3 = list6;
            list4 = appMoreDescriptionItem2.permissionDescriptions;
        } else {
            list3 = list6;
            list4 = list2;
        }
        if ((i3 & LogFileManager.MAX_LOG_SIZE) != 0) {
            list5 = list4;
            str19 = appMoreDescriptionItem2.changeLog;
        } else {
            list5 = list4;
            str19 = str12;
        }
        if ((i3 & 131072) != 0) {
            str20 = str19;
            bool2 = appMoreDescriptionItem2.haveAdNetwork;
        } else {
            str20 = str19;
            bool2 = bool;
        }
        if ((i3 & 262144) != 0) {
            bool3 = bool2;
            str21 = appMoreDescriptionItem2.contentRating;
        } else {
            bool3 = bool2;
            str21 = str13;
        }
        if ((i3 & 524288) != 0) {
            str22 = str21;
            str23 = appMoreDescriptionItem2.contentRatingImage;
        } else {
            str22 = str21;
            str23 = str14;
        }
        if ((i3 & 1048576) != 0) {
            str24 = str23;
            str25 = appMoreDescriptionItem2.shamedId;
        } else {
            str24 = str23;
            str25 = str15;
        }
        if ((i3 & 2097152) != 0) {
            str26 = str25;
            str27 = appMoreDescriptionItem2.shamedURL;
        } else {
            str26 = str25;
            str27 = str16;
        }
        if ((i3 & 4194304) != 0) {
            str28 = str27;
            str29 = appMoreDescriptionItem2.shamedIconURL;
        } else {
            str28 = str27;
            str29 = str17;
        }
        return appMoreDescriptionItem.copy(str30, str31, str32, str33, str34, str35, str36, str37, str38, l5, l6, l7, str39, str40, list3, list5, str20, bool3, str22, str24, str26, str28, str29, (i3 & 8388608) != 0 ? appMoreDescriptionItem2.referrer : str18);
    }

    public final String component1() {
        return this.packageName;
    }

    public final Long component10() {
        return this.packageSize;
    }

    public final Long component11() {
        return this.packageDiffs;
    }

    public final Long component12() {
        return this.appVersionCode;
    }

    public final String component13() {
        return this.appVersion;
    }

    public final String component14() {
        return this.lastUpdated;
    }

    public final List<String> component15() {
        return this.permissions;
    }

    public final List<String> component16() {
        return this.permissionDescriptions;
    }

    public final String component17() {
        return this.changeLog;
    }

    public final Boolean component18() {
        return this.haveAdNetwork;
    }

    public final String component19() {
        return this.contentRating;
    }

    public final String component2() {
        return this.iconUrl;
    }

    public final String component20() {
        return this.contentRatingImage;
    }

    public final String component21() {
        return this.shamedId;
    }

    public final String component22() {
        return this.shamedURL;
    }

    public final String component23() {
        return this.shamedIconURL;
    }

    public final String component24() {
        return this.referrer;
    }

    public final String component3() {
        return this.appName;
    }

    public final String component4() {
        return this.description;
    }

    public final String component5() {
        return this.categoryName;
    }

    public final String component6() {
        return this.categorySlug;
    }

    public final String component7() {
        return this.installCountRange;
    }

    public final String component8() {
        return this.verboseSize;
    }

    public final String component9() {
        return this.verboseSizeLabel;
    }

    public final AppMoreDescriptionItem copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, Long l2, Long l3, Long l4, String str10, String str11, List<String> list, List<String> list2, String str12, Boolean bool, String str13, String str14, String str15, String str16, String str17, String str18) {
        String str19 = str;
        j.b(str19, "packageName");
        j.b(str2, "iconUrl");
        j.b(str3, "appName");
        j.b(str4, "description");
        j.b(str5, "categoryName");
        j.b(str6, "categorySlug");
        j.b(str7, "installCountRange");
        AppMoreDescriptionItem appMoreDescriptionItem = new AppMoreDescriptionItem(str19, str2, str3, str4, str5, str6, str7, str8, str9, l2, l3, l4, str10, str11, list, list2, str12, bool, str13, str14, str15, str16, str17, str18);
        return appMoreDescriptionItem;
    }

    public int describeContents() {
        return 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00f6, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x00fb;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x00fb
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem
            if (r0 == 0) goto L_0x00f9
            com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem r3 = (com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem) r3
            java.lang.String r0 = r2.packageName
            java.lang.String r1 = r3.packageName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.iconUrl
            java.lang.String r1 = r3.iconUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.appName
            java.lang.String r1 = r3.appName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.description
            java.lang.String r1 = r3.description
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.categoryName
            java.lang.String r1 = r3.categoryName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.categorySlug
            java.lang.String r1 = r3.categorySlug
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.installCountRange
            java.lang.String r1 = r3.installCountRange
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.verboseSize
            java.lang.String r1 = r3.verboseSize
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.verboseSizeLabel
            java.lang.String r1 = r3.verboseSizeLabel
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.Long r0 = r2.packageSize
            java.lang.Long r1 = r3.packageSize
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.Long r0 = r2.packageDiffs
            java.lang.Long r1 = r3.packageDiffs
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.Long r0 = r2.appVersionCode
            java.lang.Long r1 = r3.appVersionCode
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.appVersion
            java.lang.String r1 = r3.appVersion
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.lastUpdated
            java.lang.String r1 = r3.lastUpdated
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.util.List<java.lang.String> r0 = r2.permissions
            java.util.List<java.lang.String> r1 = r3.permissions
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.util.List<java.lang.String> r0 = r2.permissionDescriptions
            java.util.List<java.lang.String> r1 = r3.permissionDescriptions
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.changeLog
            java.lang.String r1 = r3.changeLog
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.Boolean r0 = r2.haveAdNetwork
            java.lang.Boolean r1 = r3.haveAdNetwork
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.contentRating
            java.lang.String r1 = r3.contentRating
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.contentRatingImage
            java.lang.String r1 = r3.contentRatingImage
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.shamedId
            java.lang.String r1 = r3.shamedId
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.shamedURL
            java.lang.String r1 = r3.shamedURL
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.shamedIconURL
            java.lang.String r1 = r3.shamedIconURL
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x00f9
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x00f9
            goto L_0x00fb
        L_0x00f9:
            r3 = 0
            return r3
        L_0x00fb:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem.equals(java.lang.Object):boolean");
    }

    public final String getAppName() {
        return this.appName;
    }

    public final String getAppSize(Context context) {
        j.b(context, "context");
        Long l2 = this.packageSize;
        if (l2 != null) {
            String a2 = c.c.a.c.b.f.a(l2.longValue(), context);
            if (a2 != null) {
                return a2;
            }
        }
        return "";
    }

    public final String getAppVersion() {
        return this.appVersion;
    }

    public final Long getAppVersionCode() {
        return this.appVersionCode;
    }

    public final String getCategoryName() {
        return this.categoryName;
    }

    public final String getCategorySlug() {
        return this.categorySlug;
    }

    public final String getChangeLog() {
        return this.changeLog;
    }

    public final String getContentRating() {
        return this.contentRating;
    }

    public final String getContentRatingImage() {
        return this.contentRatingImage;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Boolean getHaveAdNetwork() {
        return this.haveAdNetwork;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final String getInstallCountRange() {
        return this.installCountRange;
    }

    public final String getLastUpdated() {
        return this.lastUpdated;
    }

    public final Long getPackageDiffs() {
        return this.packageDiffs;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final Long getPackageSize() {
        return this.packageSize;
    }

    public final List<String> getPermissionDescriptions() {
        return this.permissionDescriptions;
    }

    public final List<String> getPermissions() {
        return this.permissions;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getShamedIconURL() {
        return this.shamedIconURL;
    }

    public final String getShamedId() {
        return this.shamedId;
    }

    public final String getShamedURL() {
        return this.shamedURL;
    }

    public final Spanned getSpannedDescription() {
        return i.a(this.description);
    }

    public final String getVerboseSize() {
        return this.verboseSize;
    }

    public final String getVerboseSizeLabel() {
        return this.verboseSizeLabel;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.packageName;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.iconUrl;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.appName;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.description;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.categoryName;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.categorySlug;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.installCountRange;
        int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.verboseSize;
        int hashCode8 = (hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.verboseSizeLabel;
        int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        Long l2 = this.packageSize;
        int hashCode10 = (hashCode9 + (l2 != null ? l2.hashCode() : 0)) * 31;
        Long l3 = this.packageDiffs;
        int hashCode11 = (hashCode10 + (l3 != null ? l3.hashCode() : 0)) * 31;
        Long l4 = this.appVersionCode;
        int hashCode12 = (hashCode11 + (l4 != null ? l4.hashCode() : 0)) * 31;
        String str10 = this.appVersion;
        int hashCode13 = (hashCode12 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.lastUpdated;
        int hashCode14 = (hashCode13 + (str11 != null ? str11.hashCode() : 0)) * 31;
        List<String> list = this.permissions;
        int hashCode15 = (hashCode14 + (list != null ? list.hashCode() : 0)) * 31;
        List<String> list2 = this.permissionDescriptions;
        int hashCode16 = (hashCode15 + (list2 != null ? list2.hashCode() : 0)) * 31;
        String str12 = this.changeLog;
        int hashCode17 = (hashCode16 + (str12 != null ? str12.hashCode() : 0)) * 31;
        Boolean bool = this.haveAdNetwork;
        int hashCode18 = (hashCode17 + (bool != null ? bool.hashCode() : 0)) * 31;
        String str13 = this.contentRating;
        int hashCode19 = (hashCode18 + (str13 != null ? str13.hashCode() : 0)) * 31;
        String str14 = this.contentRatingImage;
        int hashCode20 = (hashCode19 + (str14 != null ? str14.hashCode() : 0)) * 31;
        String str15 = this.shamedId;
        int hashCode21 = (hashCode20 + (str15 != null ? str15.hashCode() : 0)) * 31;
        String str16 = this.shamedURL;
        int hashCode22 = (hashCode21 + (str16 != null ? str16.hashCode() : 0)) * 31;
        String str17 = this.shamedIconURL;
        int hashCode23 = (hashCode22 + (str17 != null ? str17.hashCode() : 0)) * 31;
        String str18 = this.referrer;
        if (str18 != null) {
            i2 = str18.hashCode();
        }
        return hashCode23 + i2;
    }

    public String toString() {
        return "AppMoreDescriptionItem(packageName=" + this.packageName + ", iconUrl=" + this.iconUrl + ", appName=" + this.appName + ", description=" + this.description + ", categoryName=" + this.categoryName + ", categorySlug=" + this.categorySlug + ", installCountRange=" + this.installCountRange + ", verboseSize=" + this.verboseSize + ", verboseSizeLabel=" + this.verboseSizeLabel + ", packageSize=" + this.packageSize + ", packageDiffs=" + this.packageDiffs + ", appVersionCode=" + this.appVersionCode + ", appVersion=" + this.appVersion + ", lastUpdated=" + this.lastUpdated + ", permissions=" + this.permissions + ", permissionDescriptions=" + this.permissionDescriptions + ", changeLog=" + this.changeLog + ", haveAdNetwork=" + this.haveAdNetwork + ", contentRating=" + this.contentRating + ", contentRatingImage=" + this.contentRatingImage + ", shamedId=" + this.shamedId + ", shamedURL=" + this.shamedURL + ", shamedIconURL=" + this.shamedIconURL + ", referrer=" + this.referrer + ")";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        j.b(parcel, "parcel");
        parcel.writeString(this.packageName);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.appName);
        parcel.writeString(this.description);
        parcel.writeString(this.categoryName);
        parcel.writeString(this.categorySlug);
        parcel.writeString(this.installCountRange);
        parcel.writeString(this.verboseSize);
        parcel.writeString(this.verboseSizeLabel);
        parcel.writeValue(this.packageDiffs);
        parcel.writeValue(this.packageDiffs);
        parcel.writeValue(this.appVersionCode);
        parcel.writeString(this.appVersion);
        parcel.writeString(this.lastUpdated);
        parcel.writeStringList(this.permissions);
        parcel.writeStringList(this.permissionDescriptions);
        parcel.writeString(this.changeLog);
        parcel.writeValue(this.haveAdNetwork);
        parcel.writeString(this.contentRating);
        parcel.writeString(this.contentRatingImage);
        parcel.writeString(this.shamedId);
        parcel.writeString(this.shamedURL);
        parcel.writeString(this.shamedIconURL);
        parcel.writeString(this.referrer);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public AppMoreDescriptionItem(android.os.Parcel r28) {
        /*
            r27 = this;
            r0 = r28
            java.lang.String r1 = "parcel"
            h.f.b.j.b(r0, r1)
            java.lang.String r3 = r28.readString()
            if (r3 == 0) goto L_0x00d2
            java.lang.String r4 = r28.readString()
            if (r4 == 0) goto L_0x00cd
            java.lang.String r5 = r28.readString()
            if (r5 == 0) goto L_0x00c8
            java.lang.String r6 = r28.readString()
            if (r6 == 0) goto L_0x00c3
            java.lang.String r7 = r28.readString()
            if (r7 == 0) goto L_0x00be
            java.lang.String r8 = r28.readString()
            if (r8 == 0) goto L_0x00b9
            java.lang.String r9 = r28.readString()
            if (r9 == 0) goto L_0x00b4
            java.lang.String r10 = r28.readString()
            java.lang.String r11 = r28.readString()
            java.lang.Class r2 = java.lang.Long.TYPE
            java.lang.ClassLoader r2 = r2.getClassLoader()
            java.lang.Object r2 = r0.readValue(r2)
            boolean r12 = r2 instanceof java.lang.Long
            if (r12 != 0) goto L_0x0048
            r2 = 0
        L_0x0048:
            r12 = r2
            java.lang.Long r12 = (java.lang.Long) r12
            java.lang.Class r2 = java.lang.Long.TYPE
            java.lang.ClassLoader r2 = r2.getClassLoader()
            java.lang.Object r2 = r0.readValue(r2)
            boolean r13 = r2 instanceof java.lang.Long
            if (r13 != 0) goto L_0x005a
            r2 = 0
        L_0x005a:
            r13 = r2
            java.lang.Long r13 = (java.lang.Long) r13
            java.lang.Class r2 = java.lang.Long.TYPE
            java.lang.ClassLoader r2 = r2.getClassLoader()
            java.lang.Object r2 = r0.readValue(r2)
            boolean r14 = r2 instanceof java.lang.Long
            if (r14 != 0) goto L_0x006c
            r2 = 0
        L_0x006c:
            r14 = r2
            java.lang.Long r14 = (java.lang.Long) r14
            java.lang.String r15 = r28.readString()
            java.lang.String r16 = r28.readString()
            java.util.ArrayList r17 = r28.createStringArrayList()
            java.util.ArrayList r18 = r28.createStringArrayList()
            java.lang.String r19 = r28.readString()
            java.lang.Class r2 = java.lang.Boolean.TYPE
            java.lang.ClassLoader r2 = r2.getClassLoader()
            java.lang.Object r2 = r0.readValue(r2)
            boolean r1 = r2 instanceof java.lang.Boolean
            if (r1 != 0) goto L_0x0092
            r2 = 0
        L_0x0092:
            r20 = r2
            java.lang.Boolean r20 = (java.lang.Boolean) r20
            java.lang.String r21 = r28.readString()
            java.lang.String r22 = r28.readString()
            java.lang.String r23 = r28.readString()
            java.lang.String r24 = r28.readString()
            java.lang.String r25 = r28.readString()
            java.lang.String r26 = r28.readString()
            r2 = r27
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26)
            return
        L_0x00b4:
            h.f.b.j.a()
            r0 = 0
            throw r0
        L_0x00b9:
            r0 = 0
            h.f.b.j.a()
            throw r0
        L_0x00be:
            r0 = 0
            h.f.b.j.a()
            throw r0
        L_0x00c3:
            r0 = 0
            h.f.b.j.a()
            throw r0
        L_0x00c8:
            r0 = 0
            h.f.b.j.a()
            throw r0
        L_0x00cd:
            r0 = 0
            h.f.b.j.a()
            throw r0
        L_0x00d2:
            r0 = 0
            h.f.b.j.a()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem.<init>(android.os.Parcel):void");
    }
}
