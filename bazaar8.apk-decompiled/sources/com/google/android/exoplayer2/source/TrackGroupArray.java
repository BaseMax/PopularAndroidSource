package com.google.android.exoplayer2.source;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

public final class TrackGroupArray implements Parcelable {
    public static final Parcelable.Creator<TrackGroupArray> CREATOR = new K();

    /* renamed from: a  reason: collision with root package name */
    public static final TrackGroupArray f12698a = new TrackGroupArray(new TrackGroup[0]);

    /* renamed from: b  reason: collision with root package name */
    public final int f12699b;

    /* renamed from: c  reason: collision with root package name */
    public final TrackGroup[] f12700c;

    /* renamed from: d  reason: collision with root package name */
    public int f12701d;

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.f12700c = trackGroupArr;
        this.f12699b = trackGroupArr.length;
    }

    public TrackGroup a(int i2) {
        return this.f12700c[i2];
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackGroupArray.class != obj.getClass()) {
            return false;
        }
        TrackGroupArray trackGroupArray = (TrackGroupArray) obj;
        if (this.f12699b != trackGroupArray.f12699b || !Arrays.equals(this.f12700c, trackGroupArray.f12700c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f12701d == 0) {
            this.f12701d = Arrays.hashCode(this.f12700c);
        }
        return this.f12701d;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f12699b);
        for (int i3 = 0; i3 < this.f12699b; i3++) {
            parcel.writeParcelable(this.f12700c[i3], 0);
        }
    }

    public int a(TrackGroup trackGroup) {
        for (int i2 = 0; i2 < this.f12699b; i2++) {
            if (this.f12700c[i2] == trackGroup) {
                return i2;
            }
        }
        return -1;
    }

    public TrackGroupArray(Parcel parcel) {
        this.f12699b = parcel.readInt();
        this.f12700c = new TrackGroup[this.f12699b];
        for (int i2 = 0; i2 < this.f12699b; i2++) {
            this.f12700c[i2] = (TrackGroup) parcel.readParcelable(TrackGroup.class.getClassLoader());
        }
    }

    public boolean a() {
        return this.f12699b == 0;
    }
}
