package com.webengage.sdk.android;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.f;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.c;
import com.google.android.gms.location.i;
import com.webengage.sdk.android.utils.h;
import java.util.ArrayList;
import java.util.List;

class q extends o implements f.b, f.c {

    /* renamed from: b  reason: collision with root package name */
    static f f5558b;

    /* renamed from: a  reason: collision with root package name */
    public Context f5559a;
    LocationRequest c = null;

    public class a {

        /* renamed from: a  reason: collision with root package name */
        String f5560a = null;

        /* renamed from: b  reason: collision with root package name */
        Location f5561b = null;
        int c;

        public a(String str, Location location, int i) {
            this.f5560a = str;
            this.f5561b = location;
            this.c = i;
        }

        public String a() {
            return this.f5560a;
        }

        public Location b() {
            return this.f5561b;
        }

        public int c() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                String str = this.f5560a;
                if (str != null) {
                    return str.equals(aVar.f5560a);
                }
            }
            return false;
        }

        public int hashCode() {
            String str = this.f5560a;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "GeoFenceTransition: {\n id: " + this.f5560a + ", Location: " + this.f5561b + ", Transition: " + this.c + "\n}";
        }
    }

    public q(Context context) {
        this.f5559a = context.getApplicationContext();
        f build = new f.a(this.f5559a).addConnectionCallbacks(this).addOnConnectionFailedListener(this).addApi(i.API).build();
        f5558b = build;
        build.connect();
    }

    private void a(LocationRequest locationRequest, Context context, f fVar) {
        if (locationRequest != null && context != null && fVar != null && fVar.isConnected()) {
            Logger.d("WebEngage", "Registering for location updates");
            i.FusedLocationApi.requestLocationUpdates(fVar, locationRequest, PendingIntentFactory.f(context.getApplicationContext()));
        }
    }

    public Location a(Intent intent) {
        if (h.d()) {
            if (LocationResult.hasResult(intent)) {
                return LocationResult.extractResult(intent).getLastLocation();
            }
        } else if (h.b()) {
            Bundle extras = intent.getExtras();
            if (extras != null && extras.containsKey(com.google.android.gms.location.a.KEY_LOCATION_CHANGED)) {
                return (Location) extras.getParcelable(com.google.android.gms.location.a.KEY_LOCATION_CHANGED);
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public void a() {
        f fVar = f5558b;
        if (fVar != null && fVar.isConnected()) {
            if (PendingIntentFactory.g(this.f5559a)) {
                Logger.d("WebEngage", "UnRegistering from location updates ");
                PendingIntent f = PendingIntentFactory.f(this.f5559a);
                i.FusedLocationApi.removeLocationUpdates(f5558b, f);
                f.cancel();
                return;
            }
            Logger.d("WebEngage", "Location pending intent does not exists, no need to unregister");
        }
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x003e */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(double r8, double r10, float r12, java.lang.String r13, com.webengage.sdk.android.WebEngageConfig r14) {
        /*
            r7 = this;
            boolean r0 = com.webengage.sdk.android.utils.h.e()
            if (r0 == 0) goto L_0x0091
            boolean r0 = com.webengage.sdk.android.utils.h.f()
            if (r0 == 0) goto L_0x0091
            com.google.android.gms.location.c$a r1 = new com.google.android.gms.location.c$a
            r1.<init>()
            r2 = r8
            r4 = r10
            r6 = r12
            com.google.android.gms.location.c$a r8 = r1.setCircularRegion(r2, r4, r6)
            com.google.android.gms.location.c$a r8 = r8.setRequestId(r13)
            r9 = -1
            com.google.android.gms.location.c$a r8 = r8.setExpirationDuration(r9)
            r9 = 3
            com.google.android.gms.location.c$a r8 = r8.setTransitionTypes(r9)
            com.google.android.gms.location.c r8 = r8.build()
            com.google.android.gms.common.api.f r9 = f5558b
            if (r9 == 0) goto L_0x0042
            boolean r9 = r9.isConnecting()
            if (r9 == 0) goto L_0x0042
            monitor-enter(r7)
            r9 = 5000(0x1388, double:2.4703E-320)
            r7.wait(r9)     // Catch:{ InterruptedException -> 0x003e }
            goto L_0x003e
        L_0x003c:
            r8 = move-exception
            goto L_0x0040
        L_0x003e:
            monitor-exit(r7)     // Catch:{ all -> 0x003c }
            goto L_0x0042
        L_0x0040:
            monitor-exit(r7)     // Catch:{ all -> 0x003c }
            throw r8
        L_0x0042:
            com.google.android.gms.common.api.f r9 = f5558b
            if (r9 == 0) goto L_0x0091
            boolean r9 = r9.isConnected()
            if (r9 == 0) goto L_0x0091
            com.google.android.gms.location.GeofencingRequest$a r9 = new com.google.android.gms.location.GeofencingRequest$a
            r9.<init>()
            r10 = 4
            com.google.android.gms.location.GeofencingRequest$a r9 = r9.setInitialTrigger(r10)
            com.google.android.gms.location.GeofencingRequest$a r8 = r9.addGeofence(r8)
            com.google.android.gms.location.GeofencingRequest r8 = r8.build()
            com.google.android.gms.location.d r9 = com.google.android.gms.location.i.GeofencingApi
            com.google.android.gms.common.api.f r10 = f5558b
            android.content.Context r11 = r7.f5559a
            android.app.PendingIntent r11 = com.webengage.sdk.android.PendingIntentFactory.h(r11)
            r9.addGeofences((com.google.android.gms.common.api.f) r10, (com.google.android.gms.location.GeofencingRequest) r8, (android.app.PendingIntent) r11)
            if (r14 == 0) goto L_0x0091
            com.webengage.sdk.android.LocationTrackingStrategy r8 = r14.getLocationTrackingStrategy()
            com.webengage.sdk.android.LocationTrackingStrategy r9 = com.webengage.sdk.android.LocationTrackingStrategy.ACCURACY_BEST
            if (r8 == r9) goto L_0x0091
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r9 = "Current location tracking strategy is "
            r8.<init>(r9)
            com.webengage.sdk.android.LocationTrackingStrategy r9 = r14.getLocationTrackingStrategy()
            r8.append(r9)
            java.lang.String r9 = ", for better geofencing results use WebEngage.get().setLocationTrackingStrategy(LocationTrackingStrategy.ACCURACY_BEST)"
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            java.lang.String r9 = "WebEngage"
            com.webengage.sdk.android.Logger.w(r9, r8)
        L_0x0091:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.q.a(double, double, float, java.lang.String, com.webengage.sdk.android.WebEngageConfig):void");
    }

    /* access modifiers changed from: protected */
    public void a(long j, long j2, float f, int i) {
        this.c = new LocationRequest();
        this.c.setInterval(j);
        this.c.setFastestInterval(j2);
        this.c.setSmallestDisplacement(f);
        this.c.setPriority(i);
        a(this.c, this.f5559a, f5558b);
    }

    public void a(List<String> list) {
        f fVar = f5558b;
        if (fVar != null && fVar.isConnected()) {
            i.GeofencingApi.removeGeofences(f5558b, list);
        }
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0013 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.location.Location b() {
        /*
            r2 = this;
            com.google.android.gms.common.api.f r0 = f5558b
            if (r0 == 0) goto L_0x0017
            boolean r0 = r0.isConnecting()
            if (r0 == 0) goto L_0x0017
            monitor-enter(r2)
            r0 = 5000(0x1388, double:2.4703E-320)
            r2.wait(r0)     // Catch:{ InterruptedException -> 0x0013 }
            goto L_0x0013
        L_0x0011:
            r0 = move-exception
            goto L_0x0015
        L_0x0013:
            monitor-exit(r2)     // Catch:{ all -> 0x0011 }
            goto L_0x0017
        L_0x0015:
            monitor-exit(r2)     // Catch:{ all -> 0x0011 }
            throw r0
        L_0x0017:
            com.google.android.gms.common.api.f r0 = f5558b
            if (r0 == 0) goto L_0x002a
            boolean r0 = r0.isConnected()
            if (r0 == 0) goto L_0x002a
            com.google.android.gms.location.a r0 = com.google.android.gms.location.i.FusedLocationApi
            com.google.android.gms.common.api.f r1 = f5558b
            android.location.Location r0 = r0.getLastLocation(r1)
            return r0
        L_0x002a:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.q.b():android.location.Location");
    }

    public List<a> b(Intent intent) {
        if (h.g()) {
            com.google.android.gms.location.f fromIntent = com.google.android.gms.location.f.fromIntent(intent);
            if (!fromIntent.hasError()) {
                List<c> triggeringGeofences = fromIntent.getTriggeringGeofences();
                if (triggeringGeofences != null && triggeringGeofences.size() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (c requestId : triggeringGeofences) {
                        arrayList.add(new a(requestId.getRequestId(), fromIntent.getTriggeringLocation(), fromIntent.getGeofenceTransition()));
                    }
                    return arrayList;
                }
            }
        }
        return null;
    }

    public void onConnected(Bundle bundle) {
        synchronized (this) {
            notifyAll();
        }
        try {
            a(this.c, this.f5559a, f5558b);
        } catch (Exception unused) {
        }
    }

    public synchronized void onConnectionFailed(ConnectionResult connectionResult) {
        synchronized (this) {
            notifyAll();
        }
    }

    public synchronized void onConnectionSuspended(int i) {
        f5558b.connect();
    }
}
