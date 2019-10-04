package c.c.a.c.h;

import java.util.concurrent.TimeUnit;

/* compiled from: StopWatch.kt */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public long f4735a;

    /* renamed from: b  reason: collision with root package name */
    public long f4736b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4737c;

    public final void a() {
        this.f4736b += System.nanoTime() - this.f4735a;
        this.f4735a = 0;
    }

    public final long b() {
        return TimeUnit.NANOSECONDS.toMillis(this.f4736b);
    }

    public final void c() {
        if (!this.f4737c && this.f4735a == 0) {
            this.f4735a = System.nanoTime();
        }
    }

    public final long d() {
        if (this.f4737c) {
            return this.f4736b;
        }
        this.f4737c = true;
        if (this.f4735a != 0) {
            a();
        }
        return this.f4736b;
    }
}
