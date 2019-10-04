package b.b.g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import b.i.c.a;

/* compiled from: ThemeUtils */
public class ka {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal<TypedValue> f2188a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f2189b = {-16842910};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f2190c = {16842908};

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f2191d = {16843518};

    /* renamed from: e  reason: collision with root package name */
    public static final int[] f2192e = {16842919};

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f2193f = {16842912};

    /* renamed from: g  reason: collision with root package name */
    public static final int[] f2194g = {16842913};

    /* renamed from: h  reason: collision with root package name */
    public static final int[] f2195h = {-16842919, -16842908};

    /* renamed from: i  reason: collision with root package name */
    public static final int[] f2196i = new int[0];

    /* renamed from: j  reason: collision with root package name */
    public static final int[] f2197j = new int[1];

    public static int a(Context context, int i2) {
        ColorStateList c2 = c(context, i2);
        if (c2 != null && c2.isStateful()) {
            return c2.getColorForState(f2189b, c2.getDefaultColor());
        }
        TypedValue a2 = a();
        context.getTheme().resolveAttribute(16842803, a2, true);
        return a(context, i2, a2.getFloat());
    }

    public static int b(Context context, int i2) {
        int[] iArr = f2197j;
        iArr[0] = i2;
        pa a2 = pa.a(context, (AttributeSet) null, iArr);
        try {
            return a2.a(0, 0);
        } finally {
            a2.a();
        }
    }

    public static ColorStateList c(Context context, int i2) {
        int[] iArr = f2197j;
        iArr[0] = i2;
        pa a2 = pa.a(context, (AttributeSet) null, iArr);
        try {
            return a2.a(0);
        } finally {
            a2.a();
        }
    }

    public static TypedValue a() {
        TypedValue typedValue = f2188a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        f2188a.set(typedValue2);
        return typedValue2;
    }

    public static int a(Context context, int i2, float f2) {
        int b2 = b(context, i2);
        return a.c(b2, Math.round(((float) Color.alpha(b2)) * f2));
    }
}
