package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final String f12681a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12682b;

    /* renamed from: c  reason: collision with root package name */
    public final Uri f12683c;

    /* renamed from: d  reason: collision with root package name */
    public final List<StreamKey> f12684d;

    /* renamed from: e  reason: collision with root package name */
    public final String f12685e;

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f12686f;

    public static class UnsupportedRequestException extends IOException {
    }

    public DownloadRequest(Parcel parcel) {
        String readString = parcel.readString();
        I.a(readString);
        this.f12681a = readString;
        String readString2 = parcel.readString();
        I.a(readString2);
        this.f12682b = readString2;
        String readString3 = parcel.readString();
        I.a(readString3);
        this.f12683c = Uri.parse(readString3);
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.f12684d = Collections.unmodifiableList(arrayList);
        this.f12685e = parcel.readString();
        this.f12686f = new byte[parcel.readInt()];
        parcel.readByteArray(this.f12686f);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        if (this.f12681a.equals(downloadRequest.f12681a) && this.f12682b.equals(downloadRequest.f12682b) && this.f12683c.equals(downloadRequest.f12683c) && this.f12684d.equals(downloadRequest.f12684d) && I.a((Object) this.f12685e, (Object) downloadRequest.f12685e) && Arrays.equals(this.f12686f, downloadRequest.f12686f)) {
            z = true;
        }
        return z;
    }

    public final int hashCode() {
        int hashCode = ((((((((this.f12682b.hashCode() * 31) + this.f12681a.hashCode()) * 31) + this.f12682b.hashCode()) * 31) + this.f12683c.hashCode()) * 31) + this.f12684d.hashCode()) * 31;
        String str = this.f12685e;
        return ((hashCode + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.f12686f);
    }

    public String toString() {
        return this.f12682b + ":" + this.f12681a;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12681a);
        parcel.writeString(this.f12682b);
        parcel.writeString(this.f12683c.toString());
        parcel.writeInt(this.f12684d.size());
        for (int i3 = 0; i3 < this.f12684d.size(); i3++) {
            parcel.writeParcelable(this.f12684d.get(i3), 0);
        }
        parcel.writeString(this.f12685e);
        parcel.writeInt(this.f12686f.length);
        parcel.writeByteArray(this.f12686f);
    }
}
