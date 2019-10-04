package c.c.a.c.f.a;

import c.e.d.c.a;
import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.j;
import c.e.d.p;
import c.e.d.x;
import com.crashlytics.android.answers.SessionEventTransform;

/* compiled from: SweepTypeAdapter.kt */
public abstract class f<T> extends x<T> {

    /* renamed from: a  reason: collision with root package name */
    public final j f4727a;

    /* renamed from: b  reason: collision with root package name */
    public final x<T> f4728b;

    /* renamed from: c  reason: collision with root package name */
    public final x<p> f4729c;

    /* renamed from: d  reason: collision with root package name */
    public final a<T> f4730d;

    public f(j jVar, x<T> xVar, x<p> xVar2, a<T> aVar) {
        h.f.b.j.b(jVar, "gson");
        h.f.b.j.b(xVar, "delegate");
        h.f.b.j.b(xVar2, "elementAdapter");
        h.f.b.j.b(aVar, SessionEventTransform.TYPE_KEY);
        this.f4727a = jVar;
        this.f4728b = xVar;
        this.f4729c = xVar2;
        this.f4730d = aVar;
    }

    public void a(c cVar, T t) {
        h.f.b.j.b(cVar, "out");
        this.f4728b.a(cVar, t);
    }

    public final x<T> b() {
        return this.f4728b;
    }

    public final x<p> c() {
        return this.f4729c;
    }

    public final j d() {
        return this.f4727a;
    }

    public final a<T> e() {
        return this.f4730d;
    }

    public T a(b bVar) {
        h.f.b.j.b(bVar, "in");
        return this.f4728b.a(this.f4729c.a(bVar));
    }
}
