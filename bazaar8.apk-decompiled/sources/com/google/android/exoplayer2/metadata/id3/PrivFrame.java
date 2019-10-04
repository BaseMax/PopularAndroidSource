package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import java.util.Arrays;

public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new k();

    /* renamed from: b  reason: collision with root package name */
    public final String f12641b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f12642c;

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.f12641b = str;
        this.f12642c = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || PrivFrame.class != obj.getClass()) {
            return false;
        }
        PrivFrame privFrame = (PrivFrame) obj;
        if (!I.a((Object) this.f12641b, (Object) privFrame.f12641b) || !Arrays.equals(this.f12642c, privFrame.f12642c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f12641b;
        return ((527 + (str != null ? str.hashCode() : 0)) * 31) + Arrays.hashCode(this.f12642c);
    }

    public String toString() {
        return this.f12632a + ": owner=" + this.f12641b;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12641b);
        parcel.writeByteArray(this.f12642c);
    }

    public PrivFrame(Parcel parcel) {
        super("PRIV");
        String readString = parcel.readString();
        I.a(readString);
        this.f12641b = readString;
        byte[] createByteArray = parcel.createByteArray();
        I.a(createByteArray);
        this.f12642c = createByteArray;
    }
}
