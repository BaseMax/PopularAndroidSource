package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.common.api.internal.bi;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.ag;
import com.google.android.gms.location.aj;
import com.google.android.gms.location.g;
import com.google.android.gms.location.h;
import java.util.HashMap;
import java.util.Map;

public final class hc {

    /* renamed from: a  reason: collision with root package name */
    private final hq<gy> f3178a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f3179b;
    private ContentProviderClient c = null;
    private boolean d = false;
    private final Map<bi<h>, hh> e = new HashMap();
    private final Map<bi<Object>, hg> f = new HashMap();
    private final Map<bi<g>, hd> g = new HashMap();

    public hc(Context context, hq<gy> hqVar) {
        this.f3179b = context;
        this.f3178a = hqVar;
    }

    private final hh a(bg<h> bgVar) {
        hh hhVar;
        synchronized (this.e) {
            hhVar = this.e.get(bgVar.zzajo());
            if (hhVar == null) {
                hhVar = new hh(bgVar);
            }
            this.e.put(bgVar.zzajo(), hhVar);
        }
        return hhVar;
    }

    private final hd b(bg<g> bgVar) {
        hd hdVar;
        synchronized (this.g) {
            hdVar = this.g.get(bgVar.zzajo());
            if (hdVar == null) {
                hdVar = new hd(bgVar);
            }
            this.g.put(bgVar.zzajo(), hdVar);
        }
        return hdVar;
    }

    public final Location getLastLocation() throws RemoteException {
        this.f3178a.zzakm();
        return this.f3178a.zzakn().zzif(this.f3179b.getPackageName());
    }

    public final void removeAllListeners() throws RemoteException {
        synchronized (this.e) {
            for (hh next : this.e.values()) {
                if (next != null) {
                    this.f3178a.zzakn().zza(zzcfq.zza((aj) next, (gt) null));
                }
            }
            this.e.clear();
        }
        synchronized (this.g) {
            for (hd next2 : this.g.values()) {
                if (next2 != null) {
                    this.f3178a.zzakn().zza(zzcfq.zza((ag) next2, (gt) null));
                }
            }
            this.g.clear();
        }
        synchronized (this.f) {
            for (hg next3 : this.f.values()) {
                if (next3 != null) {
                    this.f3178a.zzakn().zza(new zzcdz(2, null, next3.asBinder(), null));
                }
            }
            this.f.clear();
        }
    }

    public final void zza(PendingIntent pendingIntent, gt gtVar) throws RemoteException {
        this.f3178a.zzakm();
        gy zzakn = this.f3178a.zzakn();
        zzcfq zzcfq = new zzcfq(2, null, null, pendingIntent, null, gtVar != null ? gtVar.asBinder() : null);
        zzakn.zza(zzcfq);
    }

    public final void zza(bi<h> biVar, gt gtVar) throws RemoteException {
        this.f3178a.zzakm();
        ap.checkNotNull(biVar, "Invalid null listener key");
        synchronized (this.e) {
            hh remove = this.e.remove(biVar);
            if (remove != null) {
                remove.release();
                this.f3178a.zzakn().zza(zzcfq.zza((aj) remove, gtVar));
            }
        }
    }

    public final void zza(gt gtVar) throws RemoteException {
        this.f3178a.zzakm();
        this.f3178a.zzakn().zza(gtVar);
    }

    public final void zza(zzcfo zzcfo, bg<g> bgVar, gt gtVar) throws RemoteException {
        this.f3178a.zzakm();
        hd b2 = b(bgVar);
        gy zzakn = this.f3178a.zzakn();
        zzcfq zzcfq = new zzcfq(1, zzcfo, null, null, b2.asBinder(), gtVar != null ? gtVar.asBinder() : null);
        zzakn.zza(zzcfq);
    }

    public final void zza(LocationRequest locationRequest, PendingIntent pendingIntent, gt gtVar) throws RemoteException {
        this.f3178a.zzakm();
        gy zzakn = this.f3178a.zzakn();
        zzcfq zzcfq = new zzcfq(1, zzcfo.zza(locationRequest), null, pendingIntent, null, gtVar != null ? gtVar.asBinder() : null);
        zzakn.zza(zzcfq);
    }

    public final void zza(LocationRequest locationRequest, bg<h> bgVar, gt gtVar) throws RemoteException {
        this.f3178a.zzakm();
        hh a2 = a(bgVar);
        gy zzakn = this.f3178a.zzakn();
        zzcfq zzcfq = new zzcfq(1, zzcfo.zza(locationRequest), a2.asBinder(), null, null, gtVar != null ? gtVar.asBinder() : null);
        zzakn.zza(zzcfq);
    }

    public final LocationAvailability zzavk() throws RemoteException {
        this.f3178a.zzakm();
        return this.f3178a.zzakn().zzig(this.f3179b.getPackageName());
    }

    public final void zzavl() throws RemoteException {
        if (this.d) {
            zzbj(false);
        }
    }

    public final void zzb(bi<g> biVar, gt gtVar) throws RemoteException {
        this.f3178a.zzakm();
        ap.checkNotNull(biVar, "Invalid null listener key");
        synchronized (this.g) {
            hd remove = this.g.remove(biVar);
            if (remove != null) {
                remove.release();
                this.f3178a.zzakn().zza(zzcfq.zza((ag) remove, gtVar));
            }
        }
    }

    public final void zzbj(boolean z) throws RemoteException {
        this.f3178a.zzakm();
        this.f3178a.zzakn().zzbj(z);
        this.d = z;
    }

    public final void zzc(Location location) throws RemoteException {
        this.f3178a.zzakm();
        this.f3178a.zzakn().zzc(location);
    }
}
