package com.google.android.material.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.cardview.widget.CardView;
import com.google.android.material.a;
import com.google.android.material.internal.k;

public class MaterialCardView extends CardView {

    /* renamed from: a  reason: collision with root package name */
    private final a f3854a;

    public MaterialCardView(Context context) {
        this(context, null);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.materialCardViewStyle);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = k.obtainStyledAttributes(context, attributeSet, a.k.MaterialCardView, i, a.j.Widget_MaterialComponents_CardView, new int[0]);
        this.f3854a = new a(this);
        this.f3854a.loadFromAttributes(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public void setStrokeColor(int i) {
        a aVar = this.f3854a;
        aVar.f3855a = i;
        aVar.a();
    }

    public int getStrokeColor() {
        return this.f3854a.f3855a;
    }

    public void setStrokeWidth(int i) {
        a aVar = this.f3854a;
        aVar.f3856b = i;
        aVar.a();
        aVar.b();
    }

    public int getStrokeWidth() {
        return this.f3854a.f3856b;
    }

    public void setRadius(float f) {
        super.setRadius(f);
        this.f3854a.a();
    }
}
