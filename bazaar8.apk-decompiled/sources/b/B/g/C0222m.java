package b.b.g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import b.b.g.Q;

/* renamed from: b.b.g.m  reason: case insensitive filesystem */
/* compiled from: AppCompatDrawableManager */
public final class C0222m {

    /* renamed from: a  reason: collision with root package name */
    public static final PorterDuff.Mode f2204a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b  reason: collision with root package name */
    public static C0222m f2205b;

    /* renamed from: c  reason: collision with root package name */
    public Q f2206c;

    public static synchronized C0222m b() {
        C0222m mVar;
        synchronized (C0222m.class) {
            if (f2205b == null) {
                c();
            }
            mVar = f2205b;
        }
        return mVar;
    }

    public static synchronized void c() {
        synchronized (C0222m.class) {
            if (f2205b == null) {
                f2205b = new C0222m();
                f2205b.f2206c = Q.a();
                f2205b.f2206c.a((Q.e) new C0221l());
            }
        }
    }

    public synchronized Drawable a(Context context, int i2) {
        return this.f2206c.b(context, i2);
    }

    public synchronized Drawable a(Context context, int i2, boolean z) {
        return this.f2206c.a(context, i2, z);
    }

    public synchronized void a(Context context) {
        this.f2206c.b(context);
    }

    public synchronized ColorStateList b(Context context, int i2) {
        return this.f2206c.c(context, i2);
    }

    public static void a(Drawable drawable, na naVar, int[] iArr) {
        Q.a(drawable, naVar, iArr);
    }

    public static synchronized PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2;
        synchronized (C0222m.class) {
            a2 = Q.a(i2, mode);
        }
        return a2;
    }
}
