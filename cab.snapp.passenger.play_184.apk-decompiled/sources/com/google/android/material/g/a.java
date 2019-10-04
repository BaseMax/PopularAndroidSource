package com.google.android.material.g;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.StateSet;
import androidx.core.graphics.ColorUtils;

public final class a {
    public static final boolean USE_FRAMEWORK_RIPPLE = (Build.VERSION.SDK_INT >= 21);

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3907a = {16842919};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f3908b = {16843623, 16842908};
    private static final int[] c = {16842908};
    private static final int[] d = {16843623};
    private static final int[] e = {16842913, 16842919};
    private static final int[] f = {16842913, 16843623, 16842908};
    private static final int[] g = {16842913, 16842908};
    private static final int[] h = {16842913, 16843623};
    private static final int[] i = {16842913};

    private a() {
    }

    public static ColorStateList convertToRippleDrawableColor(ColorStateList colorStateList) {
        if (USE_FRAMEWORK_RIPPLE) {
            return new ColorStateList(new int[][]{i, StateSet.NOTHING}, new int[]{a(colorStateList, e), a(colorStateList, f3907a)});
        }
        int[] iArr = e;
        int[] iArr2 = f;
        int[] iArr3 = g;
        int[] iArr4 = h;
        int[] iArr5 = f3907a;
        int[] iArr6 = f3908b;
        int[] iArr7 = c;
        int[] iArr8 = d;
        return new ColorStateList(new int[][]{iArr, iArr2, iArr3, iArr4, i, iArr5, iArr6, iArr7, iArr8, StateSet.NOTHING}, new int[]{a(colorStateList, iArr), a(colorStateList, iArr2), a(colorStateList, iArr3), a(colorStateList, iArr4), 0, a(colorStateList, iArr5), a(colorStateList, iArr6), a(colorStateList, iArr7), a(colorStateList, iArr8), 0});
    }

    private static int a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return USE_FRAMEWORK_RIPPLE ? a(colorForState) : colorForState;
    }

    private static int a(int i2) {
        return ColorUtils.setAlphaComponent(i2, Math.min(Color.alpha(i2) * 2, 255));
    }
}
