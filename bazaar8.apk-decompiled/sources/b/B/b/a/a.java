package b.b.b.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import b.b.g.Q;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;

@SuppressLint({"RestrictedAPI"})
/* compiled from: AppCompatResources */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal<TypedValue> f1772a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    public static final WeakHashMap<Context, SparseArray<C0021a>> f1773b = new WeakHashMap<>(0);

    /* renamed from: c  reason: collision with root package name */
    public static final Object f1774c = new Object();

    /* renamed from: b.b.b.a.a$a  reason: collision with other inner class name */
    /* compiled from: AppCompatResources */
    private static class C0021a {

        /* renamed from: a  reason: collision with root package name */
        public final ColorStateList f1775a;

        /* renamed from: b  reason: collision with root package name */
        public final Configuration f1776b;

        public C0021a(ColorStateList colorStateList, Configuration configuration) {
            this.f1775a = colorStateList;
            this.f1776b = configuration;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0034, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.content.res.ColorStateList a(android.content.Context r4, int r5) {
        /*
            java.lang.Object r0 = f1774c
            monitor-enter(r0)
            java.util.WeakHashMap<android.content.Context, android.util.SparseArray<b.b.b.a.a$a>> r1 = f1773b     // Catch:{ all -> 0x0035 }
            java.lang.Object r1 = r1.get(r4)     // Catch:{ all -> 0x0035 }
            android.util.SparseArray r1 = (android.util.SparseArray) r1     // Catch:{ all -> 0x0035 }
            if (r1 == 0) goto L_0x0032
            int r2 = r1.size()     // Catch:{ all -> 0x0035 }
            if (r2 <= 0) goto L_0x0032
            java.lang.Object r2 = r1.get(r5)     // Catch:{ all -> 0x0035 }
            b.b.b.a.a$a r2 = (b.b.b.a.a.C0021a) r2     // Catch:{ all -> 0x0035 }
            if (r2 == 0) goto L_0x0032
            android.content.res.Configuration r3 = r2.f1776b     // Catch:{ all -> 0x0035 }
            android.content.res.Resources r4 = r4.getResources()     // Catch:{ all -> 0x0035 }
            android.content.res.Configuration r4 = r4.getConfiguration()     // Catch:{ all -> 0x0035 }
            boolean r4 = r3.equals(r4)     // Catch:{ all -> 0x0035 }
            if (r4 == 0) goto L_0x002f
            android.content.res.ColorStateList r4 = r2.f1775a     // Catch:{ all -> 0x0035 }
            monitor-exit(r0)     // Catch:{ all -> 0x0035 }
            return r4
        L_0x002f:
            r1.remove(r5)     // Catch:{ all -> 0x0035 }
        L_0x0032:
            monitor-exit(r0)     // Catch:{ all -> 0x0035 }
            r4 = 0
            return r4
        L_0x0035:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0035 }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.b.a.a.a(android.content.Context, int):android.content.res.ColorStateList");
    }

    public static ColorStateList b(Context context, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i2);
        }
        ColorStateList a2 = a(context, i2);
        if (a2 != null) {
            return a2;
        }
        ColorStateList d2 = d(context, i2);
        if (d2 == null) {
            return b.i.b.a.b(context, i2);
        }
        a(context, i2, d2);
        return d2;
    }

    public static Drawable c(Context context, int i2) {
        return Q.a().b(context, i2);
    }

    public static ColorStateList d(Context context, int i2) {
        if (e(context, i2)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return b.i.b.a.a.a(resources, (XmlPullParser) resources.getXml(i2), context.getTheme());
        } catch (Exception e2) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e2);
            return null;
        }
    }

    public static boolean e(Context context, int i2) {
        Resources resources = context.getResources();
        TypedValue a2 = a();
        resources.getValue(i2, a2, true);
        int i3 = a2.type;
        if (i3 < 28 || i3 > 31) {
            return false;
        }
        return true;
    }

    public static void a(Context context, int i2, ColorStateList colorStateList) {
        synchronized (f1774c) {
            SparseArray sparseArray = f1773b.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray();
                f1773b.put(context, sparseArray);
            }
            sparseArray.append(i2, new C0021a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    public static TypedValue a() {
        TypedValue typedValue = f1772a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        f1772a.set(typedValue2);
        return typedValue2;
    }
}
