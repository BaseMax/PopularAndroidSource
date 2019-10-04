package c.e.a.b.d.a.a;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import c.e.a.b.d.c;
import c.e.a.b.g.c.e;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.util.concurrent.atomic.AtomicReference;

public abstract class P extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: b  reason: collision with root package name */
    public volatile boolean f9830b;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicReference<Q> f9831c;

    /* renamed from: d  reason: collision with root package name */
    public final Handler f9832d;

    /* renamed from: e  reason: collision with root package name */
    public final c f9833e;

    public P(C0758f fVar) {
        this(fVar, c.a());
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null) {
            this.f9831c.set(bundle.getBoolean("resolving_error", false) ? new Q(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    public abstract void a(ConnectionResult connectionResult, int i2);

    public void b(Bundle bundle) {
        super.b(bundle);
        Q q = this.f9831c.get();
        if (q != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", q.b());
            bundle.putInt("failed_status", q.a().x());
            bundle.putParcelable("failed_resolution", q.a().z());
        }
    }

    public void d() {
        super.d();
        this.f9830b = true;
    }

    public void e() {
        super.e();
        this.f9830b = false;
    }

    public abstract void f();

    public final void g() {
        this.f9831c.set(null);
        f();
    }

    public void onCancel(DialogInterface dialogInterface) {
        a(new ConnectionResult(13, null), a(this.f9831c.get()));
        g();
    }

    public P(C0758f fVar, c cVar) {
        super(fVar);
        this.f9831c = new AtomicReference<>(null);
        this.f9832d = new e(Looper.getMainLooper());
        this.f9833e = cVar;
    }

    public final void b(ConnectionResult connectionResult, int i2) {
        Q q = new Q(connectionResult, i2);
        if (this.f9831c.compareAndSet(null, q)) {
            this.f9832d.post(new S(this, q));
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x005c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r4, int r5, android.content.Intent r6) {
        /*
            r3 = this;
            java.util.concurrent.atomic.AtomicReference<c.e.a.b.d.a.a.Q> r0 = r3.f9831c
            java.lang.Object r0 = r0.get()
            c.e.a.b.d.a.a.Q r0 = (c.e.a.b.d.a.a.Q) r0
            r1 = 1
            r2 = 0
            if (r4 == r1) goto L_0x0030
            r5 = 2
            if (r4 == r5) goto L_0x0010
            goto L_0x0055
        L_0x0010:
            c.e.a.b.d.c r4 = r3.f9833e
            android.app.Activity r5 = r3.a()
            int r4 = r4.b((android.content.Context) r5)
            if (r4 != 0) goto L_0x001d
            goto L_0x001e
        L_0x001d:
            r1 = 0
        L_0x001e:
            if (r0 != 0) goto L_0x0021
            return
        L_0x0021:
            com.google.android.gms.common.ConnectionResult r5 = r0.a()
            int r5 = r5.x()
            r6 = 18
            if (r5 != r6) goto L_0x0056
            if (r4 != r6) goto L_0x0056
            return
        L_0x0030:
            r4 = -1
            if (r5 != r4) goto L_0x0034
            goto L_0x0056
        L_0x0034:
            if (r5 != 0) goto L_0x0055
            r4 = 13
            if (r6 == 0) goto L_0x0040
            java.lang.String r5 = "<<ResolutionFailureErrorDetail>>"
            int r4 = r6.getIntExtra(r5, r4)
        L_0x0040:
            c.e.a.b.d.a.a.Q r5 = new c.e.a.b.d.a.a.Q
            com.google.android.gms.common.ConnectionResult r6 = new com.google.android.gms.common.ConnectionResult
            r1 = 0
            r6.<init>(r4, r1)
            int r4 = a((c.e.a.b.d.a.a.Q) r0)
            r5.<init>(r6, r4)
            java.util.concurrent.atomic.AtomicReference<c.e.a.b.d.a.a.Q> r4 = r3.f9831c
            r4.set(r5)
            r0 = r5
        L_0x0055:
            r1 = 0
        L_0x0056:
            if (r1 == 0) goto L_0x005c
            r3.g()
            return
        L_0x005c:
            if (r0 == 0) goto L_0x0069
            com.google.android.gms.common.ConnectionResult r4 = r0.a()
            int r5 = r0.b()
            r3.a(r4, r5)
        L_0x0069:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.d.a.a.P.a(int, int, android.content.Intent):void");
    }

    public static int a(Q q) {
        if (q == null) {
            return -1;
        }
        return q.b();
    }
}
