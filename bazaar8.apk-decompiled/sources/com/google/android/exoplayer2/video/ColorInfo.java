package com.google.android.exoplayer2.video;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import java.util.Arrays;

public final class ColorInfo implements Parcelable {
    public static final Parcelable.Creator<ColorInfo> CREATOR = new i();

    /* renamed from: a  reason: collision with root package name */
    public final int f12911a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12912b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12913c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f12914d;

    /* renamed from: e  reason: collision with root package name */
    public int f12915e;

    public ColorInfo(int i2, int i3, int i4, byte[] bArr) {
        this.f12911a = i2;
        this.f12912b = i3;
        this.f12913c = i4;
        this.f12914d = bArr;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ColorInfo.class != obj.getClass()) {
            return false;
        }
        ColorInfo colorInfo = (ColorInfo) obj;
        if (!(this.f12911a == colorInfo.f12911a && this.f12912b == colorInfo.f12912b && this.f12913c == colorInfo.f12913c && Arrays.equals(this.f12914d, colorInfo.f12914d))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f12915e == 0) {
            this.f12915e = ((((((527 + this.f12911a) * 31) + this.f12912b) * 31) + this.f12913c) * 31) + Arrays.hashCode(this.f12914d);
        }
        return this.f12915e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ColorInfo(");
        sb.append(this.f12911a);
        sb.append(", ");
        sb.append(this.f12912b);
        sb.append(", ");
        sb.append(this.f12913c);
        sb.append(", ");
        sb.append(this.f12914d != null);
        sb.append(")");
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f12911a);
        parcel.writeInt(this.f12912b);
        parcel.writeInt(this.f12913c);
        I.a(parcel, this.f12914d != null);
        byte[] bArr = this.f12914d;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }

    public ColorInfo(Parcel parcel) {
        this.f12911a = parcel.readInt();
        this.f12912b = parcel.readInt();
        this.f12913c = parcel.readInt();
        this.f12914d = I.a(parcel) ? parcel.createByteArray() : null;
    }
}
