package com.google.android.exoplayer2.offline;

import android.os.Parcel;
import android.os.Parcelable;

public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    public final int f12687a;

    /* renamed from: b  reason: collision with root package name */
    public final int f12688b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12689c;

    public StreamKey(int i2, int i3, int i4) {
        this.f12687a = i2;
        this.f12688b = i3;
        this.f12689c = i4;
    }

    /* renamed from: a */
    public int compareTo(StreamKey streamKey) {
        int i2 = this.f12687a - streamKey.f12687a;
        if (i2 != 0) {
            return i2;
        }
        int i3 = this.f12688b - streamKey.f12688b;
        return i3 == 0 ? this.f12689c - streamKey.f12689c : i3;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || StreamKey.class != obj.getClass()) {
            return false;
        }
        StreamKey streamKey = (StreamKey) obj;
        if (!(this.f12687a == streamKey.f12687a && this.f12688b == streamKey.f12688b && this.f12689c == streamKey.f12689c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.f12687a * 31) + this.f12688b) * 31) + this.f12689c;
    }

    public String toString() {
        return this.f12687a + "." + this.f12688b + "." + this.f12689c;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f12687a);
        parcel.writeInt(this.f12688b);
        parcel.writeInt(this.f12689c);
    }

    public StreamKey(Parcel parcel) {
        this.f12687a = parcel.readInt();
        this.f12688b = parcel.readInt();
        this.f12689c = parcel.readInt();
    }
}
