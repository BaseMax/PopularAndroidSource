package c.e.a.a.e;

import c.e.a.a.e.b.c;
import c.e.a.a.e.c.g;
import c.e.a.a.e.e.h;
import c.e.a.a.e.e.k;
import c.e.a.a.e.h.B;
import c.e.a.a.e.h.C0704f;
import c.e.a.a.e.h.C0706h;
import c.e.a.a.e.h.C0708j;
import c.e.a.a.e.h.I;
import c.e.a.a.e.i.b;
import java.lang.reflect.Constructor;

/* compiled from: DefaultExtractorsFactory */
public final class e implements j {

    /* renamed from: a  reason: collision with root package name */
    public static final Constructor<? extends g> f7741a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f7742b;

    /* renamed from: c  reason: collision with root package name */
    public int f7743c;

    /* renamed from: d  reason: collision with root package name */
    public int f7744d;

    /* renamed from: e  reason: collision with root package name */
    public int f7745e;

    /* renamed from: f  reason: collision with root package name */
    public int f7746f;

    /* renamed from: g  reason: collision with root package name */
    public int f7747g;

    /* renamed from: h  reason: collision with root package name */
    public int f7748h;

    /* renamed from: i  reason: collision with root package name */
    public int f7749i = 1;

    /* renamed from: j  reason: collision with root package name */
    public int f7750j;

    static {
        Constructor<? extends U> constructor;
        try {
            constructor = Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(g.class).getConstructor(new Class[0]);
        } catch (ClassNotFoundException unused) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f7741a = constructor;
    }

    public synchronized g[] a() {
        g[] gVarArr;
        gVarArr = new g[(f7741a == null ? 13 : 14)];
        gVarArr[0] = new g(this.f7745e);
        int i2 = 1;
        gVarArr[1] = new h(this.f7747g);
        gVarArr[2] = new k(this.f7746f);
        gVarArr[3] = new c.e.a.a.e.d.e(this.f7748h | (this.f7742b ? 1 : 0));
        gVarArr[4] = new C0708j(0, this.f7743c | (this.f7742b ? 1 : 0));
        gVarArr[5] = new C0704f();
        gVarArr[6] = new I(this.f7749i, this.f7750j);
        gVarArr[7] = new c();
        gVarArr[8] = new c.e.a.a.e.f.e();
        gVarArr[9] = new B();
        gVarArr[10] = new b();
        int i3 = this.f7744d;
        if (!this.f7742b) {
            i2 = 0;
        }
        gVarArr[11] = new c.e.a.a.e.a.b(i2 | i3);
        gVarArr[12] = new C0706h();
        if (f7741a != null) {
            try {
                gVarArr[13] = (g) f7741a.newInstance(new Object[0]);
            } catch (Exception e2) {
                throw new IllegalStateException("Unexpected error creating FLAC extractor", e2);
            }
        }
        return gVarArr;
    }
}
