package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import java.util.Arrays;

public final class GeobFrame extends Id3Frame {
    public static final Parcelable.Creator<GeobFrame> CREATOR = new g();

    /* renamed from: b  reason: collision with root package name */
    public final String f12628b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12629c;

    /* renamed from: d  reason: collision with root package name */
    public final String f12630d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f12631e;

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f12628b = str;
        this.f12629c = str2;
        this.f12630d = str3;
        this.f12631e = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || GeobFrame.class != obj.getClass()) {
            return false;
        }
        GeobFrame geobFrame = (GeobFrame) obj;
        if (!I.a((Object) this.f12628b, (Object) geobFrame.f12628b) || !I.a((Object) this.f12629c, (Object) geobFrame.f12629c) || !I.a((Object) this.f12630d, (Object) geobFrame.f12630d) || !Arrays.equals(this.f12631e, geobFrame.f12631e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f12628b;
        int i2 = 0;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f12629c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f12630d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return ((hashCode2 + i2) * 31) + Arrays.hashCode(this.f12631e);
    }

    public String toString() {
        return this.f12632a + ": mimeType=" + this.f12628b + ", filename=" + this.f12629c + ", description=" + this.f12630d;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12628b);
        parcel.writeString(this.f12629c);
        parcel.writeString(this.f12630d);
        parcel.writeByteArray(this.f12631e);
    }

    public GeobFrame(Parcel parcel) {
        super("GEOB");
        String readString = parcel.readString();
        I.a(readString);
        this.f12628b = readString;
        String readString2 = parcel.readString();
        I.a(readString2);
        this.f12629c = readString2;
        String readString3 = parcel.readString();
        I.a(readString3);
        this.f12630d = readString3;
        byte[] createByteArray = parcel.createByteArray();
        I.a(createByteArray);
        this.f12631e = createByteArray;
    }
}
