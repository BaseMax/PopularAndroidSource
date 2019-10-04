package b.b.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;

/* compiled from: DrawableContainer */
public class d extends Drawable implements Drawable.Callback {

    /* renamed from: a  reason: collision with root package name */
    public b f1785a;

    /* renamed from: b  reason: collision with root package name */
    public Rect f1786b;

    /* renamed from: c  reason: collision with root package name */
    public Drawable f1787c;

    /* renamed from: d  reason: collision with root package name */
    public Drawable f1788d;

    /* renamed from: e  reason: collision with root package name */
    public int f1789e = 255;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1790f;

    /* renamed from: g  reason: collision with root package name */
    public int f1791g = -1;

    /* renamed from: h  reason: collision with root package name */
    public int f1792h = -1;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1793i;

    /* renamed from: j  reason: collision with root package name */
    public Runnable f1794j;

    /* renamed from: k  reason: collision with root package name */
    public long f1795k;

    /* renamed from: l  reason: collision with root package name */
    public long f1796l;
    public a m;

    /* compiled from: DrawableContainer */
    static class a implements Drawable.Callback {

        /* renamed from: a  reason: collision with root package name */
        public Drawable.Callback f1797a;

        public a a(Drawable.Callback callback) {
            this.f1797a = callback;
            return this;
        }

        public void invalidateDrawable(Drawable drawable) {
        }

        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
            Drawable.Callback callback = this.f1797a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j2);
            }
        }

        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            Drawable.Callback callback = this.f1797a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.f1797a;
            this.f1797a = null;
            return callback;
        }
    }

    /* compiled from: DrawableContainer */
    static abstract class b extends Drawable.ConstantState {
        public int A;
        public int B;
        public boolean C;
        public ColorFilter D;
        public boolean E;
        public ColorStateList F;
        public PorterDuff.Mode G;
        public boolean H;
        public boolean I;

        /* renamed from: a  reason: collision with root package name */
        public final d f1798a;

        /* renamed from: b  reason: collision with root package name */
        public Resources f1799b;

        /* renamed from: c  reason: collision with root package name */
        public int f1800c = 160;

        /* renamed from: d  reason: collision with root package name */
        public int f1801d;

        /* renamed from: e  reason: collision with root package name */
        public int f1802e;

        /* renamed from: f  reason: collision with root package name */
        public SparseArray<Drawable.ConstantState> f1803f;

        /* renamed from: g  reason: collision with root package name */
        public Drawable[] f1804g;

        /* renamed from: h  reason: collision with root package name */
        public int f1805h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f1806i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f1807j;

        /* renamed from: k  reason: collision with root package name */
        public Rect f1808k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f1809l;
        public boolean m;
        public int n;
        public int o;
        public int p;
        public int q;
        public boolean r;
        public int s;
        public boolean t;
        public boolean u;
        public boolean v;
        public boolean w;
        public boolean x;
        public boolean y;
        public int z;

        public b(b bVar, d dVar, Resources resources) {
            Resources resources2;
            this.f1806i = false;
            this.f1809l = false;
            this.x = true;
            this.A = 0;
            this.B = 0;
            this.f1798a = dVar;
            if (resources != null) {
                resources2 = resources;
            } else {
                resources2 = bVar != null ? bVar.f1799b : null;
            }
            this.f1799b = resources2;
            this.f1800c = d.a(resources, bVar != null ? bVar.f1800c : 0);
            if (bVar != null) {
                this.f1801d = bVar.f1801d;
                this.f1802e = bVar.f1802e;
                this.v = true;
                this.w = true;
                this.f1806i = bVar.f1806i;
                this.f1809l = bVar.f1809l;
                this.x = bVar.x;
                this.y = bVar.y;
                this.z = bVar.z;
                this.A = bVar.A;
                this.B = bVar.B;
                this.C = bVar.C;
                this.D = bVar.D;
                this.E = bVar.E;
                this.F = bVar.F;
                this.G = bVar.G;
                this.H = bVar.H;
                this.I = bVar.I;
                if (bVar.f1800c == this.f1800c) {
                    if (bVar.f1807j) {
                        this.f1808k = new Rect(bVar.f1808k);
                        this.f1807j = true;
                    }
                    if (bVar.m) {
                        this.n = bVar.n;
                        this.o = bVar.o;
                        this.p = bVar.p;
                        this.q = bVar.q;
                        this.m = true;
                    }
                }
                if (bVar.r) {
                    this.s = bVar.s;
                    this.r = true;
                }
                if (bVar.t) {
                    this.u = bVar.u;
                    this.t = true;
                }
                Drawable[] drawableArr = bVar.f1804g;
                this.f1804g = new Drawable[drawableArr.length];
                this.f1805h = bVar.f1805h;
                SparseArray<Drawable.ConstantState> sparseArray = bVar.f1803f;
                if (sparseArray != null) {
                    this.f1803f = sparseArray.clone();
                } else {
                    this.f1803f = new SparseArray<>(this.f1805h);
                }
                int i2 = this.f1805h;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3] != null) {
                        Drawable.ConstantState constantState = drawableArr[i3].getConstantState();
                        if (constantState != null) {
                            this.f1803f.put(i3, constantState);
                        } else {
                            this.f1804g[i3] = drawableArr[i3];
                        }
                    }
                }
                return;
            }
            this.f1804g = new Drawable[10];
            this.f1805h = 0;
        }

        public final int a(Drawable drawable) {
            int i2 = this.f1805h;
            if (i2 >= this.f1804g.length) {
                a(i2, i2 + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f1798a);
            this.f1804g[i2] = drawable;
            this.f1805h++;
            this.f1802e = drawable.getChangingConfigurations() | this.f1802e;
            l();
            this.f1808k = null;
            this.f1807j = false;
            this.m = false;
            this.v = false;
            return i2;
        }

        public final Drawable b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.z);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f1798a);
            return mutate;
        }

        public final void c() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f1803f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.f1804g[this.f1803f.keyAt(i2)] = b(this.f1803f.valueAt(i2).newDrawable(this.f1799b));
                }
                this.f1803f = null;
            }
        }

        public boolean canApplyTheme() {
            int i2 = this.f1805h;
            Drawable[] drawableArr = this.f1804g;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f1803f.get(i3);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                } else if (drawable.canApplyTheme()) {
                    return true;
                }
            }
            return false;
        }

        public final int d() {
            return this.f1804g.length;
        }

        public final int e() {
            return this.f1805h;
        }

        public final int f() {
            if (!this.m) {
                b();
            }
            return this.o;
        }

        public final int g() {
            if (!this.m) {
                b();
            }
            return this.q;
        }

        public int getChangingConfigurations() {
            return this.f1801d | this.f1802e;
        }

        public final int h() {
            if (!this.m) {
                b();
            }
            return this.p;
        }

        public final Rect i() {
            if (this.f1806i) {
                return null;
            }
            if (this.f1808k != null || this.f1807j) {
                return this.f1808k;
            }
            c();
            Rect rect = new Rect();
            int i2 = this.f1805h;
            Drawable[] drawableArr = this.f1804g;
            Rect rect2 = null;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getPadding(rect)) {
                    if (rect2 == null) {
                        rect2 = new Rect(0, 0, 0, 0);
                    }
                    int i4 = rect.left;
                    if (i4 > rect2.left) {
                        rect2.left = i4;
                    }
                    int i5 = rect.top;
                    if (i5 > rect2.top) {
                        rect2.top = i5;
                    }
                    int i6 = rect.right;
                    if (i6 > rect2.right) {
                        rect2.right = i6;
                    }
                    int i7 = rect.bottom;
                    if (i7 > rect2.bottom) {
                        rect2.bottom = i7;
                    }
                }
            }
            this.f1807j = true;
            this.f1808k = rect2;
            return rect2;
        }

        public final int j() {
            if (!this.m) {
                b();
            }
            return this.n;
        }

        public final int k() {
            if (this.r) {
                return this.s;
            }
            c();
            int i2 = this.f1805h;
            Drawable[] drawableArr = this.f1804g;
            int opacity = i2 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i3 = 1; i3 < i2; i3++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i3].getOpacity());
            }
            this.s = opacity;
            this.r = true;
            return opacity;
        }

        public void l() {
            this.r = false;
            this.t = false;
        }

        public final boolean m() {
            return this.f1809l;
        }

        public abstract void n();

        public final boolean b(int i2, int i3) {
            int i4 = this.f1805h;
            Drawable[] drawableArr = this.f1804g;
            boolean z2 = false;
            for (int i5 = 0; i5 < i4; i5++) {
                if (drawableArr[i5] != null) {
                    boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? drawableArr[i5].setLayoutDirection(i2) : false;
                    if (i5 == i3) {
                        z2 = layoutDirection;
                    }
                }
            }
            this.z = i2;
            return z2;
        }

        public final void c(int i2) {
            this.B = i2;
        }

        public final void b(boolean z2) {
            this.f1806i = z2;
        }

        public void b() {
            this.m = true;
            c();
            int i2 = this.f1805h;
            Drawable[] drawableArr = this.f1804g;
            this.o = -1;
            this.n = -1;
            this.q = 0;
            this.p = 0;
            for (int i3 = 0; i3 < i2; i3++) {
                Drawable drawable = drawableArr[i3];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.n) {
                    this.n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.o) {
                    this.o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.p) {
                    this.p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.q) {
                    this.q = minimumHeight;
                }
            }
        }

        public final Drawable a(int i2) {
            Drawable drawable = this.f1804g[i2];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f1803f;
            if (sparseArray != null) {
                int indexOfKey = sparseArray.indexOfKey(i2);
                if (indexOfKey >= 0) {
                    Drawable b2 = b(this.f1803f.valueAt(indexOfKey).newDrawable(this.f1799b));
                    this.f1804g[i2] = b2;
                    this.f1803f.removeAt(indexOfKey);
                    if (this.f1803f.size() == 0) {
                        this.f1803f = null;
                    }
                    return b2;
                }
            }
            return null;
        }

        public final void a(Resources resources) {
            if (resources != null) {
                this.f1799b = resources;
                int a2 = d.a(resources, this.f1800c);
                int i2 = this.f1800c;
                this.f1800c = a2;
                if (i2 != a2) {
                    this.m = false;
                    this.f1807j = false;
                }
            }
        }

        public final void b(int i2) {
            this.A = i2;
        }

        public final void a(Resources.Theme theme) {
            if (theme != null) {
                c();
                int i2 = this.f1805h;
                Drawable[] drawableArr = this.f1804g;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (drawableArr[i3] != null && drawableArr[i3].canApplyTheme()) {
                        drawableArr[i3].applyTheme(theme);
                        this.f1802e |= drawableArr[i3].getChangingConfigurations();
                    }
                }
                a(theme.getResources());
            }
        }

        public final void a(boolean z2) {
            this.f1809l = z2;
        }

        public void a(int i2, int i3) {
            Drawable[] drawableArr = new Drawable[i3];
            System.arraycopy(this.f1804g, 0, drawableArr, 0, i2);
            this.f1804g = drawableArr;
        }

        public synchronized boolean a() {
            if (this.v) {
                return this.w;
            }
            c();
            this.v = true;
            int i2 = this.f1805h;
            Drawable[] drawableArr = this.f1804g;
            for (int i3 = 0; i3 < i2; i3++) {
                if (drawableArr[i3].getConstantState() == null) {
                    this.w = false;
                    return false;
                }
            }
            this.w = true;
            return true;
        }
    }

    public b a() {
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x0071  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0079  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(int r9) {
        /*
            r8 = this;
            int r0 = r8.f1791g
            r1 = 0
            if (r9 != r0) goto L_0x0006
            return r1
        L_0x0006:
            long r2 = android.os.SystemClock.uptimeMillis()
            b.b.c.a.d$b r0 = r8.f1785a
            int r0 = r0.B
            r4 = -1
            r5 = 0
            r6 = 0
            if (r0 <= 0) goto L_0x0035
            android.graphics.drawable.Drawable r0 = r8.f1788d
            if (r0 == 0) goto L_0x001b
            r0.setVisible(r1, r1)
        L_0x001b:
            android.graphics.drawable.Drawable r0 = r8.f1787c
            if (r0 == 0) goto L_0x002e
            r8.f1788d = r0
            int r0 = r8.f1791g
            r8.f1792h = r0
            b.b.c.a.d$b r0 = r8.f1785a
            int r0 = r0.B
            long r0 = (long) r0
            long r0 = r0 + r2
            r8.f1796l = r0
            goto L_0x003c
        L_0x002e:
            r8.f1788d = r5
            r8.f1792h = r4
            r8.f1796l = r6
            goto L_0x003c
        L_0x0035:
            android.graphics.drawable.Drawable r0 = r8.f1787c
            if (r0 == 0) goto L_0x003c
            r0.setVisible(r1, r1)
        L_0x003c:
            if (r9 < 0) goto L_0x005c
            b.b.c.a.d$b r0 = r8.f1785a
            int r1 = r0.f1805h
            if (r9 >= r1) goto L_0x005c
            android.graphics.drawable.Drawable r0 = r0.a((int) r9)
            r8.f1787c = r0
            r8.f1791g = r9
            if (r0 == 0) goto L_0x0060
            b.b.c.a.d$b r9 = r8.f1785a
            int r9 = r9.A
            if (r9 <= 0) goto L_0x0058
            long r4 = (long) r9
            long r2 = r2 + r4
            r8.f1795k = r2
        L_0x0058:
            r8.a((android.graphics.drawable.Drawable) r0)
            goto L_0x0060
        L_0x005c:
            r8.f1787c = r5
            r8.f1791g = r4
        L_0x0060:
            long r0 = r8.f1795k
            r9 = 1
            int r2 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r2 != 0) goto L_0x006d
            long r0 = r8.f1796l
            int r2 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r2 == 0) goto L_0x007f
        L_0x006d:
            java.lang.Runnable r0 = r8.f1794j
            if (r0 != 0) goto L_0x0079
            b.b.c.a.c r0 = new b.b.c.a.c
            r0.<init>(r8)
            r8.f1794j = r0
            goto L_0x007c
        L_0x0079:
            r8.unscheduleSelf(r0)
        L_0x007c:
            r8.a((boolean) r9)
        L_0x007f:
            r8.invalidateSelf()
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.c.a.d.a(int):boolean");
    }

    public void applyTheme(Resources.Theme theme) {
        this.f1785a.a(theme);
    }

    public int b() {
        return this.f1791g;
    }

    public final boolean c() {
        if (!isAutoMirrored() || b.i.c.a.a.e(this) != 1) {
            return false;
        }
        return true;
    }

    public boolean canApplyTheme() {
        return this.f1785a.canApplyTheme();
    }

    public void draw(Canvas canvas) {
        Drawable drawable = this.f1787c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f1788d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    public int getAlpha() {
        return this.f1789e;
    }

    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f1785a.getChangingConfigurations();
    }

    public final Drawable.ConstantState getConstantState() {
        if (!this.f1785a.a()) {
            return null;
        }
        this.f1785a.f1801d = getChangingConfigurations();
        return this.f1785a;
    }

    public Drawable getCurrent() {
        return this.f1787c;
    }

    public void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f1786b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    public int getIntrinsicHeight() {
        if (this.f1785a.m()) {
            return this.f1785a.f();
        }
        Drawable drawable = this.f1787c;
        return drawable != null ? drawable.getIntrinsicHeight() : -1;
    }

    public int getIntrinsicWidth() {
        if (this.f1785a.m()) {
            return this.f1785a.j();
        }
        Drawable drawable = this.f1787c;
        return drawable != null ? drawable.getIntrinsicWidth() : -1;
    }

    public int getMinimumHeight() {
        if (this.f1785a.m()) {
            return this.f1785a.g();
        }
        Drawable drawable = this.f1787c;
        return drawable != null ? drawable.getMinimumHeight() : 0;
    }

    public int getMinimumWidth() {
        if (this.f1785a.m()) {
            return this.f1785a.h();
        }
        Drawable drawable = this.f1787c;
        return drawable != null ? drawable.getMinimumWidth() : 0;
    }

    public int getOpacity() {
        Drawable drawable = this.f1787c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f1785a.k();
    }

    public void getOutline(Outline outline) {
        Drawable drawable = this.f1787c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    public boolean getPadding(Rect rect) {
        boolean z;
        Rect i2 = this.f1785a.i();
        if (i2 != null) {
            rect.set(i2);
            z = (i2.right | ((i2.left | i2.top) | i2.bottom)) != 0;
        } else {
            Drawable drawable = this.f1787c;
            if (drawable != null) {
                z = drawable.getPadding(rect);
            } else {
                z = super.getPadding(rect);
            }
        }
        if (c()) {
            int i3 = rect.left;
            rect.left = rect.right;
            rect.right = i3;
        }
        return z;
    }

    public void invalidateDrawable(Drawable drawable) {
        b bVar = this.f1785a;
        if (bVar != null) {
            bVar.l();
        }
        if (drawable == this.f1787c && getCallback() != null) {
            getCallback().invalidateDrawable(this);
        }
    }

    public boolean isAutoMirrored() {
        return this.f1785a.C;
    }

    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f1788d;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f1788d = null;
            this.f1792h = -1;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f1787c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f1790f) {
                this.f1787c.setAlpha(this.f1789e);
            }
        }
        if (this.f1796l != 0) {
            this.f1796l = 0;
            z = true;
        }
        if (this.f1795k != 0) {
            this.f1795k = 0;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    public Drawable mutate() {
        if (!this.f1793i && super.mutate() == this) {
            b a2 = a();
            a2.n();
            a(a2);
            this.f1793i = true;
        }
        return this;
    }

    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1788d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f1787c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    public boolean onLayoutDirectionChanged(int i2) {
        return this.f1785a.b(i2, b());
    }

    public boolean onLevelChange(int i2) {
        Drawable drawable = this.f1788d;
        if (drawable != null) {
            return drawable.setLevel(i2);
        }
        Drawable drawable2 = this.f1787c;
        if (drawable2 != null) {
            return drawable2.setLevel(i2);
        }
        return false;
    }

    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f1788d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f1787c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        if (drawable == this.f1787c && getCallback() != null) {
            getCallback().scheduleDrawable(this, runnable, j2);
        }
    }

    public void setAlpha(int i2) {
        if (!this.f1790f || this.f1789e != i2) {
            this.f1790f = true;
            this.f1789e = i2;
            Drawable drawable = this.f1787c;
            if (drawable == null) {
                return;
            }
            if (this.f1795k == 0) {
                drawable.setAlpha(i2);
            } else {
                a(false);
            }
        }
    }

    public void setAutoMirrored(boolean z) {
        b bVar = this.f1785a;
        if (bVar.C != z) {
            bVar.C = z;
            Drawable drawable = this.f1787c;
            if (drawable != null) {
                b.i.c.a.a.a(drawable, bVar.C);
            }
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        b bVar = this.f1785a;
        bVar.E = true;
        if (bVar.D != colorFilter) {
            bVar.D = colorFilter;
            Drawable drawable = this.f1787c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    public void setDither(boolean z) {
        b bVar = this.f1785a;
        if (bVar.x != z) {
            bVar.x = z;
            Drawable drawable = this.f1787c;
            if (drawable != null) {
                drawable.setDither(bVar.x);
            }
        }
    }

    public void setHotspot(float f2, float f3) {
        Drawable drawable = this.f1787c;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, f2, f3);
        }
    }

    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        Rect rect = this.f1786b;
        if (rect == null) {
            this.f1786b = new Rect(i2, i3, i4, i5);
        } else {
            rect.set(i2, i3, i4, i5);
        }
        Drawable drawable = this.f1787c;
        if (drawable != null) {
            b.i.c.a.a.a(drawable, i2, i3, i4, i5);
        }
    }

    public void setTintList(ColorStateList colorStateList) {
        b bVar = this.f1785a;
        bVar.H = true;
        if (bVar.F != colorStateList) {
            bVar.F = colorStateList;
            b.i.c.a.a.a(this.f1787c, colorStateList);
        }
    }

    public void setTintMode(PorterDuff.Mode mode) {
        b bVar = this.f1785a;
        bVar.I = true;
        if (bVar.G != mode) {
            bVar.G = mode;
            b.i.c.a.a.a(this.f1787c, mode);
        }
    }

    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f1788d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f1787c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable == this.f1787c && getCallback() != null) {
            getCallback().unscheduleDrawable(this, runnable);
        }
    }

    public final void a(Drawable drawable) {
        if (this.m == null) {
            this.m = new a();
        }
        a aVar = this.m;
        aVar.a(drawable.getCallback());
        drawable.setCallback(aVar);
        try {
            if (this.f1785a.A <= 0 && this.f1790f) {
                drawable.setAlpha(this.f1789e);
            }
            if (this.f1785a.E) {
                drawable.setColorFilter(this.f1785a.D);
            } else {
                if (this.f1785a.H) {
                    b.i.c.a.a.a(drawable, this.f1785a.F);
                }
                if (this.f1785a.I) {
                    b.i.c.a.a.a(drawable, this.f1785a.G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f1785a.x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.f1785a.C);
            }
            Rect rect = this.f1786b;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.m.a());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0068  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x006d A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:24:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f1790f = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f1787c
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r7 = 0
            if (r3 == 0) goto L_0x0038
            long r9 = r13.f1795k
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 == 0) goto L_0x003a
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L_0x0022
            int r9 = r13.f1789e
            r3.setAlpha(r9)
            r13.f1795k = r7
            goto L_0x003a
        L_0x0022:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r10 = (int) r9
            b.b.c.a.d$b r9 = r13.f1785a
            int r9 = r9.A
            int r10 = r10 / r9
            int r9 = 255 - r10
            int r10 = r13.f1789e
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = 1
            goto L_0x003b
        L_0x0038:
            r13.f1795k = r7
        L_0x003a:
            r3 = 0
        L_0x003b:
            android.graphics.drawable.Drawable r9 = r13.f1788d
            if (r9 == 0) goto L_0x0068
            long r10 = r13.f1796l
            int r12 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r12 == 0) goto L_0x006a
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L_0x0055
            r9.setVisible(r6, r6)
            r0 = 0
            r13.f1788d = r0
            r0 = -1
            r13.f1792h = r0
            r13.f1796l = r7
            goto L_0x006a
        L_0x0055:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            b.b.c.a.d$b r4 = r13.f1785a
            int r4 = r4.B
            int r3 = r3 / r4
            int r4 = r13.f1789e
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L_0x006b
        L_0x0068:
            r13.f1796l = r7
        L_0x006a:
            r0 = r3
        L_0x006b:
            if (r14 == 0) goto L_0x0077
            if (r0 == 0) goto L_0x0077
            java.lang.Runnable r14 = r13.f1794j
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L_0x0077:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.c.a.d.a(boolean):void");
    }

    public final void a(Resources resources) {
        this.f1785a.a(resources);
    }

    public void a(b bVar) {
        this.f1785a = bVar;
        int i2 = this.f1791g;
        if (i2 >= 0) {
            this.f1787c = bVar.a(i2);
            Drawable drawable = this.f1787c;
            if (drawable != null) {
                a(drawable);
            }
        }
        this.f1792h = -1;
        this.f1788d = null;
    }

    public static int a(Resources resources, int i2) {
        if (resources != null) {
            i2 = resources.getDisplayMetrics().densityDpi;
        }
        if (i2 == 0) {
            return 160;
        }
        return i2;
    }
}
