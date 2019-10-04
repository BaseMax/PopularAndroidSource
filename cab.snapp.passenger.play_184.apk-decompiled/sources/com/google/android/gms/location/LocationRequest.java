package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import androidx.appcompat.widget.ActivityChooserView;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;

public final class LocationRequest extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new an();
    public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;
    public static final int PRIORITY_HIGH_ACCURACY = 100;
    public static final int PRIORITY_LOW_POWER = 104;
    public static final int PRIORITY_NO_POWER = 105;

    /* renamed from: a  reason: collision with root package name */
    private int f3630a;

    /* renamed from: b  reason: collision with root package name */
    private long f3631b;
    private long c;
    private boolean d;
    private long e;
    private int f;
    private float g;
    private long h;

    public LocationRequest() {
        this.f3630a = 102;
        this.f3631b = 3600000;
        this.c = 600000;
        this.d = false;
        this.e = Long.MAX_VALUE;
        this.f = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.g = 0.0f;
        this.h = 0;
    }

    LocationRequest(int i, long j, long j2, boolean z, long j3, int i2, float f2, long j4) {
        this.f3630a = i;
        this.f3631b = j;
        this.c = j2;
        this.d = z;
        this.e = j3;
        this.f = i2;
        this.g = f2;
        this.h = j4;
    }

    private static void a(long j) {
        if (j < 0) {
            StringBuilder sb = new StringBuilder(38);
            sb.append("invalid interval: ");
            sb.append(j);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    public static LocationRequest create() {
        return new LocationRequest();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        return this.f3630a == locationRequest.f3630a && this.f3631b == locationRequest.f3631b && this.c == locationRequest.c && this.d == locationRequest.d && this.e == locationRequest.e && this.f == locationRequest.f && this.g == locationRequest.g && getMaxWaitTime() == locationRequest.getMaxWaitTime();
    }

    public final long getExpirationTime() {
        return this.e;
    }

    public final long getFastestInterval() {
        return this.c;
    }

    public final long getInterval() {
        return this.f3631b;
    }

    public final long getMaxWaitTime() {
        long j = this.h;
        long j2 = this.f3631b;
        return j < j2 ? j2 : j;
    }

    public final int getNumUpdates() {
        return this.f;
    }

    public final int getPriority() {
        return this.f3630a;
    }

    public final float getSmallestDisplacement() {
        return this.g;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3630a), Long.valueOf(this.f3631b), Float.valueOf(this.g), Long.valueOf(this.h)});
    }

    public final boolean isFastestIntervalExplicitlySet() {
        return this.d;
    }

    public final LocationRequest setExpirationDuration(long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (j > Long.MAX_VALUE - elapsedRealtime) {
            this.e = Long.MAX_VALUE;
        } else {
            this.e = j + elapsedRealtime;
        }
        if (this.e < 0) {
            this.e = 0;
        }
        return this;
    }

    public final LocationRequest setExpirationTime(long j) {
        this.e = j;
        if (this.e < 0) {
            this.e = 0;
        }
        return this;
    }

    public final LocationRequest setFastestInterval(long j) {
        a(j);
        this.d = true;
        this.c = j;
        return this;
    }

    public final LocationRequest setInterval(long j) {
        a(j);
        this.f3631b = j;
        if (!this.d) {
            double d2 = (double) this.f3631b;
            Double.isNaN(d2);
            this.c = (long) (d2 / 6.0d);
        }
        return this;
    }

    public final LocationRequest setMaxWaitTime(long j) {
        a(j);
        this.h = j;
        return this;
    }

    public final LocationRequest setNumUpdates(int i) {
        if (i > 0) {
            this.f = i;
            return this;
        }
        StringBuilder sb = new StringBuilder(31);
        sb.append("invalid numUpdates: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public final LocationRequest setPriority(int i) {
        if (i == 100 || i == 102 || i == 104 || i == 105) {
            this.f3630a = i;
            return this;
        }
        StringBuilder sb = new StringBuilder(28);
        sb.append("invalid quality: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public final LocationRequest setSmallestDisplacement(float f2) {
        if (f2 >= 0.0f) {
            this.g = f2;
            return this;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("invalid displacement: ");
        sb.append(f2);
        throw new IllegalArgumentException(sb.toString());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request[");
        int i = this.f3630a;
        sb.append(i != 100 ? i != 102 ? i != 104 ? i != 105 ? "???" : "PRIORITY_NO_POWER" : "PRIORITY_LOW_POWER" : "PRIORITY_BALANCED_POWER_ACCURACY" : "PRIORITY_HIGH_ACCURACY");
        if (this.f3630a != 105) {
            sb.append(" requested=");
            sb.append(this.f3631b);
            sb.append("ms");
        }
        sb.append(" fastest=");
        sb.append(this.c);
        sb.append("ms");
        if (this.h > this.f3631b) {
            sb.append(" maxWait=");
            sb.append(this.h);
            sb.append("ms");
        }
        if (this.g > 0.0f) {
            sb.append(" smallestDisplacement=");
            sb.append(this.g);
            sb.append("m");
        }
        long j = this.e;
        if (j != Long.MAX_VALUE) {
            sb.append(" expireIn=");
            sb.append(j - SystemClock.elapsedRealtime());
            sb.append("ms");
        }
        if (this.f != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(this.f);
        }
        sb.append(']');
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3630a);
        el.zza(parcel, 2, this.f3631b);
        el.zza(parcel, 3, this.c);
        el.zza(parcel, 4, this.d);
        el.zza(parcel, 5, this.e);
        el.zzc(parcel, 6, this.f);
        el.zza(parcel, 7, this.g);
        el.zza(parcel, 8, this.h);
        el.zzai(parcel, zze);
    }
}
