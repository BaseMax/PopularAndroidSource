package b.D;

import android.annotation.SuppressLint;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewUtilsApi22 */
public class ea extends da {

    /* renamed from: i  reason: collision with root package name */
    public static Method f1149i;

    /* renamed from: j  reason: collision with root package name */
    public static boolean f1150j;

    public void a(View view, int i2, int i3, int i4, int i5) {
        e();
        Method method = f1149i;
        if (method != null) {
            try {
                method.invoke(view, new Object[]{Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)});
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @SuppressLint({"PrivateApi"})
    public final void e() {
        if (!f1150j) {
            Class<View> cls = View.class;
            try {
                f1149i = cls.getDeclaredMethod("setLeftTopRightBottom", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE});
                f1149i.setAccessible(true);
            } catch (NoSuchMethodException e2) {
                Log.i("ViewUtilsApi22", "Failed to retrieve setLeftTopRightBottom method", e2);
            }
            f1150j = true;
        }
    }
}
