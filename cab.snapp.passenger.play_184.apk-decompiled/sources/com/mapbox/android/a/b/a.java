package com.mapbox.android.a.b;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import com.google.firebase.analytics.FirebaseAnalytics;

class a implements e<LocationListener> {

    /* renamed from: a  reason: collision with root package name */
    final LocationManager f4882a;

    /* renamed from: b  reason: collision with root package name */
    String f4883b = "passive";

    /* renamed from: com.mapbox.android.a.b.a$a  reason: collision with other inner class name */
    static final class C0093a implements LocationListener {

        /* renamed from: a  reason: collision with root package name */
        private final d<i> f4884a;

        public final void onProviderEnabled(String str) {
        }

        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }

        C0093a(d<i> dVar) {
            this.f4884a = dVar;
        }

        public final void onLocationChanged(Location location) {
            this.f4884a.onSuccess(i.create(location));
        }

        public final void onProviderDisabled(String str) {
            this.f4884a.onFailure(new Exception("Current provider disabled"));
        }
    }

    private static int c(int i) {
        return (i == 0 || i == 1) ? 1 : 2;
    }

    private static int d(int i) {
        if (i != 0) {
            return i != 1 ? 1 : 2;
        }
        return 3;
    }

    a(Context context) {
        this.f4882a = (LocationManager) context.getSystemService(FirebaseAnalytics.b.LOCATION);
    }

    public LocationListener createListener(d<i> dVar) {
        return new C0093a(dVar);
    }

    public void getLastLocation(d<i> dVar) throws SecurityException {
        Location a2 = a(this.f4883b);
        if (a2 != null) {
            dVar.onSuccess(i.create(a2));
            return;
        }
        for (String a3 : this.f4882a.getAllProviders()) {
            Location a4 = a(a3);
            if (a4 != null) {
                dVar.onSuccess(i.create(a4));
                return;
            }
        }
        dVar.onFailure(new Exception("Last location unavailable"));
    }

    /* access modifiers changed from: package-private */
    public final Location a(String str) throws SecurityException {
        try {
            return this.f4882a.getLastKnownLocation(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public void requestLocationUpdates(h hVar, LocationListener locationListener, Looper looper) throws SecurityException {
        this.f4883b = a(hVar.getPriority());
        this.f4882a.requestLocationUpdates(this.f4883b, hVar.getInterval(), hVar.getDisplacemnt(), locationListener, looper);
    }

    public void requestLocationUpdates(h hVar, PendingIntent pendingIntent) throws SecurityException {
        this.f4883b = a(hVar.getPriority());
        this.f4882a.requestLocationUpdates(this.f4883b, hVar.getInterval(), hVar.getDisplacemnt(), pendingIntent);
    }

    public void removeLocationUpdates(LocationListener locationListener) {
        if (locationListener != null) {
            this.f4882a.removeUpdates(locationListener);
        }
    }

    public void removeLocationUpdates(PendingIntent pendingIntent) {
        if (pendingIntent != null) {
            this.f4882a.removeUpdates(pendingIntent);
        }
    }

    private String a(int i) {
        String bestProvider = i != 3 ? this.f4882a.getBestProvider(b(i), true) : null;
        return bestProvider != null ? bestProvider : "passive";
    }

    private static Criteria b(int i) {
        Criteria criteria = new Criteria();
        criteria.setAccuracy(c(i));
        criteria.setCostAllowed(true);
        criteria.setPowerRequirement(d(i));
        return criteria;
    }
}
