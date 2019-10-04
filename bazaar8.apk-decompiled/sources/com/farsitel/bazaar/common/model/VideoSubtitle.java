package com.farsitel.bazaar.common.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: VideoDownloadQualityInfo.kt */
public final class VideoSubtitle implements Serializable, Parcelable {
    public static final CREATOR CREATOR = new CREATOR(null);
    public final String name;
    public final Uri uri;
    public final String url;

    /* compiled from: VideoDownloadQualityInfo.kt */
    public static final class CREATOR implements Parcelable.Creator<VideoSubtitle> {
        public CREATOR() {
        }

        public /* synthetic */ CREATOR(f fVar) {
            this();
        }

        public VideoSubtitle createFromParcel(Parcel parcel) {
            j.b(parcel, "parcel");
            return new VideoSubtitle(parcel);
        }

        public VideoSubtitle[] newArray(int i2) {
            return new VideoSubtitle[i2];
        }
    }

    public VideoSubtitle(String str, String str2, Uri uri2) {
        this.name = str;
        this.url = str2;
        this.uri = uri2;
    }

    public int describeContents() {
        return 0;
    }

    public final Uri getGetSubtitleUri() {
        Uri uri2 = this.uri;
        return uri2 != null ? uri2 : Uri.parse(this.url);
    }

    public final String getName() {
        return this.name;
    }

    public final Uri getUri() {
        return this.uri;
    }

    public final String getUrl() {
        return this.url;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        j.b(parcel, "parcel");
        parcel.writeString(this.name);
        parcel.writeString(this.url);
        parcel.writeParcelable(this.uri, i2);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ VideoSubtitle(String str, String str2, Uri uri2, int i2, f fVar) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : uri2);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public VideoSubtitle(android.os.Parcel r4) {
        /*
            r3 = this;
            java.lang.String r0 = "parcel"
            h.f.b.j.b(r4, r0)
            java.lang.String r0 = r4.readString()
            if (r0 == 0) goto L_0x001f
            java.lang.String r1 = r4.readString()
            java.lang.Class<android.net.Uri> r2 = android.net.Uri.class
            java.lang.ClassLoader r2 = r2.getClassLoader()
            android.os.Parcelable r4 = r4.readParcelable(r2)
            android.net.Uri r4 = (android.net.Uri) r4
            r3.<init>(r0, r1, r4)
            return
        L_0x001f:
            h.f.b.j.a()
            r4 = 0
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.VideoSubtitle.<init>(android.os.Parcel):void");
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public VideoSubtitle(String str, String str2) {
        this(str, str2, null);
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str2, "url");
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public VideoSubtitle(String str, Uri uri2) {
        this(str, null, uri2);
        j.b(str, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(uri2, "uri");
    }
}
