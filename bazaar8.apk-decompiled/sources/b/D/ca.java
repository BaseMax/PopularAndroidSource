package b.D;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewUtilsApi19 */
public class ca extends fa {

    /* renamed from: a  reason: collision with root package name */
    public static Method f1140a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f1141b;

    /* renamed from: c  reason: collision with root package name */
    public static Method f1142c;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f1143d;

    public void a(View view) {
    }

    public void a(View view, float f2) {
        b();
        Method method = f1140a;
        if (method != null) {
            try {
                method.invoke(view, new Object[]{Float.valueOf(f2)});
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        } else {
            view.setAlpha(f2);
        }
    }

    public float b(View view) {
        a();
        Method method = f1142c;
        if (method != null) {
            try {
                return ((Float) method.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return super.b(view);
    }

    public void c(View view) {
    }

    public final void a() {
        if (!f1143d) {
            try {
                f1142c = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
                f1142c.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("ViewUtilsApi19", "Failed to retrieve getTransitionAlpha method", e2);
            }
            f1143d = true;
        }
    }

    public final void b() {
        if (!f1141b) {
            Class<View> cls = View.class;
            try {
                f1140a = cls.getDeclaredMethod("setTransitionAlpha", new Class[]{Float.TYPE});
                f1140a.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("ViewUtilsApi19", "Failed to retrieve setTransitionAlpha method", e2);
            }
            f1141b = true;
        }
    }
}
