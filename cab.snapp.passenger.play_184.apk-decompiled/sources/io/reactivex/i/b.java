package io.reactivex.i;

import java.util.concurrent.TimeUnit;

public final class b<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f6727a;

    /* renamed from: b  reason: collision with root package name */
    final long f6728b;
    final TimeUnit c;

    public b(T t, long j, TimeUnit timeUnit) {
        this.f6727a = t;
        this.f6728b = j;
        this.c = (TimeUnit) io.reactivex.internal.a.b.requireNonNull(timeUnit, "unit is null");
    }

    public final T value() {
        return this.f6727a;
    }

    public final TimeUnit unit() {
        return this.c;
    }

    public final long time() {
        return this.f6728b;
    }

    public final long time(TimeUnit timeUnit) {
        return timeUnit.convert(this.f6728b, this.c);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (io.reactivex.internal.a.b.equals(this.f6727a, bVar.f6727a) && this.f6728b == bVar.f6728b && io.reactivex.internal.a.b.equals(this.c, bVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        T t = this.f6727a;
        int hashCode = t != null ? t.hashCode() : 0;
        long j = this.f6728b;
        return (((hashCode * 31) + ((int) (j ^ (j >>> 31)))) * 31) + this.c.hashCode();
    }

    public final String toString() {
        return "Timed[time=" + this.f6728b + ", unit=" + this.c + ", value=" + this.f6727a + "]";
    }
}
