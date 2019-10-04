package com.bumptech.glide.e;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.e.a;
import com.bumptech.glide.f.b;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.b.j;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.c;
import com.bumptech.glide.load.resource.bitmap.h;
import com.bumptech.glide.load.resource.bitmap.k;
import com.bumptech.glide.load.resource.bitmap.m;
import com.bumptech.glide.load.resource.bitmap.o;
import com.bumptech.glide.load.resource.bitmap.w;
import com.bumptech.glide.load.resource.d.f;
import com.bumptech.glide.load.resource.d.i;
import java.util.Map;

public abstract class a<T extends a<T>> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private int f2019a;

    /* renamed from: b  reason: collision with root package name */
    boolean f2020b = true;
    private float c = 1.0f;
    private j d = j.AUTOMATIC;
    private Priority e = Priority.NORMAL;
    private Drawable f;
    private int g;
    private Drawable h;
    private int i;
    private boolean j = true;
    private int k = -1;
    private int l = -1;
    private d m = b.obtain();
    private boolean n;
    private boolean o = true;
    private Drawable p;
    private int q;
    private g r = new g();
    private Map<Class<?>, com.bumptech.glide.load.j<?>> s = new com.bumptech.glide.g.b();
    private Class<?> t = Object.class;
    private boolean u;
    private Resources.Theme v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    private static boolean a(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    public T sizeMultiplier(float f2) {
        if (this.w) {
            return clone().sizeMultiplier(f2);
        }
        if (f2 < 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.c = f2;
        this.f2019a |= 2;
        return a();
    }

    public T useUnlimitedSourceGeneratorsPool(boolean z2) {
        if (this.w) {
            return clone().useUnlimitedSourceGeneratorsPool(z2);
        }
        this.x = z2;
        this.f2019a |= 262144;
        return a();
    }

    public T useAnimationPool(boolean z2) {
        if (this.w) {
            return clone().useAnimationPool(z2);
        }
        this.z = z2;
        this.f2019a |= 1048576;
        return a();
    }

    public T onlyRetrieveFromCache(boolean z2) {
        if (this.w) {
            return clone().onlyRetrieveFromCache(z2);
        }
        this.y = z2;
        this.f2019a |= 524288;
        return a();
    }

    public T diskCacheStrategy(j jVar) {
        if (this.w) {
            return clone().diskCacheStrategy(jVar);
        }
        this.d = (j) com.bumptech.glide.g.j.checkNotNull(jVar);
        this.f2019a |= 4;
        return a();
    }

    public T priority(Priority priority) {
        if (this.w) {
            return clone().priority(priority);
        }
        this.e = (Priority) com.bumptech.glide.g.j.checkNotNull(priority);
        this.f2019a |= 8;
        return a();
    }

    public T placeholder(Drawable drawable) {
        if (this.w) {
            return clone().placeholder(drawable);
        }
        this.h = drawable;
        this.f2019a |= 64;
        this.i = 0;
        this.f2019a &= -129;
        return a();
    }

    public T placeholder(int i2) {
        if (this.w) {
            return clone().placeholder(i2);
        }
        this.i = i2;
        this.f2019a |= 128;
        this.h = null;
        this.f2019a &= -65;
        return a();
    }

    public T fallback(Drawable drawable) {
        if (this.w) {
            return clone().fallback(drawable);
        }
        this.p = drawable;
        this.f2019a |= 8192;
        this.q = 0;
        this.f2019a &= -16385;
        return a();
    }

    public T fallback(int i2) {
        if (this.w) {
            return clone().fallback(i2);
        }
        this.q = i2;
        this.f2019a |= 16384;
        this.p = null;
        this.f2019a &= -8193;
        return a();
    }

    public T error(Drawable drawable) {
        if (this.w) {
            return clone().error(drawable);
        }
        this.f = drawable;
        this.f2019a |= 16;
        this.g = 0;
        this.f2019a &= -33;
        return a();
    }

    public T error(int i2) {
        if (this.w) {
            return clone().error(i2);
        }
        this.g = i2;
        this.f2019a |= 32;
        this.f = null;
        this.f2019a &= -17;
        return a();
    }

    public T theme(Resources.Theme theme) {
        if (this.w) {
            return clone().theme(theme);
        }
        this.v = theme;
        this.f2019a |= 32768;
        return a();
    }

    public T skipMemoryCache(boolean z2) {
        if (this.w) {
            return clone().skipMemoryCache(true);
        }
        this.j = !z2;
        this.f2019a |= 256;
        return a();
    }

    public T override(int i2, int i3) {
        if (this.w) {
            return clone().override(i2, i3);
        }
        this.l = i2;
        this.k = i3;
        this.f2019a |= 512;
        return a();
    }

    public T override(int i2) {
        return override(i2, i2);
    }

    public T signature(d dVar) {
        if (this.w) {
            return clone().signature(dVar);
        }
        this.m = (d) com.bumptech.glide.g.j.checkNotNull(dVar);
        this.f2019a |= 1024;
        return a();
    }

    public T clone() {
        try {
            T t2 = (a) super.clone();
            t2.r = new g();
            t2.r.putAll(this.r);
            t2.s = new com.bumptech.glide.g.b();
            t2.s.putAll(this.s);
            t2.u = false;
            t2.w = false;
            return t2;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [com.bumptech.glide.load.f<Y>, java.lang.Object, com.bumptech.glide.load.f] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <Y> T set(com.bumptech.glide.load.f<Y> r2, Y r3) {
        /*
            r1 = this;
            boolean r0 = r1.w
            if (r0 == 0) goto L_0x000d
            com.bumptech.glide.e.a r0 = r1.clone()
            com.bumptech.glide.e.a r2 = r0.set(r2, r3)
            return r2
        L_0x000d:
            com.bumptech.glide.g.j.checkNotNull(r2)
            com.bumptech.glide.g.j.checkNotNull(r3)
            com.bumptech.glide.load.g r0 = r1.r
            r0.set(r2, r3)
            com.bumptech.glide.e.a r2 = r1.a()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.a.set(com.bumptech.glide.load.f, java.lang.Object):com.bumptech.glide.e.a");
    }

    public T decode(Class<?> cls) {
        if (this.w) {
            return clone().decode(cls);
        }
        this.t = (Class) com.bumptech.glide.g.j.checkNotNull(cls);
        this.f2019a |= 4096;
        return a();
    }

    public final boolean isTransformationAllowed() {
        return this.o;
    }

    public final boolean isTransformationSet() {
        return a(2048);
    }

    public final boolean isLocked() {
        return this.u;
    }

    public T encodeFormat(Bitmap.CompressFormat compressFormat) {
        return set(c.COMPRESSION_FORMAT, com.bumptech.glide.g.j.checkNotNull(compressFormat));
    }

    public T encodeQuality(int i2) {
        return set(c.COMPRESSION_QUALITY, Integer.valueOf(i2));
    }

    public T frame(long j2) {
        return set(w.TARGET_FRAME, Long.valueOf(j2));
    }

    public T format(DecodeFormat decodeFormat) {
        com.bumptech.glide.g.j.checkNotNull(decodeFormat);
        return set(k.DECODE_FORMAT, decodeFormat).set(i.DECODE_FORMAT, decodeFormat);
    }

    public T disallowHardwareConfig() {
        return set(k.ALLOW_HARDWARE_CONFIG, Boolean.FALSE);
    }

    public T downsample(DownsampleStrategy downsampleStrategy) {
        return set(DownsampleStrategy.OPTION, com.bumptech.glide.g.j.checkNotNull(downsampleStrategy));
    }

    public T timeout(int i2) {
        return set(com.bumptech.glide.load.c.a.a.TIMEOUT, Integer.valueOf(i2));
    }

    public T optionalCenterCrop() {
        return a(DownsampleStrategy.CENTER_OUTSIDE, (com.bumptech.glide.load.j<Bitmap>) new com.bumptech.glide.load.resource.bitmap.g());
    }

    public T centerCrop() {
        return b(DownsampleStrategy.CENTER_OUTSIDE, new com.bumptech.glide.load.resource.bitmap.g());
    }

    public T optionalFitCenter() {
        return a(DownsampleStrategy.FIT_CENTER, (com.bumptech.glide.load.j<Bitmap>) new o(), false);
    }

    public T fitCenter() {
        return a(DownsampleStrategy.FIT_CENTER, (com.bumptech.glide.load.j<Bitmap>) new o(), true);
    }

    public T optionalCenterInside() {
        return a(DownsampleStrategy.CENTER_INSIDE, (com.bumptech.glide.load.j<Bitmap>) new h(), false);
    }

    public T centerInside() {
        return a(DownsampleStrategy.CENTER_INSIDE, (com.bumptech.glide.load.j<Bitmap>) new h(), true);
    }

    public T optionalCircleCrop() {
        return a(DownsampleStrategy.CENTER_OUTSIDE, (com.bumptech.glide.load.j<Bitmap>) new com.bumptech.glide.load.resource.bitmap.i());
    }

    public T circleCrop() {
        return b(DownsampleStrategy.CENTER_INSIDE, new com.bumptech.glide.load.resource.bitmap.i());
    }

    /* JADX WARNING: type inference failed for: r4v0, types: [com.bumptech.glide.load.j, com.bumptech.glide.load.j<android.graphics.Bitmap>] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private T a(com.bumptech.glide.load.resource.bitmap.DownsampleStrategy r3, com.bumptech.glide.load.j<android.graphics.Bitmap> r4) {
        /*
            r2 = this;
            r0 = r2
        L_0x0001:
            boolean r1 = r0.w
            if (r1 == 0) goto L_0x000a
            com.bumptech.glide.e.a r0 = r0.clone()
            goto L_0x0001
        L_0x000a:
            r0.downsample(r3)
            r3 = 0
            com.bumptech.glide.e.a r3 = r0.a((com.bumptech.glide.load.j<android.graphics.Bitmap>) r4, (boolean) r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.a.a(com.bumptech.glide.load.resource.bitmap.DownsampleStrategy, com.bumptech.glide.load.j):com.bumptech.glide.e.a");
    }

    /* JADX WARNING: type inference failed for: r4v0, types: [com.bumptech.glide.load.j, com.bumptech.glide.load.j<android.graphics.Bitmap>] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private T b(com.bumptech.glide.load.resource.bitmap.DownsampleStrategy r3, com.bumptech.glide.load.j<android.graphics.Bitmap> r4) {
        /*
            r2 = this;
            r0 = r2
        L_0x0001:
            boolean r1 = r0.w
            if (r1 == 0) goto L_0x000a
            com.bumptech.glide.e.a r0 = r0.clone()
            goto L_0x0001
        L_0x000a:
            r0.downsample(r3)
            com.bumptech.glide.e.a r3 = r0.transform((com.bumptech.glide.load.j<android.graphics.Bitmap>) r4)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.a.b(com.bumptech.glide.load.resource.bitmap.DownsampleStrategy, com.bumptech.glide.load.j):com.bumptech.glide.e.a");
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [com.bumptech.glide.load.j, com.bumptech.glide.load.j<android.graphics.Bitmap>] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private T a(com.bumptech.glide.load.resource.bitmap.DownsampleStrategy r1, com.bumptech.glide.load.j<android.graphics.Bitmap> r2, boolean r3) {
        /*
            r0 = this;
            if (r3 == 0) goto L_0x0007
            com.bumptech.glide.e.a r1 = r0.b(r1, r2)
            goto L_0x000b
        L_0x0007:
            com.bumptech.glide.e.a r1 = r0.a((com.bumptech.glide.load.resource.bitmap.DownsampleStrategy) r1, (com.bumptech.glide.load.j<android.graphics.Bitmap>) r2)
        L_0x000b:
            r2 = 1
            r1.f2020b = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.a.a(com.bumptech.glide.load.resource.bitmap.DownsampleStrategy, com.bumptech.glide.load.j, boolean):com.bumptech.glide.e.a");
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [com.bumptech.glide.load.j, com.bumptech.glide.load.j<android.graphics.Bitmap>] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public T transform(com.bumptech.glide.load.j<android.graphics.Bitmap> r2) {
        /*
            r1 = this;
            r0 = 1
            com.bumptech.glide.e.a r2 = r1.a((com.bumptech.glide.load.j<android.graphics.Bitmap>) r2, (boolean) r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.a.transform(com.bumptech.glide.load.j):com.bumptech.glide.e.a");
    }

    public T transform(com.bumptech.glide.load.j<Bitmap>... jVarArr) {
        if (jVarArr.length > 1) {
            return a((com.bumptech.glide.load.j<Bitmap>) new e((com.bumptech.glide.load.j<T>[]) jVarArr), true);
        }
        if (jVarArr.length == 1) {
            return transform((com.bumptech.glide.load.j<Bitmap>) jVarArr[0]);
        }
        return a();
    }

    @Deprecated
    public T transforms(com.bumptech.glide.load.j<Bitmap>... jVarArr) {
        return a((com.bumptech.glide.load.j<Bitmap>) new e((com.bumptech.glide.load.j<T>[]) jVarArr), true);
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [com.bumptech.glide.load.j, com.bumptech.glide.load.j<android.graphics.Bitmap>] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public T optionalTransform(com.bumptech.glide.load.j<android.graphics.Bitmap> r2) {
        /*
            r1 = this;
            r0 = 0
            com.bumptech.glide.e.a r2 = r1.a((com.bumptech.glide.load.j<android.graphics.Bitmap>) r2, (boolean) r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.a.optionalTransform(com.bumptech.glide.load.j):com.bumptech.glide.e.a");
    }

    private T a(com.bumptech.glide.load.j<Bitmap> jVar, boolean z2) {
        a aVar = this;
        while (aVar.w) {
            aVar = aVar.clone();
        }
        m mVar = new m(jVar, z2);
        aVar.a(Bitmap.class, jVar, z2);
        aVar.a(Drawable.class, mVar, z2);
        aVar.a(BitmapDrawable.class, mVar.asBitmapDrawable(), z2);
        aVar.a(com.bumptech.glide.load.resource.d.c.class, new f(jVar), z2);
        return aVar.a();
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [java.lang.Class<Y>, java.lang.Class] */
    /* JADX WARNING: type inference failed for: r3v0, types: [com.bumptech.glide.load.j, com.bumptech.glide.load.j<Y>] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <Y> T optionalTransform(java.lang.Class<Y> r2, com.bumptech.glide.load.j<Y> r3) {
        /*
            r1 = this;
            r0 = 0
            com.bumptech.glide.e.a r2 = r1.a(r2, r3, (boolean) r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.a.optionalTransform(java.lang.Class, com.bumptech.glide.load.j):com.bumptech.glide.e.a");
    }

    private <Y> T a(Class<Y> cls, com.bumptech.glide.load.j<Y> jVar, boolean z2) {
        a aVar = this;
        while (aVar.w) {
            aVar = aVar.clone();
        }
        com.bumptech.glide.g.j.checkNotNull(cls);
        com.bumptech.glide.g.j.checkNotNull(jVar);
        aVar.s.put(cls, jVar);
        aVar.f2019a |= 2048;
        aVar.o = true;
        aVar.f2019a |= 65536;
        aVar.f2020b = false;
        if (z2) {
            aVar.f2019a |= 131072;
            aVar.n = true;
        }
        return aVar.a();
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [java.lang.Class<Y>, java.lang.Class] */
    /* JADX WARNING: type inference failed for: r3v0, types: [com.bumptech.glide.load.j, com.bumptech.glide.load.j<Y>] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public <Y> T transform(java.lang.Class<Y> r2, com.bumptech.glide.load.j<Y> r3) {
        /*
            r1 = this;
            r0 = 1
            com.bumptech.glide.e.a r2 = r1.a(r2, r3, (boolean) r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.a.transform(java.lang.Class, com.bumptech.glide.load.j):com.bumptech.glide.e.a");
    }

    public T dontTransform() {
        if (this.w) {
            return clone().dontTransform();
        }
        this.s.clear();
        this.f2019a &= -2049;
        this.n = false;
        this.f2019a &= -131073;
        this.o = false;
        this.f2019a |= 65536;
        this.f2020b = true;
        return a();
    }

    public T dontAnimate() {
        return set(i.DISABLE_ANIMATION, Boolean.TRUE);
    }

    public T apply(a<?> aVar) {
        if (this.w) {
            return clone().apply(aVar);
        }
        if (a(aVar.f2019a, 2)) {
            this.c = aVar.c;
        }
        if (a(aVar.f2019a, 262144)) {
            this.x = aVar.x;
        }
        if (a(aVar.f2019a, 1048576)) {
            this.z = aVar.z;
        }
        if (a(aVar.f2019a, 4)) {
            this.d = aVar.d;
        }
        if (a(aVar.f2019a, 8)) {
            this.e = aVar.e;
        }
        if (a(aVar.f2019a, 16)) {
            this.f = aVar.f;
            this.g = 0;
            this.f2019a &= -33;
        }
        if (a(aVar.f2019a, 32)) {
            this.g = aVar.g;
            this.f = null;
            this.f2019a &= -17;
        }
        if (a(aVar.f2019a, 64)) {
            this.h = aVar.h;
            this.i = 0;
            this.f2019a &= -129;
        }
        if (a(aVar.f2019a, 128)) {
            this.i = aVar.i;
            this.h = null;
            this.f2019a &= -65;
        }
        if (a(aVar.f2019a, 256)) {
            this.j = aVar.j;
        }
        if (a(aVar.f2019a, 512)) {
            this.l = aVar.l;
            this.k = aVar.k;
        }
        if (a(aVar.f2019a, 1024)) {
            this.m = aVar.m;
        }
        if (a(aVar.f2019a, 4096)) {
            this.t = aVar.t;
        }
        if (a(aVar.f2019a, 8192)) {
            this.p = aVar.p;
            this.q = 0;
            this.f2019a &= -16385;
        }
        if (a(aVar.f2019a, 16384)) {
            this.q = aVar.q;
            this.p = null;
            this.f2019a &= -8193;
        }
        if (a(aVar.f2019a, 32768)) {
            this.v = aVar.v;
        }
        if (a(aVar.f2019a, 65536)) {
            this.o = aVar.o;
        }
        if (a(aVar.f2019a, 131072)) {
            this.n = aVar.n;
        }
        if (a(aVar.f2019a, 2048)) {
            this.s.putAll(aVar.s);
            this.f2020b = aVar.f2020b;
        }
        if (a(aVar.f2019a, 524288)) {
            this.y = aVar.y;
        }
        if (!this.o) {
            this.s.clear();
            this.f2019a &= -2049;
            this.n = false;
            this.f2019a &= -131073;
            this.f2020b = true;
        }
        this.f2019a |= aVar.f2019a;
        this.r.putAll(aVar.r);
        return a();
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (Float.compare(aVar.c, this.c) == 0 && this.g == aVar.g && com.bumptech.glide.g.k.bothNullOrEqual(this.f, aVar.f) && this.i == aVar.i && com.bumptech.glide.g.k.bothNullOrEqual(this.h, aVar.h) && this.q == aVar.q && com.bumptech.glide.g.k.bothNullOrEqual(this.p, aVar.p) && this.j == aVar.j && this.k == aVar.k && this.l == aVar.l && this.n == aVar.n && this.o == aVar.o && this.x == aVar.x && this.y == aVar.y && this.d.equals(aVar.d) && this.e == aVar.e && this.r.equals(aVar.r) && this.s.equals(aVar.s) && this.t.equals(aVar.t) && com.bumptech.glide.g.k.bothNullOrEqual(this.m, aVar.m) && com.bumptech.glide.g.k.bothNullOrEqual(this.v, aVar.v)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return com.bumptech.glide.g.k.hashCode((Object) this.v, com.bumptech.glide.g.k.hashCode((Object) this.m, com.bumptech.glide.g.k.hashCode((Object) this.t, com.bumptech.glide.g.k.hashCode((Object) this.s, com.bumptech.glide.g.k.hashCode((Object) this.r, com.bumptech.glide.g.k.hashCode((Object) this.e, com.bumptech.glide.g.k.hashCode((Object) this.d, com.bumptech.glide.g.k.hashCode(this.y, com.bumptech.glide.g.k.hashCode(this.x, com.bumptech.glide.g.k.hashCode(this.o, com.bumptech.glide.g.k.hashCode(this.n, com.bumptech.glide.g.k.hashCode(this.l, com.bumptech.glide.g.k.hashCode(this.k, com.bumptech.glide.g.k.hashCode(this.j, com.bumptech.glide.g.k.hashCode((Object) this.p, com.bumptech.glide.g.k.hashCode(this.q, com.bumptech.glide.g.k.hashCode((Object) this.h, com.bumptech.glide.g.k.hashCode(this.i, com.bumptech.glide.g.k.hashCode((Object) this.f, com.bumptech.glide.g.k.hashCode(this.g, com.bumptech.glide.g.k.hashCode(this.c)))))))))))))))))))));
    }

    public T lock() {
        this.u = true;
        return this;
    }

    public T autoClone() {
        if (!this.u || this.w) {
            this.w = true;
            return lock();
        }
        throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }

    private T a() {
        if (!this.u) {
            return this;
        }
        throw new IllegalStateException("You cannot modify locked T, consider clone()");
    }

    public final boolean isDiskCacheStrategySet() {
        return a(4);
    }

    public final boolean isSkipMemoryCacheSet() {
        return a(256);
    }

    public final Map<Class<?>, com.bumptech.glide.load.j<?>> getTransformations() {
        return this.s;
    }

    public final boolean isTransformationRequired() {
        return this.n;
    }

    public final g getOptions() {
        return this.r;
    }

    public final Class<?> getResourceClass() {
        return this.t;
    }

    public final j getDiskCacheStrategy() {
        return this.d;
    }

    public final Drawable getErrorPlaceholder() {
        return this.f;
    }

    public final int getErrorId() {
        return this.g;
    }

    public final int getPlaceholderId() {
        return this.i;
    }

    public final Drawable getPlaceholderDrawable() {
        return this.h;
    }

    public final int getFallbackId() {
        return this.q;
    }

    public final Drawable getFallbackDrawable() {
        return this.p;
    }

    public final Resources.Theme getTheme() {
        return this.v;
    }

    public final boolean isMemoryCacheable() {
        return this.j;
    }

    public final d getSignature() {
        return this.m;
    }

    public final boolean isPrioritySet() {
        return a(8);
    }

    public final Priority getPriority() {
        return this.e;
    }

    public final int getOverrideWidth() {
        return this.l;
    }

    public final boolean isValidOverride() {
        return com.bumptech.glide.g.k.isValidDimensions(this.l, this.k);
    }

    public final int getOverrideHeight() {
        return this.k;
    }

    public final float getSizeMultiplier() {
        return this.c;
    }

    private boolean a(int i2) {
        return a(this.f2019a, i2);
    }

    public final boolean getUseUnlimitedSourceGeneratorsPool() {
        return this.x;
    }

    public final boolean getUseAnimationPool() {
        return this.z;
    }

    public final boolean getOnlyRetrieveFromCache() {
        return this.y;
    }
}
