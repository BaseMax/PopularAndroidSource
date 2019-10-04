package com.farsitel.bazaar.common.model.recycler;

import android.graphics.Color;

/* compiled from: AbstractSectionRowData.kt */
public final class AbstractSectionRowDataKt {
    public static final int mixColor(int i2, int i3, float f2) {
        float f3 = ((float) 1) - f2;
        return Color.rgb((int) ((((float) Color.red(i2)) * f2) + (((float) Color.red(i3)) * f3)), (int) ((((float) Color.green(i2)) * f2) + (((float) Color.green(i3)) * f3)), (int) ((f2 * ((float) Color.blue(i2))) + (f3 * ((float) Color.blue(i3)))));
    }
}
