package c.e.a.b.g.f;

import android.app.Activity;
import c.e.a.b.e.b;
import c.e.a.b.g.f.C0802b;

public final class A extends C0802b.a {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Activity f10125e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0802b.c f10126f;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public A(C0802b.c cVar, Activity activity) {
        super(C0802b.this);
        this.f10126f = cVar;
        this.f10125e = activity;
    }

    public final void a() {
        C0802b.this.n.onActivityStopped(b.a(this.f10125e), this.f10338b);
    }
}
