package c.e.a.a.o;

import com.crashlytics.android.answers.RetryManager;

/* compiled from: FlacStreamInfo */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public final int f9595a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9596b;

    /* renamed from: c  reason: collision with root package name */
    public final int f9597c;

    /* renamed from: d  reason: collision with root package name */
    public final int f9598d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9599e;

    /* renamed from: f  reason: collision with root package name */
    public final int f9600f;

    /* renamed from: g  reason: collision with root package name */
    public final int f9601g;

    /* renamed from: h  reason: collision with root package name */
    public final long f9602h;

    public m(byte[] bArr, int i2) {
        u uVar = new u(bArr);
        uVar.b(i2 * 8);
        this.f9595a = uVar.a(16);
        this.f9596b = uVar.a(16);
        this.f9597c = uVar.a(24);
        this.f9598d = uVar.a(24);
        this.f9599e = uVar.a(20);
        this.f9600f = uVar.a(3) + 1;
        this.f9601g = uVar.a(5) + 1;
        this.f9602h = ((((long) uVar.a(4)) & 15) << 32) | (((long) uVar.a(32)) & 4294967295L);
    }

    public int a() {
        return this.f9601g * this.f9599e;
    }

    public long b() {
        return (this.f9602h * RetryManager.NANOSECONDS_IN_MS) / ((long) this.f9599e);
    }
}
