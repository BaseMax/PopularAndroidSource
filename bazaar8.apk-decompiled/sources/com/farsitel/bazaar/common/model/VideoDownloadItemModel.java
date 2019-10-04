package com.farsitel.bazaar.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import h.f.b.f;
import h.f.b.j;
import java.util.List;

/* compiled from: VideoDownloadQualityInfo.kt */
public final class VideoDownloadItemModel implements Parcelable {
    public static final CREATOR CREATOR = new CREATOR(null);
    public final String id;
    public final String quality;
    public final long size;
    public final List<String> url;

    /* compiled from: VideoDownloadQualityInfo.kt */
    public static final class CREATOR implements Parcelable.Creator<VideoDownloadItemModel> {
        public CREATOR() {
        }

        public /* synthetic */ CREATOR(f fVar) {
            this();
        }

        public VideoDownloadItemModel createFromParcel(Parcel parcel) {
            j.b(parcel, "parcel");
            return new VideoDownloadItemModel(parcel);
        }

        public VideoDownloadItemModel[] newArray(int i2) {
            return new VideoDownloadItemModel[i2];
        }
    }

    public VideoDownloadItemModel(String str, long j2, String str2, List<String> list) {
        j.b(str, "id");
        j.b(str2, "quality");
        j.b(list, "url");
        this.id = str;
        this.size = j2;
        this.quality = str2;
        this.url = list;
    }

    public int describeContents() {
        return 0;
    }

    public final String getId() {
        return this.id;
    }

    public final String getQuality() {
        return this.quality;
    }

    public final long getSize() {
        return this.size;
    }

    public final List<String> getUrl() {
        return this.url;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        j.b(parcel, "parcel");
        parcel.writeString(this.id);
        parcel.writeLong(this.size);
        parcel.writeString(this.quality);
        parcel.writeStringList(this.url);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public VideoDownloadItemModel(android.os.Parcel r8) {
        /*
            r7 = this;
            java.lang.String r0 = "parcel"
            h.f.b.j.b(r8, r0)
            java.lang.String r2 = r8.readString()
            r0 = 0
            if (r2 == 0) goto L_0x0029
            long r3 = r8.readLong()
            java.lang.String r5 = r8.readString()
            if (r5 == 0) goto L_0x0025
            java.util.ArrayList r6 = r8.createStringArrayList()
            if (r6 == 0) goto L_0x0021
            r1 = r7
            r1.<init>(r2, r3, r5, r6)
            return
        L_0x0021:
            h.f.b.j.a()
            throw r0
        L_0x0025:
            h.f.b.j.a()
            throw r0
        L_0x0029:
            h.f.b.j.a()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.VideoDownloadItemModel.<init>(android.os.Parcel):void");
    }
}
