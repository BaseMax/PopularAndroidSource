package c.e.a.c.p;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.StateSet;

/* compiled from: RippleUtils */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f11408a = (Build.VERSION.SDK_INT >= 21);

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f11409b = {16842919};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f11410c = {16843623, 16842908};

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f11411d = {16842908};

    /* renamed from: e  reason: collision with root package name */
    public static final int[] f11412e = {16843623};

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f11413f = {16842913, 16842919};

    /* renamed from: g  reason: collision with root package name */
    public static final int[] f11414g = {16842913, 16843623, 16842908};

    /* renamed from: h  reason: collision with root package name */
    public static final int[] f11415h = {16842913, 16842908};

    /* renamed from: i  reason: collision with root package name */
    public static final int[] f11416i = {16842913, 16843623};

    /* renamed from: j  reason: collision with root package name */
    public static final int[] f11417j = {16842913};

    public static ColorStateList a(ColorStateList colorStateList) {
        if (f11408a) {
            return new ColorStateList(new int[][]{f11417j, StateSet.NOTHING}, new int[]{a(colorStateList, f11413f), a(colorStateList, f11409b)});
        }
        int[] iArr = f11413f;
        int[] iArr2 = f11414g;
        int[] iArr3 = f11415h;
        int[] iArr4 = f11416i;
        int[] iArr5 = f11409b;
        int[] iArr6 = f11410c;
        int[] iArr7 = f11411d;
        int[] iArr8 = f11412e;
        return new ColorStateList(new int[][]{iArr, iArr2, iArr3, iArr4, f11417j, iArr5, iArr6, iArr7, iArr8, StateSet.NOTHING}, new int[]{a(colorStateList, iArr), a(colorStateList, iArr2), a(colorStateList, iArr3), a(colorStateList, iArr4), 0, a(colorStateList, iArr5), a(colorStateList, iArr6), a(colorStateList, iArr7), a(colorStateList, iArr8), 0});
    }

    public static int a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f11408a ? a(colorForState) : colorForState;
    }

    @TargetApi(21)
    public static int a(int i2) {
        return b.i.c.a.c(i2, Math.min(Color.alpha(i2) * 2, 255));
    }
}
