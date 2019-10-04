package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.C0065a;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.au;
import com.google.android.gms.common.internal.bd;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.internal.ob;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public final class an<O extends a.C0065a> implements f.b, f.c, dc {

    /* renamed from: a  reason: collision with root package name */
    final a.f f2766a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ al f2767b;
    private final Queue<a> c = new LinkedList();
    private final a.c d;
    private final cp<O> e;
    private final e f;
    private final Set<cr> g = new HashSet();
    private final Map<bi<?>, bp> h = new HashMap();
    private final int i;
    private final bt j;
    private boolean k;
    private ConnectionResult l = null;

    public an(al alVar, e<O> eVar) {
        this.f2767b = alVar;
        this.f2766a = eVar.zza(alVar.e.getLooper(), (an<O>) this);
        this.d = this.f2766a instanceof au ? au.zzals() : this.f2766a;
        this.e = eVar.zzagn();
        this.f = new e();
        this.i = eVar.getInstanceId();
        if (this.f2766a.zzaay()) {
            this.j = eVar.zza(alVar.k, alVar.e);
        } else {
            this.j = null;
        }
    }

    private final void a(ConnectionResult connectionResult) {
        for (cr next : this.g) {
            String str = null;
            if (connectionResult == ConnectionResult.zzfkr) {
                str = this.f2766a.zzagi();
            }
            next.zza(this.e, connectionResult, str);
        }
        this.g.clear();
    }

    private final void a(a aVar) {
        aVar.zza(this.f, zzaay());
        try {
            aVar.zza(this);
        } catch (DeadObjectException unused) {
            onConnectionSuspended(1);
            this.f2766a.disconnect();
        }
    }

    /* access modifiers changed from: private */
    public final void d() {
        zzaiz();
        a(ConnectionResult.zzfkr);
        e();
        for (bp bpVar : this.h.values()) {
            try {
                bpVar.zzfnq.zzb(this.d, new g());
            } catch (DeadObjectException unused) {
                onConnectionSuspended(1);
                this.f2766a.disconnect();
            } catch (RemoteException unused2) {
            }
        }
        while (this.f2766a.isConnected() && !this.c.isEmpty()) {
            a(this.c.remove());
        }
        f();
    }

    private final void e() {
        if (this.k) {
            this.f2767b.e.removeMessages(11, this.e);
            this.f2767b.e.removeMessages(9, this.e);
            this.k = false;
        }
    }

    private final void f() {
        this.f2767b.e.removeMessages(12, this.e);
        this.f2767b.e.sendMessageDelayed(this.f2767b.e.obtainMessage(12, this.e), this.f2767b.i);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        zzaiz();
        this.k = true;
        this.f.zzahw();
        this.f2767b.e.sendMessageDelayed(Message.obtain(this.f2767b.e, 9, this.e), this.f2767b.g);
        this.f2767b.e.sendMessageDelayed(Message.obtain(this.f2767b.e, 11, this.e), this.f2767b.h);
        int unused = this.f2767b.m = -1;
    }

    /* access modifiers changed from: package-private */
    public final boolean b() {
        return this.f2766a.isConnected();
    }

    /* access modifiers changed from: package-private */
    public final ob c() {
        bt btVar = this.j;
        if (btVar == null) {
            return null;
        }
        return btVar.zzaje();
    }

    public final void connect() {
        ap.zza(this.f2767b.e);
        if (!this.f2766a.isConnected() && !this.f2766a.isConnecting()) {
            if (this.f2766a.zzagg() && this.f2767b.m != 0) {
                al alVar = this.f2767b;
                int unused = alVar.m = alVar.l.isGooglePlayServicesAvailable(this.f2767b.k);
                if (this.f2767b.m != 0) {
                    onConnectionFailed(new ConnectionResult(this.f2767b.m, null));
                    return;
                }
            }
            at atVar = new at(this.f2767b, this.f2766a, this.e);
            if (this.f2766a.zzaay()) {
                this.j.zza(atVar);
            }
            this.f2766a.zza((bd) atVar);
        }
    }

    public final int getInstanceId() {
        return this.i;
    }

    public final void onConnected(Bundle bundle) {
        if (Looper.myLooper() == this.f2767b.e.getLooper()) {
            d();
        } else {
            this.f2767b.e.post(new ao(this));
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0067, code lost:
        if (r4.f2767b.a(r5, r4.i) != false) goto L_0x00c6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x006f, code lost:
        if (r5.getErrorCode() != 18) goto L_0x0074;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0071, code lost:
        r4.k = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0076, code lost:
        if (r4.k == false) goto L_0x0096;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0078, code lost:
        r4.f2767b.e.sendMessageDelayed(android.os.Message.obtain(r4.f2767b.e, 9, r4.e), r4.f2767b.g);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0095, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0096, code lost:
        r1 = r4.e.zzagy();
        r3 = new java.lang.StringBuilder(java.lang.String.valueOf(r1).length() + 38);
        r3.append("API: ");
        r3.append(r1);
        r3.append(" is not available on this device.");
        zzw(new com.google.android.gms.common.api.Status(17, r3.toString()));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00c6, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onConnectionFailed(com.google.android.gms.common.ConnectionResult r5) {
        /*
            r4 = this;
            com.google.android.gms.common.api.internal.al r0 = r4.f2767b
            android.os.Handler r0 = r0.e
            com.google.android.gms.common.internal.ap.zza(r0)
            com.google.android.gms.common.api.internal.bt r0 = r4.j
            if (r0 == 0) goto L_0x0010
            r0.zzajq()
        L_0x0010:
            r4.zzaiz()
            com.google.android.gms.common.api.internal.al r0 = r4.f2767b
            r1 = -1
            int unused = r0.m = r1
            r4.a((com.google.android.gms.common.ConnectionResult) r5)
            int r0 = r5.getErrorCode()
            r1 = 4
            if (r0 != r1) goto L_0x002b
            com.google.android.gms.common.api.Status r5 = com.google.android.gms.common.api.internal.al.f
            r4.zzw(r5)
            return
        L_0x002b:
            java.util.Queue<com.google.android.gms.common.api.internal.a> r0 = r4.c
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0036
            r4.l = r5
            return
        L_0x0036:
            java.lang.Object r0 = com.google.android.gms.common.api.internal.al.f2763a
            monitor-enter(r0)
            com.google.android.gms.common.api.internal.al r1 = r4.f2767b     // Catch:{ all -> 0x00c7 }
            com.google.android.gms.common.api.internal.h r1 = r1.c     // Catch:{ all -> 0x00c7 }
            if (r1 == 0) goto L_0x005e
            com.google.android.gms.common.api.internal.al r1 = r4.f2767b     // Catch:{ all -> 0x00c7 }
            java.util.Set r1 = r1.d     // Catch:{ all -> 0x00c7 }
            com.google.android.gms.common.api.internal.cp<O> r2 = r4.e     // Catch:{ all -> 0x00c7 }
            boolean r1 = r1.contains(r2)     // Catch:{ all -> 0x00c7 }
            if (r1 == 0) goto L_0x005e
            com.google.android.gms.common.api.internal.al r1 = r4.f2767b     // Catch:{ all -> 0x00c7 }
            com.google.android.gms.common.api.internal.h r1 = r1.c     // Catch:{ all -> 0x00c7 }
            int r2 = r4.i     // Catch:{ all -> 0x00c7 }
            r1.zzb(r5, r2)     // Catch:{ all -> 0x00c7 }
            monitor-exit(r0)     // Catch:{ all -> 0x00c7 }
            return
        L_0x005e:
            monitor-exit(r0)     // Catch:{ all -> 0x00c7 }
            com.google.android.gms.common.api.internal.al r0 = r4.f2767b
            int r1 = r4.i
            boolean r0 = r0.a((com.google.android.gms.common.ConnectionResult) r5, (int) r1)
            if (r0 != 0) goto L_0x00c6
            int r5 = r5.getErrorCode()
            r0 = 18
            if (r5 != r0) goto L_0x0074
            r5 = 1
            r4.k = r5
        L_0x0074:
            boolean r5 = r4.k
            if (r5 == 0) goto L_0x0096
            com.google.android.gms.common.api.internal.al r5 = r4.f2767b
            android.os.Handler r5 = r5.e
            com.google.android.gms.common.api.internal.al r0 = r4.f2767b
            android.os.Handler r0 = r0.e
            r1 = 9
            com.google.android.gms.common.api.internal.cp<O> r2 = r4.e
            android.os.Message r0 = android.os.Message.obtain(r0, r1, r2)
            com.google.android.gms.common.api.internal.al r1 = r4.f2767b
            long r1 = r1.g
            r5.sendMessageDelayed(r0, r1)
            return
        L_0x0096:
            com.google.android.gms.common.api.Status r5 = new com.google.android.gms.common.api.Status
            r0 = 17
            com.google.android.gms.common.api.internal.cp<O> r1 = r4.e
            java.lang.String r1 = r1.zzagy()
            java.lang.String r2 = java.lang.String.valueOf(r1)
            int r2 = r2.length()
            int r2 = r2 + 38
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r2)
            java.lang.String r2 = "API: "
            r3.append(r2)
            r3.append(r1)
            java.lang.String r1 = " is not available on this device."
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r5.<init>(r0, r1)
            r4.zzw(r5)
        L_0x00c6:
            return
        L_0x00c7:
            r5 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00c7 }
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.an.onConnectionFailed(com.google.android.gms.common.ConnectionResult):void");
    }

    public final void onConnectionSuspended(int i2) {
        if (Looper.myLooper() == this.f2767b.e.getLooper()) {
            a();
        } else {
            this.f2767b.e.post(new ap(this));
        }
    }

    public final void resume() {
        ap.zza(this.f2767b.e);
        if (this.k) {
            connect();
        }
    }

    public final void signOut() {
        ap.zza(this.f2767b.e);
        zzw(al.zzfsy);
        this.f.zzahv();
        for (bi cnVar : (bi[]) this.h.keySet().toArray(new bi[this.h.size()])) {
            zza((a) new cn(cnVar, new g()));
        }
        a(new ConnectionResult(4));
        if (this.f2766a.isConnected()) {
            this.f2766a.zza((bj) new ar(this));
        }
    }

    public final void zza(ConnectionResult connectionResult, a<?> aVar, boolean z) {
        if (Looper.myLooper() == this.f2767b.e.getLooper()) {
            onConnectionFailed(connectionResult);
        } else {
            this.f2767b.e.post(new aq(this, connectionResult));
        }
    }

    public final void zza(a aVar) {
        ap.zza(this.f2767b.e);
        if (this.f2766a.isConnected()) {
            a(aVar);
            f();
            return;
        }
        this.c.add(aVar);
        ConnectionResult connectionResult = this.l;
        if (connectionResult == null || !connectionResult.hasResolution()) {
            connect();
        } else {
            onConnectionFailed(this.l);
        }
    }

    public final void zza(cr crVar) {
        ap.zza(this.f2767b.e);
        this.g.add(crVar);
    }

    public final boolean zzaay() {
        return this.f2766a.zzaay();
    }

    public final a.f zzahp() {
        return this.f2766a;
    }

    public final void zzaij() {
        ap.zza(this.f2767b.e);
        if (this.k) {
            e();
            zzw(this.f2767b.l.isGooglePlayServicesAvailable(this.f2767b.k) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
            this.f2766a.disconnect();
        }
    }

    public final Map<bi<?>, bp> zzaiy() {
        return this.h;
    }

    public final void zzaiz() {
        ap.zza(this.f2767b.e);
        this.l = null;
    }

    public final ConnectionResult zzaja() {
        ap.zza(this.f2767b.e);
        return this.l;
    }

    public final void zzh(ConnectionResult connectionResult) {
        ap.zza(this.f2767b.e);
        this.f2766a.disconnect();
        onConnectionFailed(connectionResult);
    }

    public final void zzw(Status status) {
        ap.zza(this.f2767b.e);
        for (a zzs : this.c) {
            zzs.zzs(status);
        }
        this.c.clear();
    }

    public final void zzajd() {
        ap.zza(this.f2767b.e);
        if (this.f2766a.isConnected() && this.h.size() == 0) {
            e eVar = this.f;
            if (!eVar.f2852a.isEmpty() || !eVar.f2853b.isEmpty()) {
                f();
                return;
            }
            this.f2766a.disconnect();
        }
    }
}
