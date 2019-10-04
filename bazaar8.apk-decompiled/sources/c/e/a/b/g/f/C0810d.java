package c.e.a.b.g.f;

import android.os.Bundle;
import c.e.a.b.g.f.C0802b;

/* renamed from: c.e.a.b.g.f.d  reason: case insensitive filesystem */
public final class C0810d extends C0802b.a {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f10364e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f10365f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Bundle f10366g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ C0802b f10367h;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0810d(C0802b bVar, String str, String str2, Bundle bundle) {
        super(bVar);
        this.f10367h = bVar;
        this.f10364e = str;
        this.f10365f = str2;
        this.f10366g = bundle;
    }

    public final void a() {
        this.f10367h.n.clearConditionalUserProperty(this.f10364e, this.f10365f, this.f10366g);
    }
}
