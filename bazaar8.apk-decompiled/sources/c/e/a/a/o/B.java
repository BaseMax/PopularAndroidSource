package c.e.a.a.o;

import c.e.a.a.C0744q;
import c.e.a.a.K;

/* compiled from: StandaloneMediaClock */
public final class B implements r {

    /* renamed from: a  reason: collision with root package name */
    public final C0738f f9552a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f9553b;

    /* renamed from: c  reason: collision with root package name */
    public long f9554c;

    /* renamed from: d  reason: collision with root package name */
    public long f9555d;

    /* renamed from: e  reason: collision with root package name */
    public K f9556e = K.f7299a;

    public B(C0738f fVar) {
        this.f9552a = fVar;
    }

    public void a(long j2) {
        this.f9554c = j2;
        if (this.f9553b) {
            this.f9555d = this.f9552a.a();
        }
    }

    public long b() {
        long j2;
        long j3 = this.f9554c;
        if (!this.f9553b) {
            return j3;
        }
        long a2 = this.f9552a.a() - this.f9555d;
        K k2 = this.f9556e;
        if (k2.f7300b == 1.0f) {
            j2 = C0744q.a(a2);
        } else {
            j2 = k2.a(a2);
        }
        return j3 + j2;
    }

    public void c() {
        if (!this.f9553b) {
            this.f9555d = this.f9552a.a();
            this.f9553b = true;
        }
    }

    public void d() {
        if (this.f9553b) {
            a(b());
            this.f9553b = false;
        }
    }

    public K a(K k2) {
        if (this.f9553b) {
            a(b());
        }
        this.f9556e = k2;
        return k2;
    }

    public K a() {
        return this.f9556e;
    }
}
