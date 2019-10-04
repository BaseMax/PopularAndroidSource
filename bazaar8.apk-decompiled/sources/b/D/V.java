package b.D;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewGroupUtilsApi18 */
public class V {

    /* renamed from: a  reason: collision with root package name */
    public static Method f1121a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f1122b;

    public static void a(ViewGroup viewGroup, boolean z) {
        a();
        Method method = f1121a;
        if (method != null) {
            try {
                method.invoke(viewGroup, new Object[]{Boolean.valueOf(z)});
            } catch (IllegalAccessException e2) {
                Log.i("ViewUtilsApi18", "Failed to invoke suppressLayout method", e2);
            } catch (InvocationTargetException e3) {
                Log.i("ViewUtilsApi18", "Error invoking suppressLayout method", e3);
            }
        }
    }

    public static void a() {
        if (!f1122b) {
            Class<ViewGroup> cls = ViewGroup.class;
            try {
                f1121a = cls.getDeclaredMethod("suppressLayout", new Class[]{Boolean.TYPE});
                f1121a.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", e2);
            }
            f1122b = true;
        }
    }
}
