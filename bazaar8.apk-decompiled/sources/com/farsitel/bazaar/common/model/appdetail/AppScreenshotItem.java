package com.farsitel.bazaar.common.model.appdetail;

import android.os.Parcel;
import android.os.Parcelable;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import h.f.b.f;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class AppScreenshotItem extends EntityScreenshotItem {
    public static final CREATOR CREATOR = new CREATOR(null);
    public final boolean isImage;
    public final String mainUrl;
    public final String thumbnailUrl;

    /* compiled from: ViewHolderItem.kt */
    public static final class CREATOR implements Parcelable.Creator<AppScreenshotItem> {
        public CREATOR() {
        }

        public /* synthetic */ CREATOR(f fVar) {
            this();
        }

        public AppScreenshotItem createFromParcel(Parcel parcel) {
            j.b(parcel, "parcel");
            return new AppScreenshotItem(parcel);
        }

        public AppScreenshotItem[] newArray(int i2) {
            return new AppScreenshotItem[i2];
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppScreenshotItem(String str, String str2, boolean z) {
        super(str, str2, z);
        j.b(str, "mainUrl");
        j.b(str2, "thumbnailUrl");
        this.mainUrl = str;
        this.thumbnailUrl = str2;
        this.isImage = z;
    }

    public static /* synthetic */ AppScreenshotItem copy$default(AppScreenshotItem appScreenshotItem, String str, String str2, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = appScreenshotItem.getMainUrl();
        }
        if ((i2 & 2) != 0) {
            str2 = appScreenshotItem.getThumbnailUrl();
        }
        if ((i2 & 4) != 0) {
            z = appScreenshotItem.isImage();
        }
        return appScreenshotItem.copy(str, str2, z);
    }

    public final String component1() {
        return getMainUrl();
    }

    public final String component2() {
        return getThumbnailUrl();
    }

    public final boolean component3() {
        return isImage();
    }

    public final AppScreenshotItem copy(String str, String str2, boolean z) {
        j.b(str, "mainUrl");
        j.b(str2, "thumbnailUrl");
        return new AppScreenshotItem(str, str2, z);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AppScreenshotItem) {
                AppScreenshotItem appScreenshotItem = (AppScreenshotItem) obj;
                if (j.a((Object) getMainUrl(), (Object) appScreenshotItem.getMainUrl()) && j.a((Object) getThumbnailUrl(), (Object) appScreenshotItem.getThumbnailUrl())) {
                    if (isImage() == appScreenshotItem.isImage()) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public String getMainUrl() {
        return this.mainUrl;
    }

    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public int getViewType() {
        return AppDetailViewItemType.SCREEN_SHOT_ITEM.ordinal();
    }

    public int hashCode() {
        String mainUrl2 = getMainUrl();
        int i2 = 0;
        int hashCode = (mainUrl2 != null ? mainUrl2.hashCode() : 0) * 31;
        String thumbnailUrl2 = getThumbnailUrl();
        if (thumbnailUrl2 != null) {
            i2 = thumbnailUrl2.hashCode();
        }
        int i3 = (hashCode + i2) * 31;
        boolean isImage2 = isImage();
        if (isImage2) {
            isImage2 = true;
        }
        return i3 + (isImage2 ? 1 : 0);
    }

    public boolean isImage() {
        return this.isImage;
    }

    public String toString() {
        return "AppScreenshotItem(mainUrl=" + getMainUrl() + ", thumbnailUrl=" + getThumbnailUrl() + ", isImage=" + isImage() + ")";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        j.b(parcel, "parcel");
        parcel.writeString(getMainUrl());
        parcel.writeString(getThumbnailUrl());
        parcel.writeByte(isImage() ? (byte) 1 : 0);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public AppScreenshotItem(android.os.Parcel r5) {
        /*
            r4 = this;
            java.lang.String r0 = "parcel"
            h.f.b.j.b(r5, r0)
            java.lang.String r0 = r5.readString()
            r1 = 0
            if (r0 == 0) goto L_0x0023
            java.lang.String r2 = r5.readString()
            if (r2 == 0) goto L_0x001f
            byte r5 = r5.readByte()
            r1 = 0
            byte r3 = (byte) r1
            if (r5 == r3) goto L_0x001b
            r1 = 1
        L_0x001b:
            r4.<init>(r0, r2, r1)
            return
        L_0x001f:
            h.f.b.j.a()
            throw r1
        L_0x0023:
            h.f.b.j.a()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem.<init>(android.os.Parcel):void");
    }
}
