package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.common.api.internal.bi;
import com.google.android.gms.common.api.internal.cv;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.g;
import com.google.android.gms.location.h;
import com.google.android.gms.location.zzag;

public final class hj extends fw {
    private final hc h;

    public hj(Context context, Looper looper, f.b bVar, f.c cVar, String str) {
        this(context, looper, bVar, cVar, str, bl.zzcl(context));
    }

    public hj(Context context, Looper looper, f.b bVar, f.c cVar, String str, bl blVar) {
        super(context, looper, bVar, cVar, str, blVar);
        this.h = new hc(context, this.g);
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(6:2|3|(2:5|6)|7|8|9) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0013 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void disconnect() {
        /*
            r2 = this;
            com.google.android.gms.internal.hc r0 = r2.h
            monitor-enter(r0)
            boolean r1 = r2.isConnected()     // Catch:{ all -> 0x0018 }
            if (r1 == 0) goto L_0x0013
            com.google.android.gms.internal.hc r1 = r2.h     // Catch:{ Exception -> 0x0013 }
            r1.removeAllListeners()     // Catch:{ Exception -> 0x0013 }
            com.google.android.gms.internal.hc r1 = r2.h     // Catch:{ Exception -> 0x0013 }
            r1.zzavl()     // Catch:{ Exception -> 0x0013 }
        L_0x0013:
            super.disconnect()     // Catch:{ all -> 0x0018 }
            monitor-exit(r0)     // Catch:{ all -> 0x0018 }
            return
        L_0x0018:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0018 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.hj.disconnect():void");
    }

    public final Location getLastLocation() throws RemoteException {
        return this.h.getLastLocation();
    }

    public final void zza(long j, PendingIntent pendingIntent) throws RemoteException {
        zzakm();
        ap.checkNotNull(pendingIntent);
        ap.checkArgument(j >= 0, "detectionIntervalMillis must be >= 0");
        ((gy) zzakn()).zza(j, true, pendingIntent);
    }

    public final void zza(PendingIntent pendingIntent, gt gtVar) throws RemoteException {
        this.h.zza(pendingIntent, gtVar);
    }

    public final void zza(bi<h> biVar, gt gtVar) throws RemoteException {
        this.h.zza(biVar, gtVar);
    }

    public final void zza(gt gtVar) throws RemoteException {
        this.h.zza(gtVar);
    }

    public final void zza(zzcfo zzcfo, bg<g> bgVar, gt gtVar) throws RemoteException {
        synchronized (this.h) {
            this.h.zza(zzcfo, bgVar, gtVar);
        }
    }

    public final void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, cv<Status> cvVar) throws RemoteException {
        zzakm();
        ap.checkNotNull(geofencingRequest, "geofencingRequest can't be null.");
        ap.checkNotNull(pendingIntent, "PendingIntent must be specified.");
        ap.checkNotNull(cvVar, "ResultHolder not provided.");
        ((gy) zzakn()).zza(geofencingRequest, pendingIntent, (gw) new hk(cvVar));
    }

    public final void zza(LocationRequest locationRequest, PendingIntent pendingIntent, gt gtVar) throws RemoteException {
        this.h.zza(locationRequest, pendingIntent, gtVar);
    }

    public final void zza(LocationRequest locationRequest, bg<h> bgVar, gt gtVar) throws RemoteException {
        synchronized (this.h) {
            this.h.zza(locationRequest, bgVar, gtVar);
        }
    }

    public final void zza(LocationSettingsRequest locationSettingsRequest, cv<LocationSettingsResult> cvVar, String str) throws RemoteException {
        zzakm();
        boolean z = true;
        ap.checkArgument(locationSettingsRequest != null, "locationSettingsRequest can't be null nor empty.");
        if (cvVar == null) {
            z = false;
        }
        ap.checkArgument(z, "listener can't be null.");
        ((gy) zzakn()).zza(locationSettingsRequest, (ha) new hm(cvVar), str);
    }

    public final void zza(zzag zzag, cv<Status> cvVar) throws RemoteException {
        zzakm();
        ap.checkNotNull(zzag, "removeGeofencingRequest can't be null.");
        ap.checkNotNull(cvVar, "ResultHolder not provided.");
        ((gy) zzakn()).zza(zzag, new hl(cvVar));
    }

    public final LocationAvailability zzavk() throws RemoteException {
        return this.h.zzavk();
    }

    public final void zzb(bi<g> biVar, gt gtVar) throws RemoteException {
        this.h.zzb(biVar, gtVar);
    }

    public final void zzbj(boolean z) throws RemoteException {
        this.h.zzbj(z);
    }

    public final void zzc(PendingIntent pendingIntent) throws RemoteException {
        zzakm();
        ap.checkNotNull(pendingIntent);
        ((gy) zzakn()).zzc(pendingIntent);
    }

    public final void zzc(Location location) throws RemoteException {
        this.h.zzc(location);
    }
}
