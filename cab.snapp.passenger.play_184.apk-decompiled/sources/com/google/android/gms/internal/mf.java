package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.az;
import com.google.android.gms.common.internal.ba;
import com.google.android.gms.common.stats.a;

public final class mf implements ServiceConnection, az, ba {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ lr f3378a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public volatile boolean f3379b;
    private volatile iy c;

    protected mf(lr lrVar) {
        this.f3378a = lrVar;
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x0022 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onConnected(android.os.Bundle r4) {
        /*
            r3 = this;
            java.lang.String r4 = "MeasurementServiceConnection.onConnected"
            com.google.android.gms.common.internal.ap.zzge(r4)
            monitor-enter(r3)
            r4 = 0
            com.google.android.gms.internal.iy r0 = r3.c     // Catch:{ DeadObjectException | IllegalStateException -> 0x0022 }
            android.os.IInterface r0 = r0.zzakn()     // Catch:{ DeadObjectException | IllegalStateException -> 0x0022 }
            com.google.android.gms.internal.ir r0 = (com.google.android.gms.internal.ir) r0     // Catch:{ DeadObjectException | IllegalStateException -> 0x0022 }
            r3.c = r4     // Catch:{ DeadObjectException | IllegalStateException -> 0x0022 }
            com.google.android.gms.internal.lr r1 = r3.f3378a     // Catch:{ DeadObjectException | IllegalStateException -> 0x0022 }
            com.google.android.gms.internal.js r1 = r1.zzawx()     // Catch:{ DeadObjectException | IllegalStateException -> 0x0022 }
            com.google.android.gms.internal.mi r2 = new com.google.android.gms.internal.mi     // Catch:{ DeadObjectException | IllegalStateException -> 0x0022 }
            r2.<init>(r3, r0)     // Catch:{ DeadObjectException | IllegalStateException -> 0x0022 }
            r1.zzg(r2)     // Catch:{ DeadObjectException | IllegalStateException -> 0x0022 }
            goto L_0x0027
        L_0x0020:
            r4 = move-exception
            goto L_0x0029
        L_0x0022:
            r3.c = r4     // Catch:{ all -> 0x0020 }
            r4 = 0
            r3.f3379b = r4     // Catch:{ all -> 0x0020 }
        L_0x0027:
            monitor-exit(r3)     // Catch:{ all -> 0x0020 }
            return
        L_0x0029:
            monitor-exit(r3)     // Catch:{ all -> 0x0020 }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mf.onConnected(android.os.Bundle):void");
    }

    public final void onConnectionFailed(ConnectionResult connectionResult) {
        ap.zzge("MeasurementServiceConnection.onConnectionFailed");
        iz zzazx = this.f3378a.e.zzazx();
        if (zzazx != null) {
            zzazx.zzazf().zzj("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f3379b = false;
            this.c = null;
        }
        this.f3378a.zzawx().zzg(new mk(this));
    }

    public final void onConnectionSuspended(int i) {
        ap.zzge("MeasurementServiceConnection.onConnectionSuspended");
        this.f3378a.zzawy().zzazi().log("Service connection suspended");
        this.f3378a.zzawx().zzg(new mj(this));
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        ap.zzge("MeasurementServiceConnection.onServiceDisconnected");
        this.f3378a.zzawy().zzazi().log("Service disconnected");
        this.f3378a.zzawx().zzg(new mh(this, componentName));
    }

    public final void zzbau() {
        this.f3378a.zzve();
        Context context = this.f3378a.getContext();
        synchronized (this) {
            if (this.f3379b) {
                this.f3378a.zzawy().zzazj().log("Connection attempt already in progress");
            } else if (this.c != null) {
                this.f3378a.zzawy().zzazj().log("Already awaiting connection attempt");
            } else {
                this.c = new iy(context, Looper.getMainLooper(), this, this);
                this.f3378a.zzawy().zzazj().log("Connecting to remote service");
                this.f3379b = true;
                this.c.zzakj();
            }
        }
    }

    public final void zzn(Intent intent) {
        this.f3378a.zzve();
        Context context = this.f3378a.getContext();
        a zzamc = a.zzamc();
        synchronized (this) {
            if (this.f3379b) {
                this.f3378a.zzawy().zzazj().log("Connection attempt already in progress");
                return;
            }
            this.f3378a.zzawy().zzazj().log("Using local app measurement service");
            this.f3379b = true;
            zzamc.zza(context, intent, this.f3378a.f3352a, 129);
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:22|23) */
    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        r3.f3378a.zzawy().zzazd().log("Service connect failed to get IMeasurementService");
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:22:0x0062 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onServiceConnected(android.content.ComponentName r4, android.os.IBinder r5) {
        /*
            r3 = this;
            java.lang.String r4 = "MeasurementServiceConnection.onServiceConnected"
            com.google.android.gms.common.internal.ap.zzge(r4)
            monitor-enter(r3)
            r4 = 0
            if (r5 != 0) goto L_0x001f
            r3.f3379b = r4     // Catch:{ all -> 0x001c }
            com.google.android.gms.internal.lr r4 = r3.f3378a     // Catch:{ all -> 0x001c }
            com.google.android.gms.internal.iz r4 = r4.zzawy()     // Catch:{ all -> 0x001c }
            com.google.android.gms.internal.jb r4 = r4.zzazd()     // Catch:{ all -> 0x001c }
            java.lang.String r5 = "Service connected with null binder"
            r4.log(r5)     // Catch:{ all -> 0x001c }
            monitor-exit(r3)     // Catch:{ all -> 0x001c }
            return
        L_0x001c:
            r4 = move-exception
            goto L_0x0096
        L_0x001f:
            r0 = 0
            java.lang.String r1 = r5.getInterfaceDescriptor()     // Catch:{ RemoteException -> 0x0062 }
            java.lang.String r2 = "com.google.android.gms.measurement.internal.IMeasurementService"
            boolean r2 = r2.equals(r1)     // Catch:{ RemoteException -> 0x0062 }
            if (r2 == 0) goto L_0x0052
            if (r5 != 0) goto L_0x002f
            goto L_0x0042
        L_0x002f:
            java.lang.String r1 = "com.google.android.gms.measurement.internal.IMeasurementService"
            android.os.IInterface r1 = r5.queryLocalInterface(r1)     // Catch:{ RemoteException -> 0x0062 }
            boolean r2 = r1 instanceof com.google.android.gms.internal.ir     // Catch:{ RemoteException -> 0x0062 }
            if (r2 == 0) goto L_0x003c
            com.google.android.gms.internal.ir r1 = (com.google.android.gms.internal.ir) r1     // Catch:{ RemoteException -> 0x0062 }
            goto L_0x0041
        L_0x003c:
            com.google.android.gms.internal.it r1 = new com.google.android.gms.internal.it     // Catch:{ RemoteException -> 0x0062 }
            r1.<init>(r5)     // Catch:{ RemoteException -> 0x0062 }
        L_0x0041:
            r0 = r1
        L_0x0042:
            com.google.android.gms.internal.lr r5 = r3.f3378a     // Catch:{ RemoteException -> 0x0062 }
            com.google.android.gms.internal.iz r5 = r5.zzawy()     // Catch:{ RemoteException -> 0x0062 }
            com.google.android.gms.internal.jb r5 = r5.zzazj()     // Catch:{ RemoteException -> 0x0062 }
            java.lang.String r1 = "Bound to IMeasurementService interface"
            r5.log(r1)     // Catch:{ RemoteException -> 0x0062 }
            goto L_0x0071
        L_0x0052:
            com.google.android.gms.internal.lr r5 = r3.f3378a     // Catch:{ RemoteException -> 0x0062 }
            com.google.android.gms.internal.iz r5 = r5.zzawy()     // Catch:{ RemoteException -> 0x0062 }
            com.google.android.gms.internal.jb r5 = r5.zzazd()     // Catch:{ RemoteException -> 0x0062 }
            java.lang.String r2 = "Got binder with a wrong descriptor"
            r5.zzj(r2, r1)     // Catch:{ RemoteException -> 0x0062 }
            goto L_0x0071
        L_0x0062:
            com.google.android.gms.internal.lr r5 = r3.f3378a     // Catch:{ all -> 0x001c }
            com.google.android.gms.internal.iz r5 = r5.zzawy()     // Catch:{ all -> 0x001c }
            com.google.android.gms.internal.jb r5 = r5.zzazd()     // Catch:{ all -> 0x001c }
            java.lang.String r1 = "Service connect failed to get IMeasurementService"
            r5.log(r1)     // Catch:{ all -> 0x001c }
        L_0x0071:
            if (r0 != 0) goto L_0x0086
            r3.f3379b = r4     // Catch:{ all -> 0x001c }
            com.google.android.gms.common.stats.a.zzamc()     // Catch:{ IllegalArgumentException -> 0x0094 }
            com.google.android.gms.internal.lr r4 = r3.f3378a     // Catch:{ IllegalArgumentException -> 0x0094 }
            android.content.Context r4 = r4.getContext()     // Catch:{ IllegalArgumentException -> 0x0094 }
            com.google.android.gms.internal.lr r5 = r3.f3378a     // Catch:{ IllegalArgumentException -> 0x0094 }
            com.google.android.gms.internal.mf r5 = r5.f3352a     // Catch:{ IllegalArgumentException -> 0x0094 }
            r4.unbindService(r5)     // Catch:{ IllegalArgumentException -> 0x0094 }
            goto L_0x0094
        L_0x0086:
            com.google.android.gms.internal.lr r4 = r3.f3378a     // Catch:{ all -> 0x001c }
            com.google.android.gms.internal.js r4 = r4.zzawx()     // Catch:{ all -> 0x001c }
            com.google.android.gms.internal.mg r5 = new com.google.android.gms.internal.mg     // Catch:{ all -> 0x001c }
            r5.<init>(r3, r0)     // Catch:{ all -> 0x001c }
            r4.zzg(r5)     // Catch:{ all -> 0x001c }
        L_0x0094:
            monitor-exit(r3)     // Catch:{ all -> 0x001c }
            return
        L_0x0096:
            monitor-exit(r3)     // Catch:{ all -> 0x001c }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mf.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
    }
}
