package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.metadata.Metadata;

public final class IcyInfo implements Metadata.Entry {
    public static final Parcelable.Creator<IcyInfo> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    public final String f12607a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12608b;

    public IcyInfo(String str, String str2) {
        this.f12607a = str;
        this.f12608b = str2;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || IcyInfo.class != obj.getClass()) {
            return false;
        }
        IcyInfo icyInfo = (IcyInfo) obj;
        if (!I.a((Object) this.f12607a, (Object) icyInfo.f12607a) || !I.a((Object) this.f12608b, (Object) icyInfo.f12608b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f12607a;
        int i2 = 0;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f12608b;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "ICY: title=\"" + this.f12607a + "\", url=\"" + this.f12608b + "\"";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12607a);
        parcel.writeString(this.f12608b);
    }

    public IcyInfo(Parcel parcel) {
        this.f12607a = parcel.readString();
        this.f12608b = parcel.readString();
    }
}
