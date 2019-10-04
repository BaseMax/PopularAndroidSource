package c.b.a.c.b;

import android.os.Looper;
import c.b.a.c.c;
import c.b.a.i.i;

/* compiled from: EngineResource */
public class x<Z> implements D<Z> {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f4037a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f4038b;

    /* renamed from: c  reason: collision with root package name */
    public a f4039c;

    /* renamed from: d  reason: collision with root package name */
    public c f4040d;

    /* renamed from: e  reason: collision with root package name */
    public int f4041e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4042f;

    /* renamed from: g  reason: collision with root package name */
    public final D<Z> f4043g;

    /* compiled from: EngineResource */
    interface a {
        void a(c cVar, x<?> xVar);
    }

    public x(D<Z> d2, boolean z, boolean z2) {
        i.a(d2);
        this.f4043g = d2;
        this.f4037a = z;
        this.f4038b = z2;
    }

    public void a(c cVar, a aVar) {
        this.f4040d = cVar;
        this.f4039c = aVar;
    }

    public int b() {
        return this.f4043g.b();
    }

    public Class<Z> c() {
        return this.f4043g.c();
    }

    public void d() {
        if (this.f4042f) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        } else if (Looper.getMainLooper().equals(Looper.myLooper())) {
            this.f4041e++;
        } else {
            throw new IllegalThreadStateException("Must call acquire on the main thread");
        }
    }

    public D<Z> e() {
        return this.f4043g;
    }

    public boolean f() {
        return this.f4037a;
    }

    public void g() {
        if (this.f4041e <= 0) {
            throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
        } else if (Looper.getMainLooper().equals(Looper.myLooper())) {
            int i2 = this.f4041e - 1;
            this.f4041e = i2;
            if (i2 == 0) {
                this.f4039c.a(this.f4040d, this);
            }
        } else {
            throw new IllegalThreadStateException("Must call release on the main thread");
        }
    }

    public Z get() {
        return this.f4043g.get();
    }

    public String toString() {
        return "EngineResource{isCacheable=" + this.f4037a + ", listener=" + this.f4039c + ", key=" + this.f4040d + ", acquired=" + this.f4041e + ", isRecycled=" + this.f4042f + ", resource=" + this.f4043g + '}';
    }

    public void a() {
        if (this.f4041e > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        } else if (!this.f4042f) {
            this.f4042f = true;
            if (this.f4038b) {
                this.f4043g.a();
            }
        } else {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
    }
}
