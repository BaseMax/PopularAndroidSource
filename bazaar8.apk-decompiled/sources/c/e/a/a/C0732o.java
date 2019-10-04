package c.e.a.a;

import c.e.a.a.M;
import c.e.a.a.Z;

/* renamed from: c.e.a.a.o  reason: case insensitive filesystem */
/* compiled from: BasePlayer */
public abstract class C0732o implements M {

    /* renamed from: a  reason: collision with root package name */
    public final Z.b f9539a = new Z.b();

    /* renamed from: c.e.a.a.o$a */
    /* compiled from: BasePlayer */
    protected static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final M.b f9575a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f9576b;

        public a(M.b bVar) {
            this.f9575a = bVar;
        }

        public void a() {
            this.f9576b = true;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            return this.f9575a.equals(((a) obj).f9575a);
        }

        public int hashCode() {
            return this.f9575a.hashCode();
        }

        public void a(b bVar) {
            if (!this.f9576b) {
                bVar.a(this.f9575a);
            }
        }
    }

    /* renamed from: c.e.a.a.o$b */
    /* compiled from: BasePlayer */
    protected interface b {
        void a(M.b bVar);
    }

    public final void a(long j2) {
        a(j(), j2);
    }

    public final boolean h() {
        Z q = q();
        return !q.c() && q.a(j(), this.f9539a).f7347d;
    }

    public final boolean hasNext() {
        return o() != -1;
    }

    public final boolean hasPrevious() {
        return m() != -1;
    }

    public final int m() {
        Z q = q();
        if (q.c()) {
            return -1;
        }
        return q.b(j(), x(), s());
    }

    public final int o() {
        Z q = q();
        if (q.c()) {
            return -1;
        }
        return q.a(j(), x(), s());
    }

    public final long w() {
        Z q = q();
        if (q.c()) {
            return -9223372036854775807L;
        }
        return q.a(j(), this.f9539a).c();
    }

    public final int x() {
        int d2 = d();
        if (d2 == 1) {
            return 0;
        }
        return d2;
    }

    public final boolean y() {
        Z q = q();
        return !q.c() && q.a(j(), this.f9539a).f7348e;
    }
}
