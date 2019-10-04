package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;

public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new i();

    /* renamed from: b  reason: collision with root package name */
    public final String f12633b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12634c;

    /* renamed from: d  reason: collision with root package name */
    public final String f12635d;

    public InternalFrame(String str, String str2, String str3) {
        super("----");
        this.f12633b = str;
        this.f12634c = str2;
        this.f12635d = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || InternalFrame.class != obj.getClass()) {
            return false;
        }
        InternalFrame internalFrame = (InternalFrame) obj;
        if (!I.a((Object) this.f12634c, (Object) internalFrame.f12634c) || !I.a((Object) this.f12633b, (Object) internalFrame.f12633b) || !I.a((Object) this.f12635d, (Object) internalFrame.f12635d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f12633b;
        int i2 = 0;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f12634c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f12635d;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return this.f12632a + ": domain=" + this.f12633b + ", description=" + this.f12634c;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12632a);
        parcel.writeString(this.f12633b);
        parcel.writeString(this.f12635d);
    }

    public InternalFrame(Parcel parcel) {
        super("----");
        String readString = parcel.readString();
        I.a(readString);
        this.f12633b = readString;
        String readString2 = parcel.readString();
        I.a(readString2);
        this.f12634c = readString2;
        String readString3 = parcel.readString();
        I.a(readString3);
        this.f12635d = readString3;
    }
}
