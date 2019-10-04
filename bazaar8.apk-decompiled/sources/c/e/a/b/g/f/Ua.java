package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzfh;

public abstract class Ua {

    /* renamed from: a  reason: collision with root package name */
    public int f10239a;

    /* renamed from: b  reason: collision with root package name */
    public int f10240b;

    /* renamed from: c  reason: collision with root package name */
    public int f10241c;

    /* renamed from: d  reason: collision with root package name */
    public Xa f10242d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f10243e;

    public Ua() {
        this.f10240b = 100;
        this.f10241c = Integer.MAX_VALUE;
        this.f10243e = false;
    }

    public static int a(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public static long a(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    public static Ua a(byte[] bArr, int i2, int i3) {
        return a(bArr, i2, i3, false);
    }

    public abstract double a();

    public abstract <T extends Sb> T a(C0805bc<T> bcVar, C0808cb cbVar);

    public abstract float b();

    public abstract void b(int i2);

    public abstract String c();

    public abstract boolean c(int i2);

    public abstract int d();

    public final int d(int i2) {
        if (i2 >= 0) {
            int i3 = this.f10240b;
            this.f10240b = i2;
            return i3;
        }
        StringBuilder sb = new StringBuilder(47);
        sb.append("Recursion limit cannot be negative: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    public abstract int e(int i2);

    public abstract long e();

    public abstract long f();

    public abstract void f(int i2);

    public abstract int g();

    public abstract void g(int i2);

    public abstract long h();

    public abstract int i();

    public abstract boolean j();

    public abstract String k();

    public abstract zzdp l();

    public abstract int m();

    public abstract int n();

    public abstract int o();

    public abstract long p();

    public abstract int q();

    public abstract long r();

    public abstract boolean s();

    public abstract int t();

    public static Ua a(byte[] bArr, int i2, int i3, boolean z) {
        Wa wa = new Wa(bArr, i2, i3, false);
        try {
            wa.e(i3);
            return wa;
        } catch (zzfh e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
