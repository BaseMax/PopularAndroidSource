package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Arrays;

public final class LocationAvailability extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationAvailability> CREATOR = new am();
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    private int f3628a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    private int f3629b;
    private long c;
    private int d;
    private zzae[] e;

    LocationAvailability(int i, int i2, int i3, long j, zzae[] zzaeArr) {
        this.d = i;
        this.f3628a = i2;
        this.f3629b = i3;
        this.c = j;
        this.e = zzaeArr;
    }

    public static LocationAvailability extractLocationAvailability(Intent intent) {
        if (!hasLocationAvailability(intent)) {
            return null;
        }
        return (LocationAvailability) intent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
    }

    public static boolean hasLocationAvailability(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            LocationAvailability locationAvailability = (LocationAvailability) obj;
            return this.f3628a == locationAvailability.f3628a && this.f3629b == locationAvailability.f3629b && this.c == locationAvailability.c && this.d == locationAvailability.d && Arrays.equals(this.e, locationAvailability.e);
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.d), Integer.valueOf(this.f3628a), Integer.valueOf(this.f3629b), Long.valueOf(this.c), this.e});
    }

    public final boolean isLocationAvailable() {
        return this.d < 1000;
    }

    public final String toString() {
        boolean isLocationAvailable = isLocationAvailable();
        StringBuilder sb = new StringBuilder(48);
        sb.append("LocationAvailability[isLocationAvailable: ");
        sb.append(isLocationAvailable);
        sb.append("]");
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3628a);
        el.zzc(parcel, 2, this.f3629b);
        el.zza(parcel, 3, this.c);
        el.zzc(parcel, 4, this.d);
        el.zza(parcel, 5, (T[]) this.e, i, false);
        el.zzai(parcel, zze);
    }
}
