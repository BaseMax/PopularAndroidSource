package b.b.g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import b.b.b.a.a;
import b.i.b.a.h;

/* compiled from: TintTypedArray */
public class pa {

    /* renamed from: a  reason: collision with root package name */
    public final Context f2223a;

    /* renamed from: b  reason: collision with root package name */
    public final TypedArray f2224b;

    /* renamed from: c  reason: collision with root package name */
    public TypedValue f2225c;

    public pa(Context context, TypedArray typedArray) {
        this.f2223a = context;
        this.f2224b = typedArray;
    }

    public static pa a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new pa(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public Drawable b(int i2) {
        if (this.f2224b.hasValue(i2)) {
            int resourceId = this.f2224b.getResourceId(i2, 0);
            if (resourceId != 0) {
                return a.c(this.f2223a, resourceId);
            }
        }
        return this.f2224b.getDrawable(i2);
    }

    public Drawable c(int i2) {
        if (this.f2224b.hasValue(i2)) {
            int resourceId = this.f2224b.getResourceId(i2, 0);
            if (resourceId != 0) {
                return C0222m.b().a(this.f2223a, resourceId, true);
            }
        }
        return null;
    }

    public String d(int i2) {
        return this.f2224b.getString(i2);
    }

    public CharSequence e(int i2) {
        return this.f2224b.getText(i2);
    }

    public int f(int i2, int i3) {
        return this.f2224b.getLayoutDimension(i2, i3);
    }

    public int g(int i2, int i3) {
        return this.f2224b.getResourceId(i2, i3);
    }

    public static pa a(Context context, AttributeSet attributeSet, int[] iArr, int i2, int i3) {
        return new pa(context, context.obtainStyledAttributes(attributeSet, iArr, i2, i3));
    }

    public int d(int i2, int i3) {
        return this.f2224b.getInt(i2, i3);
    }

    public int e(int i2, int i3) {
        return this.f2224b.getInteger(i2, i3);
    }

    public CharSequence[] f(int i2) {
        return this.f2224b.getTextArray(i2);
    }

    public boolean g(int i2) {
        return this.f2224b.hasValue(i2);
    }

    public static pa a(Context context, int i2, int[] iArr) {
        return new pa(context, context.obtainStyledAttributes(i2, iArr));
    }

    public int c(int i2, int i3) {
        return this.f2224b.getDimensionPixelSize(i2, i3);
    }

    public Typeface a(int i2, int i3, h.a aVar) {
        int resourceId = this.f2224b.getResourceId(i2, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f2225c == null) {
            this.f2225c = new TypedValue();
        }
        return h.a(this.f2223a, resourceId, this.f2225c, i3, aVar);
    }

    public float b(int i2, float f2) {
        return this.f2224b.getFloat(i2, f2);
    }

    public int b(int i2, int i3) {
        return this.f2224b.getDimensionPixelOffset(i2, i3);
    }

    public boolean a(int i2, boolean z) {
        return this.f2224b.getBoolean(i2, z);
    }

    public int a(int i2, int i3) {
        return this.f2224b.getColor(i2, i3);
    }

    public ColorStateList a(int i2) {
        if (this.f2224b.hasValue(i2)) {
            int resourceId = this.f2224b.getResourceId(i2, 0);
            if (resourceId != 0) {
                ColorStateList b2 = a.b(this.f2223a, resourceId);
                if (b2 != null) {
                    return b2;
                }
            }
        }
        return this.f2224b.getColorStateList(i2);
    }

    public float a(int i2, float f2) {
        return this.f2224b.getDimension(i2, f2);
    }

    public void a() {
        this.f2224b.recycle();
    }
}
