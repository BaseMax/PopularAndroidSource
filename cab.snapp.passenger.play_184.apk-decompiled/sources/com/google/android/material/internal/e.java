package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import java.lang.reflect.Method;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static Method f3939a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f3940b;

    private e() {
    }

    public static boolean setContainerConstantState(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        return a(drawableContainer, constantState);
    }

    private static boolean a(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        if (!f3940b) {
            try {
                Method declaredMethod = DrawableContainer.class.getDeclaredMethod("setConstantState", new Class[]{DrawableContainer.DrawableContainerState.class});
                f3939a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f3940b = true;
        }
        Method method = f3939a;
        if (method != null) {
            try {
                method.invoke(drawableContainer, new Object[]{constantState});
                return true;
            } catch (Exception unused2) {
            }
        }
        return false;
    }
}
