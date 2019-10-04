package c.c.a.c.f.a;

import c.c.a.c.f.a.c.a;
import c.e.d.k;
import com.farsitel.bazaar.common.sweep.gson.unwrapper.UnwrapperTypeAdapterFactory;
import com.farsitel.bazaar.common.sweep.gson.wrapper.WrapperTypeAdapterFactory;
import h.f.b.j;

/* compiled from: Builder.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final c f4720a = new c();

    /* renamed from: b  reason: collision with root package name */
    public final b f4721b = new b();

    /* renamed from: c  reason: collision with root package name */
    public final a f4722c = new a();

    /* renamed from: d  reason: collision with root package name */
    public a f4723d = this.f4720a;

    /* renamed from: e  reason: collision with root package name */
    public c.c.a.c.f.a.b.a f4724e = this.f4721b;

    /* renamed from: f  reason: collision with root package name */
    public c.c.a.c.f.a.a.a f4725f = this.f4722c;

    /* renamed from: g  reason: collision with root package name */
    public final k f4726g;

    public d(k kVar) {
        j.b(kVar, "gsonBuilder");
        this.f4726g = kVar;
    }

    public final void a(c.c.a.c.f.a.b.a aVar) {
        j.b(aVar, "<set-?>");
        this.f4724e = aVar;
    }

    public final void a(c.c.a.c.f.a.a.a aVar) {
        j.b(aVar, "<set-?>");
        this.f4725f = aVar;
    }

    public final k a() {
        WrapperTypeAdapterFactory wrapperTypeAdapterFactory = new WrapperTypeAdapterFactory(this.f4723d, this.f4725f);
        UnwrapperTypeAdapterFactory unwrapperTypeAdapterFactory = new UnwrapperTypeAdapterFactory(this.f4724e);
        this.f4726g.a(wrapperTypeAdapterFactory);
        this.f4726g.a(unwrapperTypeAdapterFactory);
        return this.f4726g;
    }
}
