package com.getkeepsafe.taptargetview;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;

public class c {
    boolean A;
    float B;

    /* renamed from: a  reason: collision with root package name */
    final CharSequence f2508a;

    /* renamed from: b  reason: collision with root package name */
    final CharSequence f2509b;
    float c;
    int d;
    Rect e;
    Drawable f;
    Typeface g;
    Typeface h;
    int i;
    int j;
    int k;
    int l;
    int m;
    Integer n;
    Integer o;
    Integer p;
    Integer q;
    Integer r;
    int s;
    int t;
    int u;
    int v;
    int w;
    boolean x;
    boolean y;
    boolean z;

    public static c forToolbarOverflow(Toolbar toolbar, CharSequence charSequence) {
        return forToolbarOverflow(toolbar, charSequence, (CharSequence) null);
    }

    public static c forToolbarOverflow(Toolbar toolbar, CharSequence charSequence, CharSequence charSequence2) {
        return new d(toolbar, false, charSequence, charSequence2);
    }

    public static c forToolbarOverflow(android.widget.Toolbar toolbar, CharSequence charSequence) {
        return forToolbarOverflow(toolbar, charSequence, (CharSequence) null);
    }

    public static c forToolbarOverflow(android.widget.Toolbar toolbar, CharSequence charSequence, CharSequence charSequence2) {
        return new d(toolbar, false, charSequence, charSequence2);
    }

    public static c forToolbarNavigationIcon(Toolbar toolbar, CharSequence charSequence) {
        return forToolbarNavigationIcon(toolbar, charSequence, (CharSequence) null);
    }

    public static c forToolbarNavigationIcon(Toolbar toolbar, CharSequence charSequence, CharSequence charSequence2) {
        return new d(toolbar, true, charSequence, charSequence2);
    }

    public static c forToolbarNavigationIcon(android.widget.Toolbar toolbar, CharSequence charSequence) {
        return forToolbarNavigationIcon(toolbar, charSequence, (CharSequence) null);
    }

    public static c forToolbarNavigationIcon(android.widget.Toolbar toolbar, CharSequence charSequence, CharSequence charSequence2) {
        return new d(toolbar, true, charSequence, charSequence2);
    }

    public static c forToolbarMenuItem(Toolbar toolbar, int i2, CharSequence charSequence) {
        return forToolbarMenuItem(toolbar, i2, charSequence, (CharSequence) null);
    }

    public static c forToolbarMenuItem(Toolbar toolbar, int i2, CharSequence charSequence, CharSequence charSequence2) {
        return new d(toolbar, i2, charSequence, charSequence2);
    }

    public static c forToolbarMenuItem(android.widget.Toolbar toolbar, int i2, CharSequence charSequence) {
        return forToolbarMenuItem(toolbar, i2, charSequence, (CharSequence) null);
    }

    public static c forToolbarMenuItem(android.widget.Toolbar toolbar, int i2, CharSequence charSequence, CharSequence charSequence2) {
        return new d(toolbar, i2, charSequence, charSequence2);
    }

    public static c forView(View view, CharSequence charSequence) {
        return forView(view, charSequence, null);
    }

    public static c forView(View view, CharSequence charSequence, CharSequence charSequence2) {
        return new f(view, charSequence, charSequence2);
    }

    public static c forBounds(Rect rect, CharSequence charSequence) {
        return forBounds(rect, charSequence, null);
    }

    public static c forBounds(Rect rect, CharSequence charSequence, CharSequence charSequence2) {
        return new c(rect, charSequence, charSequence2);
    }

    private c(Rect rect, CharSequence charSequence, CharSequence charSequence2) {
        this(charSequence, charSequence2);
        if (rect != null) {
            this.e = rect;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null bounds or title");
    }

    protected c(CharSequence charSequence, CharSequence charSequence2) {
        this.c = 0.96f;
        this.d = 44;
        this.i = -1;
        this.j = -1;
        this.k = -1;
        this.l = -1;
        this.m = -1;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = -1;
        this.t = -1;
        this.u = 20;
        this.v = 18;
        this.w = -1;
        this.x = false;
        this.y = true;
        this.z = true;
        this.A = false;
        this.B = 0.54f;
        if (charSequence != null) {
            this.f2508a = charSequence;
            this.f2509b = charSequence2;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null title");
    }

    public c transparentTarget(boolean z2) {
        this.A = z2;
        return this;
    }

    public c outerCircleColor(int i2) {
        this.i = i2;
        return this;
    }

    public c outerCircleColorInt(int i2) {
        this.n = Integer.valueOf(i2);
        return this;
    }

    public c outerCircleAlpha(float f2) {
        if (f2 < 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("Given an invalid alpha value: ".concat(String.valueOf(f2)));
        }
        this.c = f2;
        return this;
    }

    public c targetCircleColor(int i2) {
        this.j = i2;
        return this;
    }

    public c targetCircleColorInt(int i2) {
        this.o = Integer.valueOf(i2);
        return this;
    }

    public c textColor(int i2) {
        this.l = i2;
        this.m = i2;
        return this;
    }

    public c textColorInt(int i2) {
        this.q = Integer.valueOf(i2);
        this.r = Integer.valueOf(i2);
        return this;
    }

    public c titleTextColor(int i2) {
        this.l = i2;
        return this;
    }

    public c titleTextColorInt(int i2) {
        this.q = Integer.valueOf(i2);
        return this;
    }

    public c descriptionTextColor(int i2) {
        this.m = i2;
        return this;
    }

    public c descriptionTextColorInt(int i2) {
        this.r = Integer.valueOf(i2);
        return this;
    }

    public c textTypeface(Typeface typeface) {
        if (typeface != null) {
            this.g = typeface;
            this.h = typeface;
            return this;
        }
        throw new IllegalArgumentException("Cannot use a null typeface");
    }

    public c titleTypeface(Typeface typeface) {
        if (typeface != null) {
            this.g = typeface;
            return this;
        }
        throw new IllegalArgumentException("Cannot use a null typeface");
    }

    public c descriptionTypeface(Typeface typeface) {
        if (typeface != null) {
            this.h = typeface;
            return this;
        }
        throw new IllegalArgumentException("Cannot use a null typeface");
    }

    public c titleTextSize(int i2) {
        if (i2 >= 0) {
            this.u = i2;
            return this;
        }
        throw new IllegalArgumentException("Given negative text size");
    }

    public c descriptionTextSize(int i2) {
        if (i2 >= 0) {
            this.v = i2;
            return this;
        }
        throw new IllegalArgumentException("Given negative text size");
    }

    public c titleTextDimen(int i2) {
        this.s = i2;
        return this;
    }

    public c descriptionTextAlpha(float f2) {
        if (f2 < 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("Given an invalid alpha value: ".concat(String.valueOf(f2)));
        }
        this.B = f2;
        return this;
    }

    public c descriptionTextDimen(int i2) {
        this.t = i2;
        return this;
    }

    public c dimColor(int i2) {
        this.k = i2;
        return this;
    }

    public c dimColorInt(int i2) {
        this.p = Integer.valueOf(i2);
        return this;
    }

    public c drawShadow(boolean z2) {
        this.x = z2;
        return this;
    }

    public c cancelable(boolean z2) {
        this.y = z2;
        return this;
    }

    public c tintTarget(boolean z2) {
        this.z = z2;
        return this;
    }

    public c icon(Drawable drawable) {
        return icon(drawable, false);
    }

    public c icon(Drawable drawable, boolean z2) {
        if (drawable != null) {
            this.f = drawable;
            if (!z2) {
                Drawable drawable2 = this.f;
                drawable2.setBounds(new Rect(0, 0, drawable2.getIntrinsicWidth(), this.f.getIntrinsicHeight()));
            }
            return this;
        }
        throw new IllegalArgumentException("Cannot use null drawable");
    }

    public c id(int i2) {
        this.w = i2;
        return this;
    }

    public c targetRadius(int i2) {
        this.d = i2;
        return this;
    }

    public int id() {
        return this.w;
    }

    public void onReady(Runnable runnable) {
        runnable.run();
    }

    public Rect bounds() {
        Rect rect = this.e;
        if (rect != null) {
            return rect;
        }
        throw new IllegalStateException("Requesting bounds that are not set! Make sure your target is ready");
    }

    static Integer a(Context context, Integer num, int i2) {
        return i2 != -1 ? Integer.valueOf(ContextCompat.getColor(context, i2)) : num;
    }

    static int a(Context context, int i2, int i3) {
        if (i3 != -1) {
            return context.getResources().getDimensionPixelSize(i3);
        }
        return e.b(context, i2);
    }
}
