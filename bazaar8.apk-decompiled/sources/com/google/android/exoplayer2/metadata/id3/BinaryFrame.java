package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

public final class BinaryFrame extends Id3Frame {
    public static final Parcelable.Creator<BinaryFrame> CREATOR = new c();

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f12613b;

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.f12613b = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || BinaryFrame.class != obj.getClass()) {
            return false;
        }
        BinaryFrame binaryFrame = (BinaryFrame) obj;
        if (!this.f12632a.equals(binaryFrame.f12632a) || !Arrays.equals(this.f12613b, binaryFrame.f12613b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f12632a.hashCode()) * 31) + Arrays.hashCode(this.f12613b);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12632a);
        parcel.writeByteArray(this.f12613b);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public BinaryFrame(android.os.Parcel r2) {
        /*
            r1 = this;
            java.lang.String r0 = r2.readString()
            c.e.a.a.o.I.a(r0)
            java.lang.String r0 = (java.lang.String) r0
            r1.<init>(r0)
            byte[] r2 = r2.createByteArray()
            c.e.a.a.o.I.a(r2)
            byte[] r2 = (byte[]) r2
            r1.f12613b = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.BinaryFrame.<init>(android.os.Parcel):void");
    }
}
