package c.c.a.h.b;

import android.content.Context;
import c.c.a.e.h.b.f;
import d.b.c;
import d.b.h;
import g.a.a;
import j.I;
import okhttp3.logging.HttpLoggingInterceptor;

/* renamed from: c.c.a.h.b.hb  reason: case insensitive filesystem */
/* compiled from: NetworkModule_ProvideOkHttpClientFactory */
public final class C0610hb implements c<I> {

    /* renamed from: a  reason: collision with root package name */
    public final Ya f5980a;

    /* renamed from: b  reason: collision with root package name */
    public final a<Context> f5981b;

    /* renamed from: c  reason: collision with root package name */
    public final a<HttpLoggingInterceptor> f5982c;

    /* renamed from: d  reason: collision with root package name */
    public final a<f> f5983d;

    /* renamed from: e  reason: collision with root package name */
    public final a<c.c.a.e.h.b.a> f5984e;

    /* renamed from: f  reason: collision with root package name */
    public final a<c.c.a.e.h.a.f> f5985f;

    /* renamed from: g  reason: collision with root package name */
    public final a<c.c.a.e.d.u.a> f5986g;

    public C0610hb(Ya ya, a<Context> aVar, a<HttpLoggingInterceptor> aVar2, a<f> aVar3, a<c.c.a.e.h.b.a> aVar4, a<c.c.a.e.h.a.f> aVar5, a<c.c.a.e.d.u.a> aVar6) {
        this.f5980a = ya;
        this.f5981b = aVar;
        this.f5982c = aVar2;
        this.f5983d = aVar3;
        this.f5984e = aVar4;
        this.f5985f = aVar5;
        this.f5986g = aVar6;
    }

    public static C0610hb a(Ya ya, a<Context> aVar, a<HttpLoggingInterceptor> aVar2, a<f> aVar3, a<c.c.a.e.h.b.a> aVar4, a<c.c.a.e.h.a.f> aVar5, a<c.c.a.e.d.u.a> aVar6) {
        C0610hb hbVar = new C0610hb(ya, aVar, aVar2, aVar3, aVar4, aVar5, aVar6);
        return hbVar;
    }

    public static I b(Ya ya, a<Context> aVar, a<HttpLoggingInterceptor> aVar2, a<f> aVar3, a<c.c.a.e.h.b.a> aVar4, a<c.c.a.e.h.a.f> aVar5, a<c.c.a.e.d.u.a> aVar6) {
        return a(ya, aVar.get(), aVar2.get(), aVar3.get(), aVar4.get(), aVar5.get(), aVar6.get());
    }

    public static I a(Ya ya, Context context, HttpLoggingInterceptor httpLoggingInterceptor, f fVar, c.c.a.e.h.b.a aVar, c.c.a.e.h.a.f fVar2, c.c.a.e.d.u.a aVar2) {
        I a2 = ya.a(context, httpLoggingInterceptor, fVar, aVar, fVar2, aVar2);
        h.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    public I get() {
        return b(this.f5980a, this.f5981b, this.f5982c, this.f5983d, this.f5984e, this.f5985f, this.f5986g);
    }
}
