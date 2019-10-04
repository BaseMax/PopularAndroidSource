package com.farsitel.bazaar.common.model.appdetail;

import android.os.Parcel;
import android.os.Parcelable;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.f;
import h.f.b.j;
import java.util.List;

/* compiled from: ViewHolderItem.kt */
public final class ReviewActionItem implements RecyclerData, Parcelable {
    public static final CREATOR CREATOR = new CREATOR(null);
    public final String appName;
    public final long appVersion;
    public final String defaultSortType;
    public final int defaultSortTypeIndex;
    public final String iconUrl;
    public final String packageName;
    public final int rate1Count;
    public final int rate2Count;
    public final int rate3Count;
    public final int rate4Count;
    public final int rate5Count;
    public final List<SortTypeChoiceItem> sortTypeChoices;
    public final int viewType;

    /* compiled from: ViewHolderItem.kt */
    public static final class CREATOR implements Parcelable.Creator<ReviewActionItem> {
        public CREATOR() {
        }

        public /* synthetic */ CREATOR(f fVar) {
            this();
        }

        public ReviewActionItem createFromParcel(Parcel parcel) {
            j.b(parcel, "parcel");
            return new ReviewActionItem(parcel);
        }

        public ReviewActionItem[] newArray(int i2) {
            return new ReviewActionItem[i2];
        }
    }

    public ReviewActionItem(String str, String str2, String str3, long j2, int i2, int i3, int i4, int i5, int i6, List<SortTypeChoiceItem> list, String str4, int i7) {
        j.b(str, "packageName");
        j.b(str2, "iconUrl");
        j.b(str3, "appName");
        j.b(list, "sortTypeChoices");
        j.b(str4, "defaultSortType");
        this.packageName = str;
        this.iconUrl = str2;
        this.appName = str3;
        this.appVersion = j2;
        this.rate1Count = i2;
        this.rate2Count = i3;
        this.rate3Count = i4;
        this.rate4Count = i5;
        this.rate5Count = i6;
        this.sortTypeChoices = list;
        this.defaultSortType = str4;
        this.defaultSortTypeIndex = i7;
        this.viewType = AppDetailViewItemType.REVIEW_ACTION.ordinal();
    }

    public static /* synthetic */ ReviewActionItem copy$default(ReviewActionItem reviewActionItem, String str, String str2, String str3, long j2, int i2, int i3, int i4, int i5, int i6, List list, String str4, int i7, int i8, Object obj) {
        ReviewActionItem reviewActionItem2 = reviewActionItem;
        int i9 = i8;
        return reviewActionItem.copy((i9 & 1) != 0 ? reviewActionItem2.packageName : str, (i9 & 2) != 0 ? reviewActionItem2.iconUrl : str2, (i9 & 4) != 0 ? reviewActionItem2.appName : str3, (i9 & 8) != 0 ? reviewActionItem2.appVersion : j2, (i9 & 16) != 0 ? reviewActionItem2.rate1Count : i2, (i9 & 32) != 0 ? reviewActionItem2.rate2Count : i3, (i9 & 64) != 0 ? reviewActionItem2.rate3Count : i4, (i9 & 128) != 0 ? reviewActionItem2.rate4Count : i5, (i9 & 256) != 0 ? reviewActionItem2.rate5Count : i6, (i9 & 512) != 0 ? reviewActionItem2.sortTypeChoices : list, (i9 & 1024) != 0 ? reviewActionItem2.defaultSortType : str4, (i9 & 2048) != 0 ? reviewActionItem2.defaultSortTypeIndex : i7);
    }

    public final String component1() {
        return this.packageName;
    }

    public final List<SortTypeChoiceItem> component10() {
        return this.sortTypeChoices;
    }

    public final String component11() {
        return this.defaultSortType;
    }

    public final int component12() {
        return this.defaultSortTypeIndex;
    }

    public final String component2() {
        return this.iconUrl;
    }

    public final String component3() {
        return this.appName;
    }

    public final long component4() {
        return this.appVersion;
    }

    public final int component5() {
        return this.rate1Count;
    }

    public final int component6() {
        return this.rate2Count;
    }

    public final int component7() {
        return this.rate3Count;
    }

    public final int component8() {
        return this.rate4Count;
    }

    public final int component9() {
        return this.rate5Count;
    }

    public final ReviewActionItem copy(String str, String str2, String str3, long j2, int i2, int i3, int i4, int i5, int i6, List<SortTypeChoiceItem> list, String str4, int i7) {
        String str5 = str;
        j.b(str5, "packageName");
        String str6 = str2;
        j.b(str6, "iconUrl");
        String str7 = str3;
        j.b(str7, "appName");
        List<SortTypeChoiceItem> list2 = list;
        j.b(list2, "sortTypeChoices");
        String str8 = str4;
        j.b(str8, "defaultSortType");
        ReviewActionItem reviewActionItem = new ReviewActionItem(str5, str6, str7, j2, i2, i3, i4, i5, i6, list2, str8, i7);
        return reviewActionItem;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ReviewActionItem) {
                ReviewActionItem reviewActionItem = (ReviewActionItem) obj;
                if (j.a((Object) this.packageName, (Object) reviewActionItem.packageName) && j.a((Object) this.iconUrl, (Object) reviewActionItem.iconUrl) && j.a((Object) this.appName, (Object) reviewActionItem.appName)) {
                    if (this.appVersion == reviewActionItem.appVersion) {
                        if (this.rate1Count == reviewActionItem.rate1Count) {
                            if (this.rate2Count == reviewActionItem.rate2Count) {
                                if (this.rate3Count == reviewActionItem.rate3Count) {
                                    if (this.rate4Count == reviewActionItem.rate4Count) {
                                        if ((this.rate5Count == reviewActionItem.rate5Count) && j.a((Object) this.sortTypeChoices, (Object) reviewActionItem.sortTypeChoices) && j.a((Object) this.defaultSortType, (Object) reviewActionItem.defaultSortType)) {
                                            if (this.defaultSortTypeIndex == reviewActionItem.defaultSortTypeIndex) {
                                                return true;
                                            }
                                        }
                                    }
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

    public final String getAppName() {
        return this.appName;
    }

    public final long getAppVersion() {
        return this.appVersion;
    }

    public final String getDefaultSortType() {
        return this.defaultSortType;
    }

    public final int getDefaultSortTypeIndex() {
        return this.defaultSortTypeIndex;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final int getRate1Count() {
        return this.rate1Count;
    }

    public final int getRate2Count() {
        return this.rate2Count;
    }

    public final int getRate3Count() {
        return this.rate3Count;
    }

    public final int getRate4Count() {
        return this.rate4Count;
    }

    public final int getRate5Count() {
        return this.rate5Count;
    }

    public final List<SortTypeChoiceItem> getSortTypeChoices() {
        return this.sortTypeChoices;
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
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        long j2 = this.appVersion;
        int i3 = (((((((((((((hashCode2 + hashCode3) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.rate1Count) * 31) + this.rate2Count) * 31) + this.rate3Count) * 31) + this.rate4Count) * 31) + this.rate5Count) * 31;
        List<SortTypeChoiceItem> list = this.sortTypeChoices;
        int hashCode4 = (i3 + (list != null ? list.hashCode() : 0)) * 31;
        String str4 = this.defaultSortType;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return ((hashCode4 + i2) * 31) + this.defaultSortTypeIndex;
    }

    public String toString() {
        return "ReviewActionItem(packageName=" + this.packageName + ", iconUrl=" + this.iconUrl + ", appName=" + this.appName + ", appVersion=" + this.appVersion + ", rate1Count=" + this.rate1Count + ", rate2Count=" + this.rate2Count + ", rate3Count=" + this.rate3Count + ", rate4Count=" + this.rate4Count + ", rate5Count=" + this.rate5Count + ", sortTypeChoices=" + this.sortTypeChoices + ", defaultSortType=" + this.defaultSortType + ", defaultSortTypeIndex=" + this.defaultSortTypeIndex + ")";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        j.b(parcel, "parcel");
        parcel.writeString(this.packageName);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.appName);
        parcel.writeLong(this.appVersion);
        parcel.writeInt(this.rate1Count);
        parcel.writeInt(this.rate2Count);
        parcel.writeInt(this.rate3Count);
        parcel.writeInt(this.rate4Count);
        parcel.writeInt(this.rate5Count);
        parcel.writeTypedList(this.sortTypeChoices);
        parcel.writeString(this.defaultSortType);
        parcel.writeInt(this.defaultSortTypeIndex);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public ReviewActionItem(android.os.Parcel r17) {
        /*
            r16 = this;
            r0 = r17
            java.lang.String r1 = "parcel"
            h.f.b.j.b(r0, r1)
            java.lang.String r3 = r17.readString()
            r1 = 0
            if (r3 == 0) goto L_0x005a
            java.lang.String r4 = r17.readString()
            if (r4 == 0) goto L_0x0056
            java.lang.String r5 = r17.readString()
            if (r5 == 0) goto L_0x0052
            long r6 = r17.readLong()
            int r8 = r17.readInt()
            int r9 = r17.readInt()
            int r10 = r17.readInt()
            int r11 = r17.readInt()
            int r12 = r17.readInt()
            com.farsitel.bazaar.common.model.appdetail.SortTypeChoiceItem$CREATOR r2 = com.farsitel.bazaar.common.model.appdetail.SortTypeChoiceItem.CREATOR
            java.util.ArrayList r13 = r0.createTypedArrayList(r2)
            if (r13 == 0) goto L_0x004e
            java.lang.String r14 = r17.readString()
            if (r14 == 0) goto L_0x004a
            int r15 = r17.readInt()
            r2 = r16
            r2.<init>(r3, r4, r5, r6, r8, r9, r10, r11, r12, r13, r14, r15)
            return
        L_0x004a:
            h.f.b.j.a()
            throw r1
        L_0x004e:
            h.f.b.j.a()
            throw r1
        L_0x0052:
            h.f.b.j.a()
            throw r1
        L_0x0056:
            h.f.b.j.a()
            throw r1
        L_0x005a:
            h.f.b.j.a()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.ReviewActionItem.<init>(android.os.Parcel):void");
    }
}
