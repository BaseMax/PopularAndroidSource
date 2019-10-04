package c.e.a.b.g.f;

import android.app.Activity;
import c.e.a.b.e.b;
import c.e.a.b.g.f.C0802b;

/* renamed from: c.e.a.b.g.f.z  reason: case insensitive filesystem */
public final class C0897z extends C0802b.a {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Activity f10564e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0802b.c f10565f;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0897z(C0802b.c cVar, Activity activity) {
        super(C0802b.this);
        this.f10565f = cVar;
        this.f10564e = activity;
    }

    public final void a() {
        C0802b.this.n.onActivityPaused(b.a(this.f10564e), this.f10338b);
    }
}
