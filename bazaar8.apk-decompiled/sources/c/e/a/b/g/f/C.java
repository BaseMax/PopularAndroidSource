package c.e.a.b.g.f;

import android.app.Activity;
import c.e.a.b.e.b;
import c.e.a.b.g.f.C0802b;

public final class C extends C0802b.a {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Activity f10144e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0802b.c f10145f;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C(C0802b.c cVar, Activity activity) {
        super(C0802b.this);
        this.f10145f = cVar;
        this.f10144e = activity;
    }

    public final void a() {
        C0802b.this.n.onActivityDestroyed(b.a(this.f10144e), this.f10338b);
    }
}
