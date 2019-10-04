package c.e.a.b.g.f;

import android.app.Activity;
import c.e.a.b.e.b;
import c.e.a.b.g.f.C0802b;

public final class B extends C0802b.a {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Activity f10138e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ bd f10139f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C0802b.c f10140g;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public B(C0802b.c cVar, Activity activity, bd bdVar) {
        super(C0802b.this);
        this.f10140g = cVar;
        this.f10138e = activity;
        this.f10139f = bdVar;
    }

    public final void a() {
        C0802b.this.n.onActivitySaveInstanceState(b.a(this.f10138e), this.f10139f, this.f10338b);
    }
}
