package c.e.a.a.k;

import android.graphics.Bitmap;
import android.text.Layout;

/* compiled from: Cue */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f9114a;

    /* renamed from: b  reason: collision with root package name */
    public final Layout.Alignment f9115b;

    /* renamed from: c  reason: collision with root package name */
    public final Bitmap f9116c;

    /* renamed from: d  reason: collision with root package name */
    public final float f9117d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9118e;

    /* renamed from: f  reason: collision with root package name */
    public final int f9119f;

    /* renamed from: g  reason: collision with root package name */
    public final float f9120g;

    /* renamed from: h  reason: collision with root package name */
    public final int f9121h;

    /* renamed from: i  reason: collision with root package name */
    public final float f9122i;

    /* renamed from: j  reason: collision with root package name */
    public final float f9123j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f9124k;

    /* renamed from: l  reason: collision with root package name */
    public final int f9125l;
    public final int m;
    public final float n;

    public b(Bitmap bitmap, float f2, int i2, float f3, int i3, float f4, float f5) {
        this(null, null, bitmap, f3, 0, i3, f2, i2, Integer.MIN_VALUE, Float.MIN_VALUE, f4, f5, false, -16777216);
    }

    public b(CharSequence charSequence) {
        this(charSequence, null, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, float f2, int i2, int i3, float f3, int i4, float f4) {
        this(charSequence, alignment, f2, i2, i3, f3, i4, f4, false, -16777216);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, float f2, int i2, int i3, float f3, int i4, float f4, int i5, float f5) {
        this(charSequence, alignment, null, f2, i2, i3, f3, i4, i5, f5, f4, Float.MIN_VALUE, false, -16777216);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, float f2, int i2, int i3, float f3, int i4, float f4, boolean z, int i5) {
        this(charSequence, alignment, null, f2, i2, i3, f3, i4, Integer.MIN_VALUE, Float.MIN_VALUE, f4, Float.MIN_VALUE, z, i5);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, Bitmap bitmap, float f2, int i2, int i3, float f3, int i4, int i5, float f4, float f5, float f6, boolean z, int i6) {
        this.f9114a = charSequence;
        this.f9115b = alignment;
        this.f9116c = bitmap;
        this.f9117d = f2;
        this.f9118e = i2;
        this.f9119f = i3;
        this.f9120g = f3;
        this.f9121h = i4;
        this.f9122i = f5;
        this.f9123j = f6;
        this.f9124k = z;
        this.f9125l = i6;
        this.m = i5;
        this.n = f4;
    }
}
