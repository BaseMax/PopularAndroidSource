package c.e.a.c.l;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.util.Log;
import java.lang.reflect.Method;

/* compiled from: DrawableUtils */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static Method f11390a;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f11391b;

    public static boolean a(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        return b(drawableContainer, constantState);
    }

    public static boolean b(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        if (!f11391b) {
            try {
                f11390a = DrawableContainer.class.getDeclaredMethod("setConstantState", new Class[]{DrawableContainer.DrawableContainerState.class});
                f11390a.setAccessible(true);
            } catch (NoSuchMethodException unused) {
                Log.e("DrawableUtils", "Could not fetch setConstantState(). Oh well.");
            }
            f11391b = true;
        }
        Method method = f11390a;
        if (method != null) {
            try {
                method.invoke(drawableContainer, new Object[]{constantState});
                return true;
            } catch (Exception unused2) {
                Log.e("DrawableUtils", "Could not invoke setConstantState(). Oh well.");
            }
        }
        return false;
    }
}
