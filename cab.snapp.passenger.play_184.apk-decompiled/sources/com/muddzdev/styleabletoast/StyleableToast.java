package com.muddzdev.styleabletoast;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.widget.TextViewCompat;
import com.muddzdev.styleabletoast.a;

public class StyleableToast extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f5009a;

    /* renamed from: b  reason: collision with root package name */
    private int f5010b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private float k;
    private boolean l;
    private boolean m;
    private boolean n;
    private String o;
    private TypedArray p;
    private TextView q;
    private int r;
    private Toast s;
    private LinearLayout t;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f5011a = -1;

        /* renamed from: b  reason: collision with root package name */
        int f5012b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        int i;
        float j;
        boolean k;
        boolean l;
        String m;
        int n = 80;
        final Context o;
        private StyleableToast p;

        public a(Context context) {
            this.o = context;
        }

        public final a text(String str) {
            this.m = str;
            return this;
        }

        public final a textColor(int i2) {
            this.g = i2;
            return this;
        }

        public final a textBold() {
            this.l = true;
            return this;
        }

        public final a textSize(float f2) {
            this.j = f2;
            return this;
        }

        public final a font(int i2) {
            this.h = i2;
            return this;
        }

        public final a backgroundColor(int i2) {
            this.f5012b = i2;
            return this;
        }

        public final a solidBackground() {
            this.k = true;
            return this;
        }

        public final a stroke(int i2, int i3) {
            this.d = b.a(this.o, i2);
            this.c = i3;
            return this;
        }

        public final a cornerRadius(int i2) {
            this.f5011a = b.a(this.o, i2);
            return this;
        }

        public final a iconStart(int i2) {
            this.e = i2;
            return this;
        }

        public final a iconEnd(int i2) {
            this.f = i2;
            return this;
        }

        public final a gravity(int i2) {
            this.n = i2;
            return this;
        }

        public final a length(int i2) {
            this.i = i2;
            return this;
        }

        public final void show() {
            this.p = new StyleableToast(this, (byte) 0);
            this.p.show();
        }
    }

    /* synthetic */ StyleableToast(a aVar, byte b2) {
        this(aVar);
    }

    public static StyleableToast makeText(Context context, String str, int i2, int i3) {
        return new StyleableToast(context, str, i2, i3);
    }

    public static StyleableToast makeText(Context context, String str, int i2) {
        return new StyleableToast(context, str, 0, i2);
    }

    private StyleableToast(Context context, String str, int i2, int i3) {
        super(context);
        this.l = false;
        this.o = str;
        this.i = i2;
        this.j = i3;
    }

    public void cancel() {
        Toast toast = this.s;
        if (toast != null) {
            toast.cancel();
        }
    }

    private StyleableToast(a aVar) {
        super(aVar.o);
        this.l = false;
        this.f5010b = aVar.f5012b;
        this.f5009a = aVar.f5011a;
        this.f = aVar.f;
        this.e = aVar.e;
        this.c = aVar.c;
        this.d = aVar.d;
        this.m = aVar.k;
        this.g = aVar.g;
        this.k = aVar.j;
        this.n = aVar.l;
        this.h = aVar.h;
        this.o = aVar.m;
        this.r = aVar.n;
        this.i = aVar.i;
    }

    public void show() {
        View inflate = inflate(getContext(), a.e.styleable_layout, null);
        this.t = (LinearLayout) inflate.getRootView();
        this.q = (TextView) inflate.findViewById(a.c.textview);
        if (this.j > 0) {
            this.p = getContext().obtainStyledAttributes(this.j, a.f.StyleableToast);
        }
        int i2 = 2;
        int i3 = 1;
        if (this.j != 0) {
            int color = ContextCompat.getColor(getContext(), a.C0095a.default_background_color);
            this.m = this.p.getBoolean(a.f.StyleableToast_stSolidBackground, false);
            this.f5010b = this.p.getColor(a.f.StyleableToast_stColorBackground, color);
            this.f5009a = (int) this.p.getDimension(a.f.StyleableToast_stRadius, (float) ((int) getResources().getDimension(a.b.default_corner_radius)));
            this.i = this.p.getInt(a.f.StyleableToast_stLength, 0);
            this.r = this.p.getInt(a.f.StyleableToast_stGravity, 80);
            int i4 = this.r;
            if (i4 == 1) {
                this.r = 17;
            } else if (i4 == 2) {
                this.r = 48;
            }
            if (this.p.hasValue(a.f.StyleableToast_stStrokeColor) && this.p.hasValue(a.f.StyleableToast_stStrokeWidth)) {
                this.d = (int) this.p.getDimension(a.f.StyleableToast_stStrokeWidth, 0.0f);
                this.c = this.p.getColor(a.f.StyleableToast_stStrokeColor, 0);
            }
        }
        GradientDrawable gradientDrawable = (GradientDrawable) this.t.getBackground().mutate();
        gradientDrawable.setAlpha(getResources().getInteger(a.d.defaultBackgroundAlpha));
        int i5 = this.d;
        if (i5 > 0) {
            gradientDrawable.setStroke(i5, this.c);
        }
        int i6 = this.f5009a;
        if (i6 >= 0) {
            gradientDrawable.setCornerRadius((float) i6);
        }
        int i7 = this.f5010b;
        if (i7 != 0) {
            gradientDrawable.setColor(i7);
        }
        if (this.m) {
            gradientDrawable.setAlpha(getResources().getInteger(a.d.fullBackgroundAlpha));
        }
        this.t.setBackground(gradientDrawable);
        if (this.j != 0) {
            this.g = this.p.getColor(a.f.StyleableToast_stTextColor, this.q.getCurrentTextColor());
            this.n = this.p.getBoolean(a.f.StyleableToast_stTextBold, false);
            this.k = this.p.getDimension(a.f.StyleableToast_stTextSize, 0.0f);
            this.h = this.p.getResourceId(a.f.StyleableToast_stFont, 0);
            this.l = this.k > 0.0f;
        }
        this.q.setText(this.o);
        int i8 = this.g;
        if (i8 != 0) {
            this.q.setTextColor(i8);
        }
        if (this.k > 0.0f) {
            TextView textView = this.q;
            if (this.l) {
                i2 = 0;
            }
            textView.setTextSize(i2, this.k);
        }
        if (this.h > 0) {
            this.q.setTypeface(ResourcesCompat.getFont(getContext(), this.h), this.n ? 1 : 0);
        }
        if (this.n && this.h == 0) {
            TextView textView2 = this.q;
            textView2.setTypeface(textView2.getTypeface(), 1);
        }
        if (this.j != 0) {
            this.e = this.p.getResourceId(a.f.StyleableToast_stIconStart, 0);
            this.f = this.p.getResourceId(a.f.StyleableToast_stIconEnd, 0);
        }
        int dimension = (int) getResources().getDimension(a.b.toast_vertical_padding);
        int dimension2 = (int) getResources().getDimension(a.b.toast_horizontal_padding_icon_side);
        int dimension3 = (int) getResources().getDimension(a.b.toast_horizontal_padding_empty_side);
        int dimension4 = (int) getResources().getDimension(a.b.icon_size);
        if (this.e != 0) {
            Drawable drawable = ContextCompat.getDrawable(getContext(), this.e);
            if (drawable != null) {
                drawable.setBounds(0, 0, dimension4, dimension4);
                TextViewCompat.setCompoundDrawablesRelative(this.q, drawable, null, null, null);
                if (b.a()) {
                    this.t.setPadding(dimension3, dimension, dimension2, dimension);
                } else {
                    this.t.setPadding(dimension2, dimension, dimension3, dimension);
                }
            }
        }
        if (this.f != 0) {
            Drawable drawable2 = ContextCompat.getDrawable(getContext(), this.f);
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, dimension4, dimension4);
                TextViewCompat.setCompoundDrawablesRelative(this.q, null, null, drawable2, null);
                if (b.a()) {
                    this.t.setPadding(dimension2, dimension, dimension3, dimension);
                } else {
                    this.t.setPadding(dimension3, dimension, dimension2, dimension);
                }
            }
        }
        if (!(this.e == 0 || this.f == 0)) {
            Drawable drawable3 = ContextCompat.getDrawable(getContext(), this.e);
            Drawable drawable4 = ContextCompat.getDrawable(getContext(), this.f);
            if (!(drawable3 == null || drawable4 == null)) {
                drawable3.setBounds(0, 0, dimension4, dimension4);
                drawable4.setBounds(0, 0, dimension4, dimension4);
                this.q.setCompoundDrawables(drawable3, null, drawable4, null);
                this.t.setPadding(dimension2, dimension, dimension2, dimension);
            }
        }
        TypedArray typedArray = this.p;
        if (typedArray != null) {
            typedArray.recycle();
        }
        this.s = new Toast(getContext());
        Toast toast = this.s;
        int i9 = this.r;
        toast.setGravity(i9, 0, i9 == 17 ? 0 : toast.getYOffset());
        Toast toast2 = this.s;
        if (this.i != 1) {
            i3 = 0;
        }
        toast2.setDuration(i3);
        this.s.setView(this.t);
        this.s.show();
    }
}
