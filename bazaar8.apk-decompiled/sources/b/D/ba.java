package b.D;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.Property;
import android.view.View;
import java.lang.reflect.Field;

/* compiled from: ViewUtils */
public class ba {

    /* renamed from: a  reason: collision with root package name */
    public static final fa f1130a;

    /* renamed from: b  reason: collision with root package name */
    public static Field f1131b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f1132c;

    /* renamed from: d  reason: collision with root package name */
    public static final Property<View, Float> f1133d = new Z(Float.class, "translationAlpha");

    /* renamed from: e  reason: collision with root package name */
    public static final Property<View, Rect> f1134e = new aa(Rect.class, "clipBounds");

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 22) {
            f1130a = new ea();
        } else if (i2 >= 21) {
            f1130a = new da();
        } else if (i2 >= 19) {
            f1130a = new ca();
        } else {
            f1130a = new fa();
        }
    }

    public static void a(View view, float f2) {
        f1130a.a(view, f2);
    }

    public static Y b(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new X(view);
        }
        return W.c(view);
    }

    public static float c(View view) {
        return f1130a.b(view);
    }

    public static ka d(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return new ja(view);
        }
        return new ia(view.getWindowToken());
    }

    public static void e(View view) {
        f1130a.c(view);
    }

    public static void a(View view) {
        f1130a.a(view);
    }

    public static void a(View view, int i2) {
        a();
        Field field = f1131b;
        if (field != null) {
            try {
                f1131b.setInt(view, i2 | (field.getInt(view) & -13));
            } catch (IllegalAccessException unused) {
            }
        }
    }

    public static void b(View view, Matrix matrix) {
        f1130a.b(view, matrix);
    }

    public static void a(View view, Matrix matrix) {
        f1130a.a(view, matrix);
    }

    public static void a(View view, int i2, int i3, int i4, int i5) {
        f1130a.a(view, i2, i3, i4, i5);
    }

    public static void a() {
        if (!f1132c) {
            try {
                f1131b = View.class.getDeclaredField("mViewFlags");
                f1131b.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtils", "fetchViewFlagsField: ");
            }
            f1132c = true;
        }
    }
}
