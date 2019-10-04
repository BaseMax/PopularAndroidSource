package com.farsitel.bazaar.widget.persianpicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.NumberPicker;
import b.i.b.a.h;
import com.farsitel.bazaar.R;
import h.f.b.f;
import h.f.b.j;

/* compiled from: NumberPickerWithCustomFont.kt */
public final class NumberPickerWithCustomFont extends NumberPicker {
    public NumberPickerWithCustomFont(Context context) {
        this(context, null, 2, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NumberPickerWithCustomFont(Context context, AttributeSet attributeSet, int i2, f fVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet);
    }

    public final void a(View view) {
        if (view instanceof EditText) {
            ((EditText) view).setTypeface(h.a(getContext(), R.font.regular));
        }
    }

    public void addView(View view) {
        j.b(view, "child");
        super.addView(view);
        a(view);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public NumberPickerWithCustomFont(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        j.b(context, "context");
    }

    public void addView(View view, int i2) {
        j.b(view, "child");
        super.addView(view, i2);
        a(view);
    }

    public void addView(View view, int i2, int i3) {
        j.b(view, "child");
        super.addView(view, i2, i3);
        a(view);
    }

    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        j.b(view, "child");
        j.b(layoutParams, "params");
        super.addView(view, layoutParams);
        a(view);
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        j.b(view, "child");
        j.b(layoutParams, "params");
        super.addView(view, i2, layoutParams);
        a(view);
    }
}
