package c.b.a.g;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import c.b.a.c.b.p;
import c.b.a.c.c;
import c.b.a.c.d.a.h;
import c.b.a.c.d.a.n;
import c.b.a.c.e;
import c.b.a.c.f;
import c.b.a.c.i;
import c.b.a.h.a;
import c.b.a.i.b;
import c.b.a.i.k;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.LogFileManager;
import java.util.Map;

/* compiled from: RequestOptions */
public class g implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public int f4394a;

    /* renamed from: b  reason: collision with root package name */
    public float f4395b = 1.0f;

    /* renamed from: c  reason: collision with root package name */
    public p f4396c = p.f3991e;

    /* renamed from: d  reason: collision with root package name */
    public Priority f4397d = Priority.NORMAL;

    /* renamed from: e  reason: collision with root package name */
    public Drawable f4398e;

    /* renamed from: f  reason: collision with root package name */
    public int f4399f;

    /* renamed from: g  reason: collision with root package name */
    public Drawable f4400g;

    /* renamed from: h  reason: collision with root package name */
    public int f4401h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f4402i = true;

    /* renamed from: j  reason: collision with root package name */
    public int f4403j = -1;

    /* renamed from: k  reason: collision with root package name */
    public int f4404k = -1;

    /* renamed from: l  reason: collision with root package name */
    public c f4405l = a.a();
    public boolean m;
    public boolean n = true;
    public Drawable o;
    public int p;
    public f q = new f();
    public Map<Class<?>, i<?>> r = new b();
    public Class<?> s = Object.class;
    public boolean t;
    public Resources.Theme u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y = true;
    public boolean z;

    public static boolean a(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    public static g b(p pVar) {
        return new g().a(pVar);
    }

    public boolean A() {
        return this.y;
    }

    public final boolean B() {
        return this.n;
    }

    public final boolean C() {
        return this.m;
    }

    public final boolean D() {
        return a(2048);
    }

    public final boolean E() {
        return k.b(this.f4404k, this.f4403j);
    }

    public g F() {
        this.t = true;
        return this;
    }

    public g G() {
        return b(DownsampleStrategy.f12073b, (i<Bitmap>) new c.b.a.c.d.a.g());
    }

    public g H() {
        return a(DownsampleStrategy.f12076e, (i<Bitmap>) new h());
    }

    public g I() {
        return a(DownsampleStrategy.f12072a, (i<Bitmap>) new c.b.a.c.d.a.p());
    }

    public final g J() {
        if (!this.t) {
            return this;
        }
        throw new IllegalStateException("You cannot modify locked RequestOptions, consider clone()");
    }

    public g a(float f2) {
        if (this.v) {
            return clone().a(f2);
        }
        if (f2 < 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f4395b = f2;
        this.f4394a |= 2;
        J();
        return this;
    }

    public final g c(DownsampleStrategy downsampleStrategy, i<Bitmap> iVar) {
        if (this.v) {
            return clone().c(downsampleStrategy, iVar);
        }
        a(downsampleStrategy);
        return a(iVar);
    }

    public final Drawable d() {
        return this.f4398e;
    }

    public final Drawable e() {
        return this.o;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (Float.compare(gVar.f4395b, this.f4395b) == 0 && this.f4399f == gVar.f4399f && k.b((Object) this.f4398e, (Object) gVar.f4398e) && this.f4401h == gVar.f4401h && k.b((Object) this.f4400g, (Object) gVar.f4400g) && this.p == gVar.p && k.b((Object) this.o, (Object) gVar.o) && this.f4402i == gVar.f4402i && this.f4403j == gVar.f4403j && this.f4404k == gVar.f4404k && this.m == gVar.m && this.n == gVar.n && this.w == gVar.w && this.x == gVar.x && this.f4396c.equals(gVar.f4396c) && this.f4397d == gVar.f4397d && this.q.equals(gVar.q) && this.r.equals(gVar.r) && this.s.equals(gVar.s) && k.b((Object) this.f4405l, (Object) gVar.f4405l) && k.b((Object) this.u, (Object) gVar.u)) {
            return true;
        }
        return false;
    }

    public final int f() {
        return this.p;
    }

    public final boolean g() {
        return this.x;
    }

    public final f h() {
        return this.q;
    }

    public int hashCode() {
        return k.a((Object) this.u, k.a((Object) this.f4405l, k.a((Object) this.s, k.a((Object) this.r, k.a((Object) this.q, k.a((Object) this.f4397d, k.a((Object) this.f4396c, k.a(this.x, k.a(this.w, k.a(this.n, k.a(this.m, k.a(this.f4404k, k.a(this.f4403j, k.a(this.f4402i, k.a((Object) this.o, k.a(this.p, k.a((Object) this.f4400g, k.a(this.f4401h, k.a((Object) this.f4398e, k.a(this.f4399f, k.a(this.f4395b)))))))))))))))))))));
    }

    public final int i() {
        return this.f4403j;
    }

    public final int j() {
        return this.f4404k;
    }

    public final Drawable k() {
        return this.f4400g;
    }

    public final int p() {
        return this.f4401h;
    }

    public final Priority q() {
        return this.f4397d;
    }

    public final Class<?> r() {
        return this.s;
    }

    public final c s() {
        return this.f4405l;
    }

    public final float t() {
        return this.f4395b;
    }

    public final Resources.Theme u() {
        return this.u;
    }

    public final Map<Class<?>, i<?>> v() {
        return this.r;
    }

    public final boolean w() {
        return this.z;
    }

    public final boolean x() {
        return this.w;
    }

    public final boolean y() {
        return this.f4402i;
    }

    public final boolean z() {
        return a(8);
    }

    public static g b(c cVar) {
        return new g().a(cVar);
    }

    public g clone() {
        try {
            g gVar = (g) super.clone();
            gVar.q = new f();
            gVar.q.a(this.q);
            gVar.r = new b();
            gVar.r.putAll(this.r);
            gVar.t = false;
            gVar.v = false;
            return gVar;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static g b(Class<?> cls) {
        return new g().a(cls);
    }

    public g b(boolean z2) {
        if (this.v) {
            return clone().b(z2);
        }
        this.z = z2;
        this.f4394a |= 1048576;
        J();
        return this;
    }

    public final int c() {
        return this.f4399f;
    }

    public g a(p pVar) {
        if (this.v) {
            return clone().a(pVar);
        }
        c.b.a.i.i.a(pVar);
        this.f4396c = pVar;
        this.f4394a |= 4;
        J();
        return this;
    }

    public g b(int i2) {
        if (this.v) {
            return clone().b(i2);
        }
        this.f4401h = i2;
        this.f4394a |= 128;
        this.f4400g = null;
        this.f4394a &= -65;
        J();
        return this;
    }

    public g a(Priority priority) {
        if (this.v) {
            return clone().a(priority);
        }
        c.b.a.i.i.a(priority);
        this.f4397d = priority;
        this.f4394a |= 8;
        J();
        return this;
    }

    public g b(int i2, int i3) {
        if (this.v) {
            return clone().b(i2, i3);
        }
        this.f4404k = i2;
        this.f4403j = i3;
        this.f4394a |= 512;
        J();
        return this;
    }

    public g a(Drawable drawable) {
        if (this.v) {
            return clone().a(drawable);
        }
        this.f4400g = drawable;
        this.f4394a |= 64;
        this.f4401h = 0;
        this.f4394a &= -129;
        J();
        return this;
    }

    public final g b(DownsampleStrategy downsampleStrategy, i<Bitmap> iVar) {
        if (this.v) {
            return clone().b(downsampleStrategy, iVar);
        }
        a(downsampleStrategy);
        return a(iVar, false);
    }

    public g a(boolean z2) {
        if (this.v) {
            return clone().a(true);
        }
        this.f4402i = !z2;
        this.f4394a |= 256;
        J();
        return this;
    }

    public final p b() {
        return this.f4396c;
    }

    public g a(c cVar) {
        if (this.v) {
            return clone().a(cVar);
        }
        c.b.a.i.i.a(cVar);
        this.f4405l = cVar;
        this.f4394a |= 1024;
        J();
        return this;
    }

    public <T> g a(e<T> eVar, T t2) {
        if (this.v) {
            return clone().a(eVar, t2);
        }
        c.b.a.i.i.a(eVar);
        c.b.a.i.i.a(t2);
        this.q.a(eVar, t2);
        J();
        return this;
    }

    public g a(Class<?> cls) {
        if (this.v) {
            return clone().a(cls);
        }
        c.b.a.i.i.a(cls);
        this.s = cls;
        this.f4394a |= CodedOutputStream.DEFAULT_BUFFER_SIZE;
        J();
        return this;
    }

    public g a(DecodeFormat decodeFormat) {
        c.b.a.i.i.a(decodeFormat);
        return a(c.b.a.c.d.a.k.f4167a, decodeFormat).a(c.b.a.c.d.e.i.f4257a, decodeFormat);
    }

    public g a(DownsampleStrategy downsampleStrategy) {
        e<DownsampleStrategy> eVar = DownsampleStrategy.f12079h;
        c.b.a.i.i.a(downsampleStrategy);
        return a(eVar, downsampleStrategy);
    }

    public final g a(DownsampleStrategy downsampleStrategy, i<Bitmap> iVar) {
        return a(downsampleStrategy, iVar, false);
    }

    public final g a(DownsampleStrategy downsampleStrategy, i<Bitmap> iVar, boolean z2) {
        g c2 = z2 ? c(downsampleStrategy, iVar) : b(downsampleStrategy, iVar);
        c2.y = true;
        return c2;
    }

    public g a(i<Bitmap> iVar) {
        return a(iVar, true);
    }

    public final g a(i<Bitmap> iVar, boolean z2) {
        if (this.v) {
            return clone().a(iVar, z2);
        }
        n nVar = new n(iVar, z2);
        a(Bitmap.class, iVar, z2);
        a(Drawable.class, nVar, z2);
        nVar.a();
        a(BitmapDrawable.class, nVar, z2);
        a(c.b.a.c.d.e.c.class, new c.b.a.c.d.e.f(iVar), z2);
        J();
        return this;
    }

    public final <T> g a(Class<T> cls, i<T> iVar, boolean z2) {
        if (this.v) {
            return clone().a(cls, iVar, z2);
        }
        c.b.a.i.i.a(cls);
        c.b.a.i.i.a(iVar);
        this.r.put(cls, iVar);
        this.f4394a |= 2048;
        this.n = true;
        this.f4394a |= LogFileManager.MAX_LOG_SIZE;
        this.y = false;
        if (z2) {
            this.f4394a |= 131072;
            this.m = true;
        }
        J();
        return this;
    }

    public g a(g gVar) {
        if (this.v) {
            return clone().a(gVar);
        }
        if (a(gVar.f4394a, 2)) {
            this.f4395b = gVar.f4395b;
        }
        if (a(gVar.f4394a, 262144)) {
            this.w = gVar.w;
        }
        if (a(gVar.f4394a, 1048576)) {
            this.z = gVar.z;
        }
        if (a(gVar.f4394a, 4)) {
            this.f4396c = gVar.f4396c;
        }
        if (a(gVar.f4394a, 8)) {
            this.f4397d = gVar.f4397d;
        }
        if (a(gVar.f4394a, 16)) {
            this.f4398e = gVar.f4398e;
            this.f4399f = 0;
            this.f4394a &= -33;
        }
        if (a(gVar.f4394a, 32)) {
            this.f4399f = gVar.f4399f;
            this.f4398e = null;
            this.f4394a &= -17;
        }
        if (a(gVar.f4394a, 64)) {
            this.f4400g = gVar.f4400g;
            this.f4401h = 0;
            this.f4394a &= -129;
        }
        if (a(gVar.f4394a, 128)) {
            this.f4401h = gVar.f4401h;
            this.f4400g = null;
            this.f4394a &= -65;
        }
        if (a(gVar.f4394a, 256)) {
            this.f4402i = gVar.f4402i;
        }
        if (a(gVar.f4394a, 512)) {
            this.f4404k = gVar.f4404k;
            this.f4403j = gVar.f4403j;
        }
        if (a(gVar.f4394a, 1024)) {
            this.f4405l = gVar.f4405l;
        }
        if (a(gVar.f4394a, (int) CodedOutputStream.DEFAULT_BUFFER_SIZE)) {
            this.s = gVar.s;
        }
        if (a(gVar.f4394a, 8192)) {
            this.o = gVar.o;
            this.p = 0;
            this.f4394a &= -16385;
        }
        if (a(gVar.f4394a, 16384)) {
            this.p = gVar.p;
            this.o = null;
            this.f4394a &= -8193;
        }
        if (a(gVar.f4394a, 32768)) {
            this.u = gVar.u;
        }
        if (a(gVar.f4394a, (int) LogFileManager.MAX_LOG_SIZE)) {
            this.n = gVar.n;
        }
        if (a(gVar.f4394a, 131072)) {
            this.m = gVar.m;
        }
        if (a(gVar.f4394a, 2048)) {
            this.r.putAll(gVar.r);
            this.y = gVar.y;
        }
        if (a(gVar.f4394a, 524288)) {
            this.x = gVar.x;
        }
        if (!this.n) {
            this.r.clear();
            this.f4394a &= -2049;
            this.m = false;
            this.f4394a &= -131073;
            this.y = true;
        }
        this.f4394a |= gVar.f4394a;
        this.q.a(gVar.q);
        J();
        return this;
    }

    public g a() {
        if (!this.t || this.v) {
            this.v = true;
            return F();
        }
        throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }

    public final boolean a(int i2) {
        return a(this.f4394a, i2);
    }
}
