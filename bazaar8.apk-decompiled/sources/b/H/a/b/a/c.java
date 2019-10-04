package b.H.a.b.a;

import b.H.a.b.b.e;
import b.H.a.c.o;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ConstraintController */
public abstract class c<T> implements b.H.a.b.a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f1390a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public T f1391b;

    /* renamed from: c  reason: collision with root package name */
    public e<T> f1392c;

    /* renamed from: d  reason: collision with root package name */
    public a f1393d;

    /* compiled from: ConstraintController */
    public interface a {
        void a(List<String> list);

        void b(List<String> list);
    }

    public c(e<T> eVar) {
        this.f1392c = eVar;
    }

    public void a(a aVar) {
        if (this.f1393d != aVar) {
            this.f1393d = aVar;
            b();
        }
    }

    public abstract boolean a(o oVar);

    public final void b() {
        if (!this.f1390a.isEmpty() && this.f1393d != null) {
            T t = this.f1391b;
            if (t == null || b(t)) {
                this.f1393d.b(this.f1390a);
            } else {
                this.f1393d.a(this.f1390a);
            }
        }
    }

    public abstract boolean b(T t);

    public void a(List<o> list) {
        this.f1390a.clear();
        for (o next : list) {
            if (a(next)) {
                this.f1390a.add(next.f1466c);
            }
        }
        if (this.f1390a.isEmpty()) {
            this.f1392c.b(this);
        } else {
            this.f1392c.a(this);
        }
        b();
    }

    public void a() {
        if (!this.f1390a.isEmpty()) {
            this.f1390a.clear();
            this.f1392c.b(this);
        }
    }

    public boolean a(String str) {
        T t = this.f1391b;
        return t != null && b(t) && this.f1390a.contains(str);
    }

    public void a(T t) {
        this.f1391b = t;
        b();
    }
}
