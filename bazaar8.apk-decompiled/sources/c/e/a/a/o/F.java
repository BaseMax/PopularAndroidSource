package c.e.a.a.o;

import com.crashlytics.android.answers.RetryManager;

/* compiled from: TimestampAdjuster */
public final class F {

    /* renamed from: a  reason: collision with root package name */
    public long f9562a;

    /* renamed from: b  reason: collision with root package name */
    public long f9563b;

    /* renamed from: c  reason: collision with root package name */
    public volatile long f9564c = -9223372036854775807L;

    public F(long j2) {
        d(j2);
    }

    public long a() {
        return this.f9562a;
    }

    public long b() {
        if (this.f9564c != -9223372036854775807L) {
            return this.f9563b + this.f9564c;
        }
        long j2 = this.f9562a;
        if (j2 != Long.MAX_VALUE) {
            return j2;
        }
        return -9223372036854775807L;
    }

    public long c() {
        if (this.f9562a == Long.MAX_VALUE) {
            return 0;
        }
        if (this.f9564c == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return this.f9563b;
    }

    public synchronized void d(long j2) {
        C0737e.b(this.f9564c == -9223372036854775807L);
        this.f9562a = j2;
    }

    public synchronized void e() {
        while (this.f9564c == -9223372036854775807L) {
            wait();
        }
    }

    public static long c(long j2) {
        return (j2 * RetryManager.NANOSECONDS_IN_MS) / 90000;
    }

    public long a(long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f9564c != -9223372036854775807L) {
            this.f9564c = j2;
        } else {
            long j3 = this.f9562a;
            if (j3 != Long.MAX_VALUE) {
                this.f9563b = j3 - j2;
            }
            synchronized (this) {
                this.f9564c = j2;
                notifyAll();
            }
        }
        return j2 + this.f9563b;
    }

    public long b(long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f9564c != -9223372036854775807L) {
            long e2 = e(this.f9564c);
            long j3 = (4294967296L + e2) / 8589934592L;
            long j4 = ((j3 - 1) * 8589934592L) + j2;
            j2 += j3 * 8589934592L;
            if (Math.abs(j4 - e2) < Math.abs(j2 - e2)) {
                j2 = j4;
            }
        }
        return a(c(j2));
    }

    public static long e(long j2) {
        return (j2 * 90000) / RetryManager.NANOSECONDS_IN_MS;
    }

    public void d() {
        this.f9564c = -9223372036854775807L;
    }
}
