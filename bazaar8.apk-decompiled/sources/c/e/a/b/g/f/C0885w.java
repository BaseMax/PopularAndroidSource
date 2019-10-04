package c.e.a.b.g.f;

import android.app.Activity;
import android.os.Bundle;
import c.e.a.b.e.b;
import c.e.a.b.g.f.C0802b;

/* renamed from: c.e.a.b.g.f.w  reason: case insensitive filesystem */
public final class C0885w extends C0802b.a {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Activity f10546e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Bundle f10547f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C0802b.c f10548g;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0885w(C0802b.c cVar, Activity activity, Bundle bundle) {
        super(C0802b.this);
        this.f10548g = cVar;
        this.f10546e = activity;
        this.f10547f = bundle;
    }

    public final void a() {
        C0802b.this.n.onActivityCreated(b.a(this.f10546e), this.f10547f, this.f10338b);
    }
}
