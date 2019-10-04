package b.i.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import b.f.g;
import b.i.b.a.c;
import b.i.b.a.h;
import b.i.h.f;

/* compiled from: TypefaceCompat */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final j f2640a;

    /* renamed from: b  reason: collision with root package name */
    public static final g<String, Typeface> f2641b = new g<>(16);

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            f2640a = new g();
        } else if (i2 >= 26) {
            f2640a = new f();
        } else if (i2 >= 24 && e.a()) {
            f2640a = new e();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f2640a = new d();
        } else {
            f2640a = new j();
        }
    }

    public static String a(Resources resources, int i2, int i3) {
        return resources.getResourcePackageName(i2) + "-" + i2 + "-" + i3;
    }

    public static Typeface b(Resources resources, int i2, int i3) {
        return f2641b.b(a(resources, i2, i3));
    }

    public static Typeface a(Context context, c.a aVar, Resources resources, int i2, int i3, h.a aVar2, Handler handler, boolean z) {
        Typeface typeface;
        if (aVar instanceof c.d) {
            c.d dVar = (c.d) aVar;
            boolean z2 = false;
            if (!z ? aVar2 == null : dVar.a() == 0) {
                z2 = true;
            }
            typeface = f.a(context, dVar.b(), aVar2, handler, z2, z ? dVar.c() : -1, i3);
        } else {
            typeface = f2640a.a(context, (c.b) aVar, resources, i3);
            if (aVar2 != null) {
                if (typeface != null) {
                    aVar2.a(typeface, handler);
                } else {
                    aVar2.a(-3, handler);
                }
            }
        }
        if (typeface != null) {
            f2641b.a(a(resources, i2, i3), typeface);
        }
        return typeface;
    }

    public static Typeface b(Context context, Typeface typeface, int i2) {
        c.b a2 = f2640a.a(typeface);
        if (a2 == null) {
            return null;
        }
        return f2640a.a(context, a2, context.getResources(), i2);
    }

    public static Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        Typeface a2 = f2640a.a(context, resources, i2, str, i3);
        if (a2 != null) {
            f2641b.a(a(resources, i2, i3), a2);
        }
        return a2;
    }

    public static Typeface a(Context context, CancellationSignal cancellationSignal, f.b[] bVarArr, int i2) {
        return f2640a.a(context, cancellationSignal, bVarArr, i2);
    }

    public static Typeface a(Context context, Typeface typeface, int i2) {
        if (context != null) {
            if (Build.VERSION.SDK_INT < 21) {
                Typeface b2 = b(context, typeface, i2);
                if (b2 != null) {
                    return b2;
                }
            }
            return Typeface.create(typeface, i2);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }
}
