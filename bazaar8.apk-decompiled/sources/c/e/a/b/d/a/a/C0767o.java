package c.e.a.b.d.a.a;

import android.app.Activity;
import b.f.d;
import c.e.a.b.d.d.r;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.LifecycleCallback;

/* renamed from: c.e.a.b.d.a.a.o  reason: case insensitive filesystem */
public class C0767o extends P {

    /* renamed from: f  reason: collision with root package name */
    public final d<N<?>> f9902f = new d<>();

    /* renamed from: g  reason: collision with root package name */
    public C0755c f9903g;

    public C0767o(C0758f fVar) {
        super(fVar);
        this.f13000a.a("ConnectionlessLifecycleHelper", (LifecycleCallback) this);
    }

    public static void a(Activity activity, C0755c cVar, N<?> n) {
        C0758f a2 = LifecycleCallback.a(activity);
        C0767o oVar = (C0767o) a2.a("ConnectionlessLifecycleHelper", C0767o.class);
        if (oVar == null) {
            oVar = new C0767o(a2);
        }
        oVar.f9903g = cVar;
        r.a(n, (Object) "ApiKey cannot be null");
        oVar.f9902f.add(n);
        cVar.a(oVar);
    }

    public void c() {
        super.c();
        i();
    }

    public void d() {
        super.d();
        i();
    }

    public void e() {
        super.e();
        this.f9903g.b(this);
    }

    public final void f() {
        this.f9903g.d();
    }

    public final d<N<?>> h() {
        return this.f9902f;
    }

    public final void i() {
        if (!this.f9902f.isEmpty()) {
            this.f9903g.a(this);
        }
    }

    public final void a(ConnectionResult connectionResult, int i2) {
        this.f9903g.a(connectionResult, i2);
    }
}
