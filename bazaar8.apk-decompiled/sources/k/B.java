package k;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* compiled from: Timeout */
public class B {

    /* renamed from: a  reason: collision with root package name */
    public static final B f15720a = new A();

    /* renamed from: b  reason: collision with root package name */
    public boolean f15721b;

    /* renamed from: c  reason: collision with root package name */
    public long f15722c;

    /* renamed from: d  reason: collision with root package name */
    public long f15723d;

    public B a(long j2, TimeUnit timeUnit) {
        if (j2 < 0) {
            throw new IllegalArgumentException("timeout < 0: " + j2);
        } else if (timeUnit != null) {
            this.f15723d = timeUnit.toNanos(j2);
            return this;
        } else {
            throw new IllegalArgumentException("unit == null");
        }
    }

    public B b() {
        this.f15723d = 0;
        return this;
    }

    public long c() {
        if (this.f15721b) {
            return this.f15722c;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean d() {
        return this.f15721b;
    }

    public void e() {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        } else if (this.f15721b && this.f15722c - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public long f() {
        return this.f15723d;
    }

    public B a(long j2) {
        this.f15721b = true;
        this.f15722c = j2;
        return this;
    }

    public B a() {
        this.f15721b = false;
        return this;
    }
}
