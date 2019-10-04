package c.e.d.b;

import c.e.d.c.a;
import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;
import com.google.gson.internal.Excluder;

/* compiled from: Excluder */
class q extends x<T> {

    /* renamed from: a  reason: collision with root package name */
    public x<T> f11800a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f11801b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ boolean f11802c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ j f11803d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ a f11804e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Excluder f11805f;

    public q(Excluder excluder, boolean z, boolean z2, j jVar, a aVar) {
        this.f11805f = excluder;
        this.f11801b = z;
        this.f11802c = z2;
        this.f11803d = jVar;
        this.f11804e = aVar;
    }

    public T a(b bVar) {
        if (!this.f11801b) {
            return b().a(bVar);
        }
        bVar.Q();
        return null;
    }

    public final x<T> b() {
        x<T> xVar = this.f11800a;
        if (xVar != null) {
            return xVar;
        }
        x<T> a2 = this.f11803d.a((y) this.f11805f, this.f11804e);
        this.f11800a = a2;
        return a2;
    }

    public void a(c cVar, T t) {
        if (this.f11802c) {
            cVar.C();
        } else {
            b().a(cVar, t);
        }
    }
}
