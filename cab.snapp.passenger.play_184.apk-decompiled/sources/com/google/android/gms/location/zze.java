package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import androidx.appcompat.widget.ActivityChooserView;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;

public final class zze extends zzbfm {
    public static final Parcelable.Creator<zze> CREATOR = new w();

    /* renamed from: a  reason: collision with root package name */
    private boolean f3659a;

    /* renamed from: b  reason: collision with root package name */
    private long f3660b;
    private float c;
    private long d;
    private int e;

    public zze() {
        this(true, 50, 0.0f, Long.MAX_VALUE, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    zze(boolean z, long j, float f, long j2, int i) {
        this.f3659a = z;
        this.f3660b = j;
        this.c = f;
        this.d = j2;
        this.e = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zze)) {
            return false;
        }
        zze zze = (zze) obj;
        return this.f3659a == zze.f3659a && this.f3660b == zze.f3660b && Float.compare(this.c, zze.c) == 0 && this.d == zze.d && this.e == zze.e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f3659a), Long.valueOf(this.f3660b), Float.valueOf(this.c), Long.valueOf(this.d), Integer.valueOf(this.e)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DeviceOrientationRequest[mShouldUseMag=");
        sb.append(this.f3659a);
        sb.append(" mMinimumSamplingPeriodMs=");
        sb.append(this.f3660b);
        sb.append(" mSmallestAngleChangeRadians=");
        sb.append(this.c);
        long j = this.d;
        if (j != Long.MAX_VALUE) {
            sb.append(" expireIn=");
            sb.append(j - SystemClock.elapsedRealtime());
            sb.append("ms");
        }
        if (this.e != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(this.e);
        }
        sb.append(']');
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zza(parcel, 1, this.f3659a);
        el.zza(parcel, 2, this.f3660b);
        el.zza(parcel, 3, this.c);
        el.zza(parcel, 4, this.d);
        el.zzc(parcel, 5, this.e);
        el.zzai(parcel, zze);
    }
}
