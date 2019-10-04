package c.e.a.a.j;

import android.os.Handler;
import c.e.a.a.Z;
import c.e.a.a.j.v;
import c.e.a.a.j.w;
import c.e.a.a.n.A;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import java.io.IOException;
import java.util.HashMap;

/* compiled from: CompositeMediaSource */
public abstract class o<T> extends m {

    /* renamed from: f  reason: collision with root package name */
    public final HashMap<T, b> f8961f = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    public Handler f8962g;

    /* renamed from: h  reason: collision with root package name */
    public A f8963h;

    /* compiled from: CompositeMediaSource */
    private final class a implements w {

        /* renamed from: a  reason: collision with root package name */
        public final T f8964a;

        /* renamed from: b  reason: collision with root package name */
        public w.a f8965b;

        public a(T t) {
            this.f8965b = o.this.a((v.a) null);
            this.f8964a = t;
        }

        public void a(int i2, v.a aVar, w.b bVar, w.c cVar) {
            if (d(i2, aVar)) {
                this.f8965b.b(bVar, a(cVar));
            }
        }

        public void b(int i2, v.a aVar) {
            if (d(i2, aVar)) {
                this.f8965b.b();
            }
        }

        public void c(int i2, v.a aVar) {
            if (d(i2, aVar)) {
                this.f8965b.a();
            }
        }

        public final boolean d(int i2, v.a aVar) {
            v.a aVar2;
            if (aVar != null) {
                aVar2 = o.this.a(this.f8964a, aVar);
                if (aVar2 == null) {
                    return false;
                }
            } else {
                aVar2 = null;
            }
            o.this.a(this.f8964a, i2);
            w.a aVar3 = this.f8965b;
            if (aVar3.f8981a != i2 || !I.a((Object) aVar3.f8982b, (Object) aVar2)) {
                this.f8965b = o.this.a(i2, aVar2, 0);
            }
            return true;
        }

        public void a(int i2, v.a aVar, w.b bVar, w.c cVar, IOException iOException, boolean z) {
            if (d(i2, aVar)) {
                this.f8965b.a(bVar, a(cVar), iOException, z);
            }
        }

        public void b(int i2, v.a aVar, w.b bVar, w.c cVar) {
            if (d(i2, aVar)) {
                this.f8965b.a(bVar, a(cVar));
            }
        }

        public void c(int i2, v.a aVar, w.b bVar, w.c cVar) {
            if (d(i2, aVar)) {
                this.f8965b.c(bVar, a(cVar));
            }
        }

        public void b(int i2, v.a aVar, w.c cVar) {
            if (d(i2, aVar)) {
                this.f8965b.a(a(cVar));
            }
        }

        public void a(int i2, v.a aVar) {
            if (d(i2, aVar)) {
                this.f8965b.c();
            }
        }

        public void a(int i2, v.a aVar, w.c cVar) {
            if (d(i2, aVar)) {
                this.f8965b.b(a(cVar));
            }
        }

        public final w.c a(w.c cVar) {
            o oVar = o.this;
            T t = this.f8964a;
            long j2 = cVar.f8998f;
            oVar.a(t, j2);
            o oVar2 = o.this;
            T t2 = this.f8964a;
            long j3 = cVar.f8999g;
            oVar2.a(t2, j3);
            if (j2 == cVar.f8998f && j3 == cVar.f8999g) {
                return cVar;
            }
            w.c cVar2 = new w.c(cVar.f8993a, cVar.f8994b, cVar.f8995c, cVar.f8996d, cVar.f8997e, j2, j3);
            return cVar2;
        }
    }

    /* compiled from: CompositeMediaSource */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final v f8967a;

        /* renamed from: b  reason: collision with root package name */
        public final v.b f8968b;

        /* renamed from: c  reason: collision with root package name */
        public final w f8969c;

        public b(v vVar, v.b bVar, w wVar) {
            this.f8967a = vVar;
            this.f8968b = bVar;
            this.f8969c = wVar;
        }
    }

    public int a(T t, int i2) {
        return i2;
    }

    public long a(T t, long j2) {
        return j2;
    }

    public abstract v.a a(T t, v.a aVar);

    public void a(A a2) {
        this.f8963h = a2;
        this.f8962g = new Handler();
    }

    public void b() {
        for (b next : this.f8961f.values()) {
            next.f8967a.a(next.f8968b);
            next.f8967a.a(next.f8969c);
        }
        this.f8961f.clear();
    }

    /* renamed from: b */
    public abstract void a(T t, v vVar, Z z, Object obj);

    public void a() {
        for (b bVar : this.f8961f.values()) {
            bVar.f8967a.a();
        }
    }

    public final void a(T t, v vVar) {
        C0737e.a(!this.f8961f.containsKey(t));
        C0716a aVar = new C0716a(this, t);
        a aVar2 = new a(t);
        this.f8961f.put(t, new b(vVar, aVar, aVar2));
        Handler handler = this.f8962g;
        C0737e.a(handler);
        vVar.a(handler, (w) aVar2);
        vVar.a((v.b) aVar, this.f8963h);
    }
}
