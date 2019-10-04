package c.e.a.a.e;

import c.e.a.a.e.o;
import c.e.a.a.o.I;
import com.crashlytics.android.answers.RetryManager;

/* compiled from: ConstantBitrateSeekMap */
public class c implements o {

    /* renamed from: a  reason: collision with root package name */
    public final long f7654a;

    /* renamed from: b  reason: collision with root package name */
    public final long f7655b;

    /* renamed from: c  reason: collision with root package name */
    public final int f7656c;

    /* renamed from: d  reason: collision with root package name */
    public final long f7657d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7658e;

    /* renamed from: f  reason: collision with root package name */
    public final long f7659f;

    public c(long j2, long j3, int i2, int i3) {
        this.f7654a = j2;
        this.f7655b = j3;
        this.f7656c = i3 == -1 ? 1 : i3;
        this.f7658e = i2;
        if (j2 == -1) {
            this.f7657d = -1;
            this.f7659f = -9223372036854775807L;
            return;
        }
        this.f7657d = j2 - j3;
        this.f7659f = a(j2, j3, i2);
    }

    public static long a(long j2, long j3, int i2) {
        return ((Math.max(0, j2 - j3) * 8) * RetryManager.NANOSECONDS_IN_MS) / ((long) i2);
    }

    public o.a b(long j2) {
        if (this.f7657d == -1) {
            return new o.a(new p(0, this.f7655b));
        }
        long c2 = c(j2);
        long d2 = d(c2);
        p pVar = new p(d2, c2);
        if (d2 < j2) {
            int i2 = this.f7656c;
            if (((long) i2) + c2 < this.f7654a) {
                long j3 = c2 + ((long) i2);
                return new o.a(pVar, new p(d(j3), j3));
            }
        }
        return new o.a(pVar);
    }

    public boolean c() {
        return this.f7657d != -1;
    }

    public long d() {
        return this.f7659f;
    }

    public final long c(long j2) {
        int i2 = this.f7656c;
        return this.f7655b + I.b((((j2 * ((long) this.f7658e)) / 8000000) / ((long) i2)) * ((long) i2), 0, this.f7657d - ((long) i2));
    }

    public long d(long j2) {
        return a(j2, this.f7655b, this.f7658e);
    }
}
