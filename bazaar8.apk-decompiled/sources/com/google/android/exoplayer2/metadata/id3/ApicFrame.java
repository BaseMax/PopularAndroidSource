package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import java.util.Arrays;

public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new b();

    /* renamed from: b  reason: collision with root package name */
    public final String f12609b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12610c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12611d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f12612e;

    public ApicFrame(String str, String str2, int i2, byte[] bArr) {
        super("APIC");
        this.f12609b = str;
        this.f12610c = str2;
        this.f12611d = i2;
        this.f12612e = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ApicFrame.class != obj.getClass()) {
            return false;
        }
        ApicFrame apicFrame = (ApicFrame) obj;
        if (this.f12611d != apicFrame.f12611d || !I.a((Object) this.f12609b, (Object) apicFrame.f12609b) || !I.a((Object) this.f12610c, (Object) apicFrame.f12610c) || !Arrays.equals(this.f12612e, apicFrame.f12612e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i2 = (527 + this.f12611d) * 31;
        String str = this.f12609b;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f12610c;
        if (str2 != null) {
            i3 = str2.hashCode();
        }
        return ((hashCode + i3) * 31) + Arrays.hashCode(this.f12612e);
    }

    public String toString() {
        return this.f12632a + ": mimeType=" + this.f12609b + ", description=" + this.f12610c;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12609b);
        parcel.writeString(this.f12610c);
        parcel.writeInt(this.f12611d);
        parcel.writeByteArray(this.f12612e);
    }

    public ApicFrame(Parcel parcel) {
        super("APIC");
        String readString = parcel.readString();
        I.a(readString);
        this.f12609b = readString;
        String readString2 = parcel.readString();
        I.a(readString2);
        this.f12610c = readString2;
        this.f12611d = parcel.readInt();
        byte[] createByteArray = parcel.createByteArray();
        I.a(createByteArray);
        this.f12612e = createByteArray;
    }
}
