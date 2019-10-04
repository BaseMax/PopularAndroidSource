package c.c.a.d.g;

import android.graphics.Color;

/* compiled from: ColorUtil.kt */
public final class a {
    public static final int a(int i2, int i3, float f2) {
        float f3 = ((float) 1) - f2;
        return Color.rgb((int) ((((float) Color.red(i2)) * f2) + (((float) Color.red(i3)) * f3)), (int) ((((float) Color.green(i2)) * f2) + (((float) Color.green(i3)) * f3)), (int) ((f2 * ((float) Color.blue(i2))) + (f3 * ((float) Color.blue(i3)))));
    }
}
