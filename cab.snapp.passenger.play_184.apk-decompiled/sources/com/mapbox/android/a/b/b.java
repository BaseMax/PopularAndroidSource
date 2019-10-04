package com.mapbox.android.a.b;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.c.c;
import com.google.android.gms.c.d;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.g;
import com.google.android.gms.location.i;
import java.util.Collections;
import java.util.List;

final class b implements e<g> {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.gms.location.b f4885a;

    static final class a implements c, d<Location> {

        /* renamed from: a  reason: collision with root package name */
        private final d<i> f4886a;

        a(d<i> dVar) {
            this.f4886a = dVar;
        }

        public final void onSuccess(Location location) {
            i iVar;
            d<i> dVar = this.f4886a;
            if (location != null) {
                iVar = i.create(location);
            } else {
                iVar = i.create((List<Location>) Collections.emptyList());
            }
            dVar.onSuccess(iVar);
        }

        public final void onFailure(Exception exc) {
            this.f4886a.onFailure(exc);
        }
    }

    /* renamed from: com.mapbox.android.a.b.b$b  reason: collision with other inner class name */
    static final class C0094b extends g {

        /* renamed from: a  reason: collision with root package name */
        private final d<i> f4887a;

        C0094b(d<i> dVar) {
            this.f4887a = dVar;
        }

        public final void onLocationResult(LocationResult locationResult) {
            super.onLocationResult(locationResult);
            List<Location> locations = locationResult.getLocations();
            if (!locations.isEmpty()) {
                this.f4887a.onSuccess(i.create(locations));
            } else {
                this.f4887a.onFailure(new Exception("Unavailable location"));
            }
        }
    }

    private static int a(int i) {
        if (i == 0) {
            return 100;
        }
        if (i != 1) {
            return i != 2 ? 105 : 104;
        }
        return 102;
    }

    b(Context context) {
        this.f4885a = i.getFusedLocationProviderClient(context);
    }

    public final g createListener(d<i> dVar) {
        return new C0094b(dVar);
    }

    public final void getLastLocation(d<i> dVar) throws SecurityException {
        a aVar = new a(dVar);
        this.f4885a.getLastLocation().addOnSuccessListener(aVar).addOnFailureListener(aVar);
    }

    public final void requestLocationUpdates(h hVar, g gVar, Looper looper) throws SecurityException {
        this.f4885a.requestLocationUpdates(a(hVar), gVar, looper);
    }

    public final void requestLocationUpdates(h hVar, PendingIntent pendingIntent) throws SecurityException {
        this.f4885a.requestLocationUpdates(a(hVar), pendingIntent);
    }

    public final void removeLocationUpdates(g gVar) {
        if (gVar != null) {
            this.f4885a.removeLocationUpdates(gVar);
        }
    }

    public final void removeLocationUpdates(PendingIntent pendingIntent) {
        if (pendingIntent != null) {
            this.f4885a.removeLocationUpdates(pendingIntent);
        }
    }

    private static LocationRequest a(h hVar) {
        LocationRequest locationRequest = new LocationRequest();
        locationRequest.setInterval(hVar.getInterval());
        locationRequest.setFastestInterval(hVar.getFastestInterval());
        locationRequest.setSmallestDisplacement(hVar.getDisplacemnt());
        locationRequest.setMaxWaitTime(hVar.getMaxWaitTime());
        locationRequest.setPriority(a(hVar.getPriority()));
        return locationRequest;
    }
}
