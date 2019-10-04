package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.a;
import com.google.android.gms.location.g;
import com.google.android.gms.location.i;

public final class gb implements a {
    public final h<Status> flushLocations(f fVar) {
        return fVar.zze(new gg(fVar));
    }

    public final Location getLastLocation(f fVar) {
        try {
            return i.zzh(fVar).getLastLocation();
        } catch (Exception unused) {
            return null;
        }
    }

    public final LocationAvailability getLocationAvailability(f fVar) {
        try {
            return i.zzh(fVar).zzavk();
        } catch (Exception unused) {
            return null;
        }
    }

    public final h<Status> removeLocationUpdates(f fVar, PendingIntent pendingIntent) {
        return fVar.zze(new gl(fVar, pendingIntent));
    }

    public final h<Status> removeLocationUpdates(f fVar, g gVar) {
        return fVar.zze(new gd(fVar, gVar));
    }

    public final h<Status> removeLocationUpdates(f fVar, com.google.android.gms.location.h hVar) {
        return fVar.zze(new gk(fVar, hVar));
    }

    public final h<Status> requestLocationUpdates(f fVar, LocationRequest locationRequest, PendingIntent pendingIntent) {
        return fVar.zze(new gj(fVar, locationRequest, pendingIntent));
    }

    public final h<Status> requestLocationUpdates(f fVar, LocationRequest locationRequest, g gVar, Looper looper) {
        return fVar.zze(new gi(fVar, locationRequest, gVar, looper));
    }

    public final h<Status> requestLocationUpdates(f fVar, LocationRequest locationRequest, com.google.android.gms.location.h hVar) {
        ap.checkNotNull(Looper.myLooper(), "Calling thread must be a prepared Looper thread.");
        return fVar.zze(new gc(fVar, locationRequest, hVar));
    }

    public final h<Status> requestLocationUpdates(f fVar, LocationRequest locationRequest, com.google.android.gms.location.h hVar, Looper looper) {
        return fVar.zze(new gh(fVar, locationRequest, hVar, looper));
    }

    public final h<Status> setMockLocation(f fVar, Location location) {
        return fVar.zze(new gf(fVar, location));
    }

    public final h<Status> setMockMode(f fVar, boolean z) {
        return fVar.zze(new ge(fVar, z));
    }
}
