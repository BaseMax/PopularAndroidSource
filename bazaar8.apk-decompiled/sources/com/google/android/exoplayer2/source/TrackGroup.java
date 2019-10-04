package com.google.android.exoplayer2.source;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;

public final class TrackGroup implements Parcelable {
    public static final Parcelable.Creator<TrackGroup> CREATOR = new J();

    /* renamed from: a  reason: collision with root package name */
    public final int f12695a;

    /* renamed from: b  reason: collision with root package name */
    public final Format[] f12696b;

    /* renamed from: c  reason: collision with root package name */
    public int f12697c;

    public TrackGroup(Format... formatArr) {
        C0737e.b(formatArr.length > 0);
        this.f12696b = formatArr;
        this.f12695a = formatArr.length;
    }

    public Format a(int i2) {
        return this.f12696b[i2];
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackGroup.class != obj.getClass()) {
            return false;
        }
        TrackGroup trackGroup = (TrackGroup) obj;
        if (this.f12695a != trackGroup.f12695a || !Arrays.equals(this.f12696b, trackGroup.f12696b)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f12697c == 0) {
            this.f12697c = 527 + Arrays.hashCode(this.f12696b);
        }
        return this.f12697c;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f12695a);
        for (int i3 = 0; i3 < this.f12695a; i3++) {
            parcel.writeParcelable(this.f12696b[i3], 0);
        }
    }

    public int a(Format format) {
        int i2 = 0;
        while (true) {
            Format[] formatArr = this.f12696b;
            if (i2 >= formatArr.length) {
                return -1;
            }
            if (format == formatArr[i2]) {
                return i2;
            }
            i2++;
        }
    }

    public TrackGroup(Parcel parcel) {
        this.f12695a = parcel.readInt();
        this.f12696b = new Format[this.f12695a];
        for (int i2 = 0; i2 < this.f12695a; i2++) {
            this.f12696b[i2] = (Format) parcel.readParcelable(Format.class.getClassLoader());
        }
    }
}
