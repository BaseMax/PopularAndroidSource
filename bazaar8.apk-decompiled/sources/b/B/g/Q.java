package b.b.g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import b.E.a.a.k;
import b.f.C0243b;
import b.f.g;
import b.f.j;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: ResourceManagerInternal */
public final class Q {

    /* renamed from: a  reason: collision with root package name */
    public static final PorterDuff.Mode f2099a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b  reason: collision with root package name */
    public static Q f2100b;

    /* renamed from: c  reason: collision with root package name */
    public static final c f2101c = new c(6);

    /* renamed from: d  reason: collision with root package name */
    public WeakHashMap<Context, j<ColorStateList>> f2102d;

    /* renamed from: e  reason: collision with root package name */
    public C0243b<String, d> f2103e;

    /* renamed from: f  reason: collision with root package name */
    public j<String> f2104f;

    /* renamed from: g  reason: collision with root package name */
    public final WeakHashMap<Context, b.f.f<WeakReference<Drawable.ConstantState>>> f2105g = new WeakHashMap<>(0);

    /* renamed from: h  reason: collision with root package name */
    public TypedValue f2106h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f2107i;

    /* renamed from: j  reason: collision with root package name */
    public e f2108j;

    /* compiled from: ResourceManagerInternal */
    static class a implements d {
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return b.b.c.a.b.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e2);
                return null;
            }
        }
    }

    /* compiled from: ResourceManagerInternal */
    private static class b implements d {
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return b.E.a.a.d.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e2);
                return null;
            }
        }
    }

    /* compiled from: ResourceManagerInternal */
    private static class c extends g<Integer, PorterDuffColorFilter> {
        public c(int i2) {
            super(i2);
        }

        public PorterDuffColorFilter a(int i2, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return (PorterDuffColorFilter) a(Integer.valueOf(a(i2, mode)), porterDuffColorFilter);
        }

        public PorterDuffColorFilter b(int i2, PorterDuff.Mode mode) {
            return (PorterDuffColorFilter) b(Integer.valueOf(a(i2, mode)));
        }

        public static int a(int i2, PorterDuff.Mode mode) {
            return ((i2 + 31) * 31) + mode.hashCode();
        }
    }

    /* compiled from: ResourceManagerInternal */
    private interface d {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* compiled from: ResourceManagerInternal */
    interface e {
        ColorStateList a(Context context, int i2);

        PorterDuff.Mode a(int i2);

        Drawable a(Q q, Context context, int i2);

        boolean a(Context context, int i2, Drawable drawable);

        boolean b(Context context, int i2, Drawable drawable);
    }

    /* compiled from: ResourceManagerInternal */
    private static class f implements d {
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return k.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e2);
                return null;
            }
        }
    }

    public static synchronized Q a() {
        Q q;
        synchronized (Q.class) {
            if (f2100b == null) {
                f2100b = new Q();
                a(f2100b);
            }
            q = f2100b;
        }
        return q;
    }

    public synchronized Drawable b(Context context, int i2) {
        return a(context, i2, false);
    }

    public synchronized ColorStateList c(Context context, int i2) {
        ColorStateList d2;
        d2 = d(context, i2);
        if (d2 == null) {
            d2 = this.f2108j == null ? null : this.f2108j.a(context, i2);
            if (d2 != null) {
                a(context, i2, d2);
            }
        }
        return d2;
    }

    public final ColorStateList d(Context context, int i2) {
        WeakHashMap<Context, j<ColorStateList>> weakHashMap = this.f2102d;
        if (weakHashMap == null) {
            return null;
        }
        j jVar = weakHashMap.get(context);
        if (jVar != null) {
            return (ColorStateList) jVar.a(i2);
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0073 A[Catch:{ Exception -> 0x00a2 }] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x009a A[Catch:{ Exception -> 0x00a2 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.graphics.drawable.Drawable e(android.content.Context r11, int r12) {
        /*
            r10 = this;
            b.f.b<java.lang.String, b.b.g.Q$d> r0 = r10.f2103e
            r1 = 0
            if (r0 == 0) goto L_0x00b2
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x00b2
            b.f.j<java.lang.String> r0 = r10.f2104f
            java.lang.String r2 = "appcompat_skip_skip"
            if (r0 == 0) goto L_0x0028
            java.lang.Object r0 = r0.a((int) r12)
            java.lang.String r0 = (java.lang.String) r0
            boolean r3 = r2.equals(r0)
            if (r3 != 0) goto L_0x0027
            if (r0 == 0) goto L_0x002f
            b.f.b<java.lang.String, b.b.g.Q$d> r3 = r10.f2103e
            java.lang.Object r0 = r3.get(r0)
            if (r0 != 0) goto L_0x002f
        L_0x0027:
            return r1
        L_0x0028:
            b.f.j r0 = new b.f.j
            r0.<init>()
            r10.f2104f = r0
        L_0x002f:
            android.util.TypedValue r0 = r10.f2106h
            if (r0 != 0) goto L_0x003a
            android.util.TypedValue r0 = new android.util.TypedValue
            r0.<init>()
            r10.f2106h = r0
        L_0x003a:
            android.util.TypedValue r0 = r10.f2106h
            android.content.res.Resources r1 = r11.getResources()
            r3 = 1
            r1.getValue(r12, r0, r3)
            long r4 = a((android.util.TypedValue) r0)
            android.graphics.drawable.Drawable r6 = r10.a((android.content.Context) r11, (long) r4)
            if (r6 == 0) goto L_0x004f
            return r6
        L_0x004f:
            java.lang.CharSequence r7 = r0.string
            if (r7 == 0) goto L_0x00aa
            java.lang.String r7 = r7.toString()
            java.lang.String r8 = ".xml"
            boolean r7 = r7.endsWith(r8)
            if (r7 == 0) goto L_0x00aa
            android.content.res.XmlResourceParser r1 = r1.getXml(r12)     // Catch:{ Exception -> 0x00a2 }
            android.util.AttributeSet r7 = android.util.Xml.asAttributeSet(r1)     // Catch:{ Exception -> 0x00a2 }
        L_0x0067:
            int r8 = r1.next()     // Catch:{ Exception -> 0x00a2 }
            r9 = 2
            if (r8 == r9) goto L_0x0071
            if (r8 == r3) goto L_0x0071
            goto L_0x0067
        L_0x0071:
            if (r8 != r9) goto L_0x009a
            java.lang.String r3 = r1.getName()     // Catch:{ Exception -> 0x00a2 }
            b.f.j<java.lang.String> r8 = r10.f2104f     // Catch:{ Exception -> 0x00a2 }
            r8.a(r12, r3)     // Catch:{ Exception -> 0x00a2 }
            b.f.b<java.lang.String, b.b.g.Q$d> r8 = r10.f2103e     // Catch:{ Exception -> 0x00a2 }
            java.lang.Object r3 = r8.get(r3)     // Catch:{ Exception -> 0x00a2 }
            b.b.g.Q$d r3 = (b.b.g.Q.d) r3     // Catch:{ Exception -> 0x00a2 }
            if (r3 == 0) goto L_0x008f
            android.content.res.Resources$Theme r8 = r11.getTheme()     // Catch:{ Exception -> 0x00a2 }
            android.graphics.drawable.Drawable r1 = r3.a(r11, r1, r7, r8)     // Catch:{ Exception -> 0x00a2 }
            r6 = r1
        L_0x008f:
            if (r6 == 0) goto L_0x00aa
            int r0 = r0.changingConfigurations     // Catch:{ Exception -> 0x00a2 }
            r6.setChangingConfigurations(r0)     // Catch:{ Exception -> 0x00a2 }
            r10.a((android.content.Context) r11, (long) r4, (android.graphics.drawable.Drawable) r6)     // Catch:{ Exception -> 0x00a2 }
            goto L_0x00aa
        L_0x009a:
            org.xmlpull.v1.XmlPullParserException r11 = new org.xmlpull.v1.XmlPullParserException     // Catch:{ Exception -> 0x00a2 }
            java.lang.String r0 = "No start tag found"
            r11.<init>(r0)     // Catch:{ Exception -> 0x00a2 }
            throw r11     // Catch:{ Exception -> 0x00a2 }
        L_0x00a2:
            r11 = move-exception
            java.lang.String r0 = "ResourceManagerInternal"
            java.lang.String r1 = "Exception while inflating drawable"
            android.util.Log.e(r0, r1, r11)
        L_0x00aa:
            if (r6 != 0) goto L_0x00b1
            b.f.j<java.lang.String> r11 = r10.f2104f
            r11.a(r12, r2)
        L_0x00b1:
            return r6
        L_0x00b2:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.Q.e(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    public synchronized void b(Context context) {
        b.f.f fVar = this.f2105g.get(context);
        if (fVar != null) {
            fVar.a();
        }
    }

    public static void a(Q q) {
        if (Build.VERSION.SDK_INT < 24) {
            q.a("vector", (d) new f());
            q.a("animated-vector", (d) new b());
            q.a("animated-selector", (d) new a());
        }
    }

    public synchronized void a(e eVar) {
        this.f2108j = eVar;
    }

    public synchronized Drawable a(Context context, int i2, boolean z) {
        Drawable e2;
        a(context);
        e2 = e(context, i2);
        if (e2 == null) {
            e2 = a(context, i2);
        }
        if (e2 == null) {
            e2 = b.i.b.a.c(context, i2);
        }
        if (e2 != null) {
            e2 = a(context, i2, z, e2);
        }
        if (e2 != null) {
            H.b(e2);
        }
        return e2;
    }

    public static long a(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    public final Drawable a(Context context, int i2) {
        Drawable drawable;
        if (this.f2106h == null) {
            this.f2106h = new TypedValue();
        }
        TypedValue typedValue = this.f2106h;
        context.getResources().getValue(i2, typedValue, true);
        long a2 = a(typedValue);
        Drawable a3 = a(context, a2);
        if (a3 != null) {
            return a3;
        }
        e eVar = this.f2108j;
        if (eVar == null) {
            drawable = null;
        } else {
            drawable = eVar.a(this, context, i2);
        }
        if (drawable != null) {
            drawable.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, a2, drawable);
        }
        return drawable;
    }

    public final Drawable a(Context context, int i2, boolean z, Drawable drawable) {
        ColorStateList c2 = c(context, i2);
        if (c2 != null) {
            if (H.a(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable i3 = b.i.c.a.a.i(drawable);
            b.i.c.a.a.a(i3, c2);
            PorterDuff.Mode a2 = a(i2);
            if (a2 == null) {
                return i3;
            }
            b.i.c.a.a.a(i3, a2);
            return i3;
        }
        e eVar = this.f2108j;
        if ((eVar == null || !eVar.b(context, i2, drawable)) && !a(context, i2, drawable) && z) {
            return null;
        }
        return drawable;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002c, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized android.graphics.drawable.Drawable a(android.content.Context r4, long r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.util.WeakHashMap<android.content.Context, b.f.f<java.lang.ref.WeakReference<android.graphics.drawable.Drawable$ConstantState>>> r0 = r3.f2105g     // Catch:{ all -> 0x002d }
            java.lang.Object r0 = r0.get(r4)     // Catch:{ all -> 0x002d }
            b.f.f r0 = (b.f.f) r0     // Catch:{ all -> 0x002d }
            r1 = 0
            if (r0 != 0) goto L_0x000e
            monitor-exit(r3)
            return r1
        L_0x000e:
            java.lang.Object r2 = r0.b((long) r5)     // Catch:{ all -> 0x002d }
            java.lang.ref.WeakReference r2 = (java.lang.ref.WeakReference) r2     // Catch:{ all -> 0x002d }
            if (r2 == 0) goto L_0x002b
            java.lang.Object r2 = r2.get()     // Catch:{ all -> 0x002d }
            android.graphics.drawable.Drawable$ConstantState r2 = (android.graphics.drawable.Drawable.ConstantState) r2     // Catch:{ all -> 0x002d }
            if (r2 == 0) goto L_0x0028
            android.content.res.Resources r4 = r4.getResources()     // Catch:{ all -> 0x002d }
            android.graphics.drawable.Drawable r4 = r2.newDrawable(r4)     // Catch:{ all -> 0x002d }
            monitor-exit(r3)
            return r4
        L_0x0028:
            r0.a((long) r5)     // Catch:{ all -> 0x002d }
        L_0x002b:
            monitor-exit(r3)
            return r1
        L_0x002d:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.Q.a(android.content.Context, long):android.graphics.drawable.Drawable");
    }

    public final synchronized boolean a(Context context, long j2, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        b.f.f fVar = this.f2105g.get(context);
        if (fVar == null) {
            fVar = new b.f.f();
            this.f2105g.put(context, fVar);
        }
        fVar.c(j2, new WeakReference(constantState));
        return true;
    }

    public synchronized Drawable a(Context context, Ca ca, int i2) {
        Drawable e2 = e(context, i2);
        if (e2 == null) {
            e2 = ca.a(i2);
        }
        if (e2 == null) {
            return null;
        }
        return a(context, i2, false, e2);
    }

    public boolean a(Context context, int i2, Drawable drawable) {
        e eVar = this.f2108j;
        return eVar != null && eVar.a(context, i2, drawable);
    }

    public final void a(String str, d dVar) {
        if (this.f2103e == null) {
            this.f2103e = new C0243b<>();
        }
        this.f2103e.put(str, dVar);
    }

    public PorterDuff.Mode a(int i2) {
        e eVar = this.f2108j;
        if (eVar == null) {
            return null;
        }
        return eVar.a(i2);
    }

    public final void a(Context context, int i2, ColorStateList colorStateList) {
        if (this.f2102d == null) {
            this.f2102d = new WeakHashMap<>();
        }
        j jVar = this.f2102d.get(context);
        if (jVar == null) {
            jVar = new j();
            this.f2102d.put(context, jVar);
        }
        jVar.a(i2, colorStateList);
    }

    public static void a(Drawable drawable, na naVar, int[] iArr) {
        if (!H.a(drawable) || drawable.mutate() == drawable) {
            if (naVar.f2214d || naVar.f2213c) {
                drawable.setColorFilter(a(naVar.f2214d ? naVar.f2211a : null, naVar.f2213c ? naVar.f2212b : f2099a, iArr));
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
            return;
        }
        Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
    }

    public static PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return a(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter b2;
        synchronized (Q.class) {
            b2 = f2101c.b(i2, mode);
            if (b2 == null) {
                b2 = new PorterDuffColorFilter(i2, mode);
                f2101c.a(i2, mode, b2);
            }
        }
        return b2;
    }

    public final void a(Context context) {
        if (!this.f2107i) {
            this.f2107i = true;
            Drawable b2 = b(context, b.b.d.a.abc_vector_test);
            if (b2 == null || !a(b2)) {
                this.f2107i = false;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
        }
    }

    public static boolean a(Drawable drawable) {
        return (drawable instanceof k) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }
}
