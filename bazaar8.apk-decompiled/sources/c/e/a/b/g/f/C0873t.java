package c.e.a.b.g.f;

import android.os.Bundle;
import c.e.a.b.g.f.C0802b;

/* renamed from: c.e.a.b.g.f.t  reason: case insensitive filesystem */
public final class C0873t extends C0802b.a {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Long f10527e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f10528f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ String f10529g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Bundle f10530h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ boolean f10531i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ boolean f10532j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ C0802b f10533k;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0873t(C0802b bVar, Long l2, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(bVar);
        this.f10533k = bVar;
        this.f10527e = l2;
        this.f10528f = str;
        this.f10529g = str2;
        this.f10530h = bundle;
        this.f10531i = z;
        this.f10532j = z2;
    }

    public final void a() {
        Long l2 = this.f10527e;
        this.f10533k.n.logEvent(this.f10528f, this.f10529g, this.f10530h, this.f10531i, this.f10532j, l2 == null ? this.f10337a : l2.longValue());
    }
}
