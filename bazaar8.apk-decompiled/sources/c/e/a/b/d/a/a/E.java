package c.e.a.b.d.a.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import c.e.a.b.d.a.a;
import c.e.a.b.d.a.d;
import c.e.a.b.d.d.C0782e;
import c.e.a.b.d.d.r;
import c.e.a.b.i.a.c;
import c.e.a.b.i.b;
import c.e.a.b.i.e;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.internal.zaj;
import java.util.Set;

public final class E extends c implements d.a, d.b {

    /* renamed from: a  reason: collision with root package name */
    public static a.C0120a<? extends e, c.e.a.b.i.a> f9803a = b.f11128c;

    /* renamed from: b  reason: collision with root package name */
    public final Context f9804b;

    /* renamed from: c  reason: collision with root package name */
    public final Handler f9805c;

    /* renamed from: d  reason: collision with root package name */
    public final a.C0120a<? extends e, c.e.a.b.i.a> f9806d;

    /* renamed from: e  reason: collision with root package name */
    public Set<Scope> f9807e;

    /* renamed from: f  reason: collision with root package name */
    public C0782e f9808f;

    /* renamed from: g  reason: collision with root package name */
    public e f9809g;

    /* renamed from: h  reason: collision with root package name */
    public H f9810h;

    public E(Context context, Handler handler, C0782e eVar) {
        this(context, handler, eVar, f9803a);
    }

    public final void A() {
        e eVar = this.f9809g;
        if (eVar != null) {
            eVar.a();
        }
    }

    public final void a(H h2) {
        e eVar = this.f9809g;
        if (eVar != null) {
            eVar.a();
        }
        this.f9808f.a(Integer.valueOf(System.identityHashCode(this)));
        a.C0120a<? extends e, c.e.a.b.i.a> aVar = this.f9806d;
        Context context = this.f9804b;
        Looper looper = this.f9805c.getLooper();
        C0782e eVar2 = this.f9808f;
        this.f9809g = (e) aVar.a(context, looper, eVar2, eVar2.h(), this, this);
        this.f9810h = h2;
        Set<Scope> set = this.f9807e;
        if (set == null || set.isEmpty()) {
            this.f9805c.post(new F(this));
        } else {
            this.f9809g.connect();
        }
    }

    public final void b(zaj zaj) {
        ConnectionResult x = zaj.x();
        if (x.B()) {
            ResolveAccountResponse y = zaj.y();
            ConnectionResult y2 = y.y();
            if (!y2.B()) {
                String valueOf = String.valueOf(y2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                sb.append("Sign-in succeeded with resolve account failure: ");
                sb.append(valueOf);
                Log.wtf("SignInCoordinator", sb.toString(), new Exception());
                this.f9810h.b(y2);
                this.f9809g.a();
                return;
            }
            this.f9810h.a(y.x(), this.f9807e);
        } else {
            this.f9810h.b(x);
        }
        this.f9809g.a();
    }

    public final void d(Bundle bundle) {
        this.f9809g.a(this);
    }

    public final void f(int i2) {
        this.f9809g.a();
    }

    public E(Context context, Handler handler, C0782e eVar, a.C0120a<? extends e, c.e.a.b.i.a> aVar) {
        this.f9804b = context;
        this.f9805c = handler;
        r.a(eVar, (Object) "ClientSettings must not be null");
        this.f9808f = eVar;
        this.f9807e = eVar.g();
        this.f9806d = aVar;
    }

    public final void a(ConnectionResult connectionResult) {
        this.f9810h.b(connectionResult);
    }

    public final void a(zaj zaj) {
        this.f9805c.post(new G(this, zaj));
    }
}
