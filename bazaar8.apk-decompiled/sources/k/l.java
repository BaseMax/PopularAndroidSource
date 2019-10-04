package k;

import java.util.concurrent.TimeUnit;

/* compiled from: ForwardingTimeout */
public class l extends B {

    /* renamed from: e  reason: collision with root package name */
    public B f15744e;

    public l(B b2) {
        if (b2 != null) {
            this.f15744e = b2;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public final l a(B b2) {
        if (b2 != null) {
            this.f15744e = b2;
            return this;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public B b() {
        return this.f15744e.b();
    }

    public long c() {
        return this.f15744e.c();
    }

    public boolean d() {
        return this.f15744e.d();
    }

    public void e() {
        this.f15744e.e();
    }

    public final B g() {
        return this.f15744e;
    }

    public B a(long j2, TimeUnit timeUnit) {
        return this.f15744e.a(j2, timeUnit);
    }

    public B a(long j2) {
        return this.f15744e.a(j2);
    }

    public B a() {
        return this.f15744e.a();
    }
}
