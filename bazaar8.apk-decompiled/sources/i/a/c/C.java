package i.a.c;

import h.c.e;
import h.f.b.j;

/* compiled from: ThreadContext.kt */
public final class C {

    /* renamed from: a  reason: collision with root package name */
    public Object[] f14740a;

    /* renamed from: b  reason: collision with root package name */
    public int f14741b;

    /* renamed from: c  reason: collision with root package name */
    public final e f14742c;

    public C(e eVar, int i2) {
        j.b(eVar, "context");
        this.f14742c = eVar;
        this.f14740a = new Object[i2];
    }

    public final e a() {
        return this.f14742c;
    }

    public final void b() {
        this.f14741b = 0;
    }

    public final Object c() {
        Object[] objArr = this.f14740a;
        int i2 = this.f14741b;
        this.f14741b = i2 + 1;
        return objArr[i2];
    }

    public final void a(Object obj) {
        Object[] objArr = this.f14740a;
        int i2 = this.f14741b;
        this.f14741b = i2 + 1;
        objArr[i2] = obj;
    }
}
