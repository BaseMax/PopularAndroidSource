package com.google.android.exoplayer2.scheduler;

import android.os.Parcel;
import android.os.Parcelable;

public final class Requirements implements Parcelable {
    public static final Parcelable.Creator<Requirements> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f12690a;

    public Requirements(int i2) {
        this.f12690a = (i2 & 2) != 0 ? i2 | 1 : i2;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || Requirements.class != obj.getClass()) {
            return false;
        }
        if (this.f12690a != ((Requirements) obj).f12690a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f12690a;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f12690a);
    }
}
