package e.a.a.a.a.c.a;

/* compiled from: RetryState */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public final int f13725a;

    /* renamed from: b  reason: collision with root package name */
    public final a f13726b;

    /* renamed from: c  reason: collision with root package name */
    public final d f13727c;

    public e(a aVar, d dVar) {
        this(0, aVar, dVar);
    }

    public long a() {
        return this.f13726b.getDelayMillis(this.f13725a);
    }

    public e b() {
        return new e(this.f13726b, this.f13727c);
    }

    public e c() {
        return new e(this.f13725a + 1, this.f13726b, this.f13727c);
    }

    public e(int i2, a aVar, d dVar) {
        this.f13725a = i2;
        this.f13726b = aVar;
        this.f13727c = dVar;
    }
}
