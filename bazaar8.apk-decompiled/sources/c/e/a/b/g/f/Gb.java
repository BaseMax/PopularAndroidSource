package c.e.a.b.g.f;

import java.util.List;

public final class Gb extends Db {
    public Gb() {
        super();
    }

    public static <E> C0883vb<E> c(Object obj, long j2) {
        return (C0883vb) Fc.f(obj, j2);
    }

    public final <L> List<L> a(Object obj, long j2) {
        C0883vb c2 = c(obj, j2);
        if (c2.s()) {
            return c2;
        }
        int size = c2.size();
        C0883vb c3 = c2.c(size == 0 ? 10 : size << 1);
        Fc.a(obj, j2, (Object) c3);
        return c3;
    }

    public final void b(Object obj, long j2) {
        c(obj, j2).t();
    }

    public final <E> void a(Object obj, Object obj2, long j2) {
        C0883vb c2 = c(obj, j2);
        C0883vb c3 = c(obj2, j2);
        int size = c2.size();
        int size2 = c3.size();
        if (size > 0 && size2 > 0) {
            if (!c2.s()) {
                c2 = c2.c(size2 + size);
            }
            c2.addAll(c3);
        }
        if (size > 0) {
            c3 = c2;
        }
        Fc.a(obj, j2, (Object) c3);
    }
}
