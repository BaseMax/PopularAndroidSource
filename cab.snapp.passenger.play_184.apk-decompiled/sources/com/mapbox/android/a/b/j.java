package com.mapbox.android.a.b;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.Looper;

final class j extends a {

    static final class a implements LocationListener {

        /* renamed from: a  reason: collision with root package name */
        private final d<i> f4895a;

        /* renamed from: b  reason: collision with root package name */
        private Location f4896b;

        public final void onProviderDisabled(String str) {
        }

        public final void onProviderEnabled(String str) {
        }

        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }

        a(d<i> dVar) {
            this.f4895a = dVar;
        }

        public final void onLocationChanged(Location location) {
            if (k.a(location, this.f4896b)) {
                this.f4896b = location;
            }
            d<i> dVar = this.f4895a;
            if (dVar != null) {
                dVar.onSuccess(i.create(this.f4896b));
            }
        }
    }

    j(Context context) {
        super(context);
    }

    public final LocationListener createListener(d<i> dVar) {
        return new a(dVar);
    }

    public final void requestLocationUpdates(h hVar, LocationListener locationListener, Looper looper) throws SecurityException {
        super.requestLocationUpdates(hVar, locationListener, looper);
        if (a(hVar.getPriority())) {
            try {
                this.f4882a.requestLocationUpdates("network", hVar.getInterval(), hVar.getDisplacemnt(), locationListener, looper);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
        }
    }

    public final void requestLocationUpdates(h hVar, PendingIntent pendingIntent) throws SecurityException {
        super.requestLocationUpdates(hVar, pendingIntent);
        if (a(hVar.getPriority())) {
            try {
                this.f4882a.requestLocationUpdates("network", hVar.getInterval(), hVar.getDisplacemnt(), pendingIntent);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
        }
    }

    private boolean a(int i) {
        if ((i == 0 || i == 1) && this.f4883b.equals("gps")) {
            return true;
        }
        return false;
    }

    public final void getLastLocation(d<i> dVar) throws SecurityException {
        Location location = null;
        for (String a2 : this.f4882a.getAllProviders()) {
            Location a3 = a(a2);
            if (a3 != null && k.a(a3, location)) {
                location = a3;
            }
        }
        if (location != null) {
            dVar.onSuccess(i.create(location));
        } else {
            dVar.onFailure(new Exception("Last location unavailable"));
        }
    }
}
