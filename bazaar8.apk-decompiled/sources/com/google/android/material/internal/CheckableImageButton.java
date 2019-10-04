package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.ImageButton;
import androidx.appcompat.widget.AppCompatImageButton;
import b.b.a;
import b.i.k.C0258a;
import b.i.k.z;

public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f13382c = {16842912};

    /* renamed from: d  reason: collision with root package name */
    public boolean f13383d;

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public boolean isChecked() {
        return this.f13383d;
    }

    public int[] onCreateDrawableState(int i2) {
        if (this.f13383d) {
            return ImageButton.mergeDrawableStates(super.onCreateDrawableState(i2 + f13382c.length), f13382c);
        }
        return super.onCreateDrawableState(i2);
    }

    public void setChecked(boolean z) {
        if (this.f13383d != z) {
            this.f13383d = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    public void toggle() {
        setChecked(!this.f13383d);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        z.a((View) this, (C0258a) new a(this));
    }
}
