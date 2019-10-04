package c.c.a.c.f.a.c;

import c.c.a.c.f.a.a.b;
import c.c.a.c.f.a.f;
import c.e.d.c.a;
import c.e.d.j;
import c.e.d.p;
import c.e.d.x;
import com.crashlytics.android.answers.SessionEventTransform;
import h.a.l;
import java.util.List;

/* compiled from: WrapperTypeAdapter.kt */
public final class c<T> extends f<T> {

    /* renamed from: e  reason: collision with root package name */
    public final b f4718e;

    /* renamed from: f  reason: collision with root package name */
    public final b f4719f;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(j jVar, x<T> xVar, x<p> xVar2, a<T> aVar, b bVar, b bVar2) {
        super(jVar, xVar, xVar2, aVar);
        h.f.b.j.b(jVar, "gson");
        h.f.b.j.b(xVar, "delegate");
        h.f.b.j.b(xVar2, "elementAdapter");
        h.f.b.j.b(aVar, SessionEventTransform.TYPE_KEY);
        h.f.b.j.b(bVar, "wrapperNamesBuilder");
        h.f.b.j.b(bVar2, "hooksDelegation");
        this.f4718e = bVar;
        this.f4719f = bVar2;
    }

    public void a(c.e.d.d.c cVar, T t) {
        h.f.b.j.b(cVar, "out");
        List<String> a2 = this.f4718e.a(t);
        cVar.v();
        this.f4719f.a(cVar, d(), t);
        b(cVar, a2);
        b().a(cVar, t);
        a(cVar, a2);
        cVar.x();
    }

    public final void b(c.e.d.d.c cVar, List<String> list) {
        int size = list.size() - 1;
        int i2 = 0;
        for (T next : list) {
            int i3 = i2 + 1;
            if (i2 >= 0) {
                cVar.e((String) next);
                if (i2 != size) {
                    cVar.v();
                }
                i2 = i3;
            } else {
                l.b();
                throw null;
            }
        }
    }

    public final void a(c.e.d.d.c cVar, List<String> list) {
        int size = list.size() - 1;
        for (int i2 = 0; i2 < size; i2++) {
            cVar.x();
        }
    }
}
