package c.b.a.c.b.a;

import c.b.a.c.b.a.m;
import c.b.a.i.k;
import java.util.Queue;

/* compiled from: BaseKeyPool */
public abstract class d<T extends m> {

    /* renamed from: a  reason: collision with root package name */
    public final Queue<T> f3851a = k.a(20);

    public abstract T a();

    public void a(T t) {
        if (this.f3851a.size() < 20) {
            this.f3851a.offer(t);
        }
    }

    public T b() {
        T t = (m) this.f3851a.poll();
        return t == null ? a() : t;
    }
}
