package c.b.a.c.c;

import c.b.a.i.f;
import c.b.a.i.k;
import java.util.Queue;

/* compiled from: ModelCache */
public class t<A, B> {

    /* renamed from: a  reason: collision with root package name */
    public final f<a<A>, B> f4114a;

    /* compiled from: ModelCache */
    static final class a<A> {

        /* renamed from: a  reason: collision with root package name */
        public static final Queue<a<?>> f4115a = k.a(0);

        /* renamed from: b  reason: collision with root package name */
        public int f4116b;

        /* renamed from: c  reason: collision with root package name */
        public int f4117c;

        /* renamed from: d  reason: collision with root package name */
        public A f4118d;

        public static <A> a<A> a(A a2, int i2, int i3) {
            a<A> poll;
            synchronized (f4115a) {
                poll = f4115a.poll();
            }
            if (poll == null) {
                poll = new a<>();
            }
            poll.b(a2, i2, i3);
            return poll;
        }

        public final void b(A a2, int i2, int i3) {
            this.f4118d = a2;
            this.f4117c = i2;
            this.f4116b = i3;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f4117c == aVar.f4117c && this.f4116b == aVar.f4116b && this.f4118d.equals(aVar.f4118d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f4116b * 31) + this.f4117c) * 31) + this.f4118d.hashCode();
        }

        public void a() {
            synchronized (f4115a) {
                f4115a.offer(this);
            }
        }
    }

    public t(long j2) {
        this.f4114a = new s(this, j2);
    }

    public B a(A a2, int i2, int i3) {
        a a3 = a.a(a2, i2, i3);
        B a4 = this.f4114a.a(a3);
        a3.a();
        return a4;
    }

    public void a(A a2, int i2, int i3, B b2) {
        this.f4114a.b(a.a(a2, i2, i3), b2);
    }
}
