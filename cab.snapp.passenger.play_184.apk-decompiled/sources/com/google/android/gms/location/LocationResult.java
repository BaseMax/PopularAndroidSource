package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.el;
import com.google.android.gms.internal.zzbfm;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class LocationResult extends zzbfm implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationResult> CREATOR = new ao();

    /* renamed from: a  reason: collision with root package name */
    static final List<Location> f3632a = Collections.emptyList();

    /* renamed from: b  reason: collision with root package name */
    private final List<Location> f3633b;

    LocationResult(List<Location> list) {
        this.f3633b = list;
    }

    public static LocationResult create(List<Location> list) {
        if (list == null) {
            list = f3632a;
        }
        return new LocationResult(list);
    }

    public static LocationResult extractResult(Intent intent) {
        if (!hasResult(intent)) {
            return null;
        }
        return (LocationResult) intent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
    }

    public static boolean hasResult(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LocationResult)) {
            return false;
        }
        LocationResult locationResult = (LocationResult) obj;
        if (locationResult.f3633b.size() != this.f3633b.size()) {
            return false;
        }
        Iterator<Location> it = this.f3633b.iterator();
        for (Location time : locationResult.f3633b) {
            if (it.next().getTime() != time.getTime()) {
                return false;
            }
        }
        return true;
    }

    public final Location getLastLocation() {
        int size = this.f3633b.size();
        if (size == 0) {
            return null;
        }
        return this.f3633b.get(size - 1);
    }

    public final List<Location> getLocations() {
        return this.f3633b;
    }

    public final int hashCode() {
        int i = 17;
        for (Location time : this.f3633b) {
            long time2 = time.getTime();
            i = (i * 31) + ((int) (time2 ^ (time2 >>> 32)));
        }
        return i;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f3633b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
        sb.append("LocationResult[locations: ");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, getLocations(), false);
        el.zzai(parcel, zze);
    }
}
