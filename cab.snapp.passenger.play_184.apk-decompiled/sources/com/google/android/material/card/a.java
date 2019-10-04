package com.google.android.material.card;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import com.google.android.material.a;

final class a {

    /* renamed from: a  reason: collision with root package name */
    int f3855a;

    /* renamed from: b  reason: collision with root package name */
    int f3856b;
    private final MaterialCardView c;

    public a(MaterialCardView materialCardView) {
        this.c = materialCardView;
    }

    public final void loadFromAttributes(TypedArray typedArray) {
        this.f3855a = typedArray.getColor(a.k.MaterialCardView_strokeColor, -1);
        this.f3856b = typedArray.getDimensionPixelSize(a.k.MaterialCardView_strokeWidth, 0);
        a();
        b();
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.c.setForeground(c());
    }

    private Drawable c() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(this.c.getRadius());
        int i = this.f3855a;
        if (i != -1) {
            gradientDrawable.setStroke(this.f3856b, i);
        }
        return gradientDrawable;
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        this.c.setContentPadding(this.c.getContentPaddingLeft() + this.f3856b, this.c.getContentPaddingTop() + this.f3856b, this.c.getContentPaddingRight() + this.f3856b, this.c.getContentPaddingBottom() + this.f3856b);
    }
}
