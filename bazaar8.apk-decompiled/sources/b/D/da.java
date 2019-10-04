package b.D;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewUtilsApi21 */
public class da extends ca {

    /* renamed from: e  reason: collision with root package name */
    public static Method f1145e;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f1146f;

    /* renamed from: g  reason: collision with root package name */
    public static Method f1147g;

    /* renamed from: h  reason: collision with root package name */
    public static boolean f1148h;

    public void a(View view, Matrix matrix) {
        c();
        Method method = f1145e;
        if (method != null) {
            try {
                method.invoke(view, new Object[]{matrix});
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    public void b(View view, Matrix matrix) {
        d();
        Method method = f1147g;
        if (method != null) {
            try {
                method.invoke(view, new Object[]{matrix});
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    public final void c() {
        if (!f1146f) {
            try {
                f1145e = View.class.getDeclaredMethod("transformMatrixToGlobal", new Class[]{Matrix.class});
                f1145e.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", e2);
            }
            f1146f = true;
        }
    }

    public final void d() {
        if (!f1148h) {
            try {
                f1147g = View.class.getDeclaredMethod("transformMatrixToLocal", new Class[]{Matrix.class});
                f1147g.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", e2);
            }
            f1148h = true;
        }
    }
}
