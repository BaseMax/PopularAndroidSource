package c.e.a.b.h.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import c.e.a.b.d.d.C0781d;
import c.e.a.b.d.d.r;
import c.e.a.b.d.f.a;
import com.google.android.gms.common.ConnectionResult;

/* renamed from: c.e.a.b.h.b.xb  reason: case insensitive filesystem */
public final class C0971xb implements ServiceConnection, C0781d.a, C0781d.b {

    /* renamed from: a  reason: collision with root package name */
    public volatile boolean f11104a;

    /* renamed from: b  reason: collision with root package name */
    public volatile C0954s f11105b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C0921gb f11106c;

    public C0971xb(C0921gb gbVar) {
        this.f11106c = gbVar;
    }

    public final void a(Intent intent) {
        this.f11106c.l();
        Context b2 = this.f11106c.b();
        a a2 = a.a();
        synchronized (this) {
            if (this.f11104a) {
                this.f11106c.e().B().a("Connection attempt already in progress");
                return;
            }
            this.f11106c.e().B().a("Using local app measurement service");
            this.f11104a = true;
            a2.a(b2, intent, this.f11106c.f10900c, 129);
        }
    }

    public final void b() {
        this.f11106c.l();
        Context b2 = this.f11106c.b();
        synchronized (this) {
            if (this.f11104a) {
                this.f11106c.e().B().a("Connection attempt already in progress");
            } else if (this.f11105b == null || (!this.f11105b.b() && !this.f11105b.isConnected())) {
                this.f11105b = new C0954s(b2, Looper.getMainLooper(), this, this);
                this.f11106c.e().B().a("Connecting to remote service");
                this.f11104a = true;
                this.f11105b.h();
            } else {
                this.f11106c.e().B().a("Already awaiting connection attempt");
            }
        }
    }

    public final void d(Bundle bundle) {
        r.a("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                this.f11106c.d().a((Runnable) new Bb(this, (C0934l) this.f11105b.r()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f11105b = null;
                this.f11104a = false;
            }
        }
    }

    public final void f(int i2) {
        r.a("MeasurementServiceConnection.onConnectionSuspended");
        this.f11106c.e().A().a("Service connection suspended");
        this.f11106c.d().a((Runnable) new Cb(this));
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:22|23) */
    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        r3.f11106c.e().t().a("Service connect failed to get IMeasurementService");
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:22:0x0062 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onServiceConnected(android.content.ComponentName r4, android.os.IBinder r5) {
        /*
            r3 = this;
            java.lang.String r4 = "MeasurementServiceConnection.onServiceConnected"
            c.e.a.b.d.d.r.a((java.lang.String) r4)
            monitor-enter(r3)
            r4 = 0
            if (r5 != 0) goto L_0x001f
            r3.f11104a = r4     // Catch:{ all -> 0x001c }
            c.e.a.b.h.b.gb r4 = r3.f11106c     // Catch:{ all -> 0x001c }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ all -> 0x001c }
            c.e.a.b.h.b.v r4 = r4.t()     // Catch:{ all -> 0x001c }
            java.lang.String r5 = "Service connected with null binder"
            r4.a(r5)     // Catch:{ all -> 0x001c }
            monitor-exit(r3)     // Catch:{ all -> 0x001c }
            return
        L_0x001c:
            r4 = move-exception
            goto L_0x0099
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
            boolean r2 = r1 instanceof c.e.a.b.h.b.C0934l     // Catch:{ RemoteException -> 0x0062 }
            if (r2 == 0) goto L_0x003c
            c.e.a.b.h.b.l r1 = (c.e.a.b.h.b.C0934l) r1     // Catch:{ RemoteException -> 0x0062 }
            goto L_0x0041
        L_0x003c:
            c.e.a.b.h.b.n r1 = new c.e.a.b.h.b.n     // Catch:{ RemoteException -> 0x0062 }
            r1.<init>(r5)     // Catch:{ RemoteException -> 0x0062 }
        L_0x0041:
            r0 = r1
        L_0x0042:
            c.e.a.b.h.b.gb r5 = r3.f11106c     // Catch:{ RemoteException -> 0x0062 }
            c.e.a.b.h.b.t r5 = r5.e()     // Catch:{ RemoteException -> 0x0062 }
            c.e.a.b.h.b.v r5 = r5.B()     // Catch:{ RemoteException -> 0x0062 }
            java.lang.String r1 = "Bound to IMeasurementService interface"
            r5.a(r1)     // Catch:{ RemoteException -> 0x0062 }
            goto L_0x0071
        L_0x0052:
            c.e.a.b.h.b.gb r5 = r3.f11106c     // Catch:{ RemoteException -> 0x0062 }
            c.e.a.b.h.b.t r5 = r5.e()     // Catch:{ RemoteException -> 0x0062 }
            c.e.a.b.h.b.v r5 = r5.t()     // Catch:{ RemoteException -> 0x0062 }
            java.lang.String r2 = "Got binder with a wrong descriptor"
            r5.a(r2, r1)     // Catch:{ RemoteException -> 0x0062 }
            goto L_0x0071
        L_0x0062:
            c.e.a.b.h.b.gb r5 = r3.f11106c     // Catch:{ all -> 0x001c }
            c.e.a.b.h.b.t r5 = r5.e()     // Catch:{ all -> 0x001c }
            c.e.a.b.h.b.v r5 = r5.t()     // Catch:{ all -> 0x001c }
            java.lang.String r1 = "Service connect failed to get IMeasurementService"
            r5.a(r1)     // Catch:{ all -> 0x001c }
        L_0x0071:
            if (r0 != 0) goto L_0x0089
            r3.f11104a = r4     // Catch:{ all -> 0x001c }
            c.e.a.b.d.f.a r4 = c.e.a.b.d.f.a.a()     // Catch:{ IllegalArgumentException -> 0x0097 }
            c.e.a.b.h.b.gb r5 = r3.f11106c     // Catch:{ IllegalArgumentException -> 0x0097 }
            android.content.Context r5 = r5.b()     // Catch:{ IllegalArgumentException -> 0x0097 }
            c.e.a.b.h.b.gb r0 = r3.f11106c     // Catch:{ IllegalArgumentException -> 0x0097 }
            c.e.a.b.h.b.xb r0 = r0.f10900c     // Catch:{ IllegalArgumentException -> 0x0097 }
            r4.a(r5, r0)     // Catch:{ IllegalArgumentException -> 0x0097 }
            goto L_0x0097
        L_0x0089:
            c.e.a.b.h.b.gb r4 = r3.f11106c     // Catch:{ all -> 0x001c }
            c.e.a.b.h.b.U r4 = r4.d()     // Catch:{ all -> 0x001c }
            c.e.a.b.h.b.yb r5 = new c.e.a.b.h.b.yb     // Catch:{ all -> 0x001c }
            r5.<init>(r3, r0)     // Catch:{ all -> 0x001c }
            r4.a((java.lang.Runnable) r5)     // Catch:{ all -> 0x001c }
        L_0x0097:
            monitor-exit(r3)     // Catch:{ all -> 0x001c }
            return
        L_0x0099:
            monitor-exit(r3)     // Catch:{ all -> 0x001c }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.C0971xb.onServiceConnected(android.content.ComponentName, android.os.IBinder):void");
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        r.a("MeasurementServiceConnection.onServiceDisconnected");
        this.f11106c.e().A().a("Service disconnected");
        this.f11106c.d().a((Runnable) new Ab(this, componentName));
    }

    public final void a() {
        if (this.f11105b != null && (this.f11105b.isConnected() || this.f11105b.b())) {
            this.f11105b.a();
        }
        this.f11105b = null;
    }

    public final void a(ConnectionResult connectionResult) {
        r.a("MeasurementServiceConnection.onConnectionFailed");
        C0957t m = this.f11106c.f11077a.m();
        if (m != null) {
            m.w().a("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f11104a = false;
            this.f11105b = null;
        }
        this.f11106c.d().a((Runnable) new Db(this));
    }
}
