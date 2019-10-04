package com.github.ybq.android.spinkit;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import com.github.ybq.android.spinkit.a;
import com.github.ybq.android.spinkit.b.f;

public class SpinKitView extends ProgressBar {

    /* renamed from: a  reason: collision with root package name */
    private Style f2516a;

    /* renamed from: b  reason: collision with root package name */
    private int f2517b;
    private f c;

    public SpinKitView(Context context) {
        this(context, null);
    }

    public SpinKitView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0055a.SpinKitViewStyle);
    }

    public SpinKitView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, a.b.SpinKitView);
    }

    public SpinKitView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.c.SpinKitView, i, i2);
        this.f2516a = Style.values()[obtainStyledAttributes.getInt(a.c.SpinKitView_SpinKit_Style, 0)];
        this.f2517b = obtainStyledAttributes.getColor(a.c.SpinKitView_SpinKit_Color, -1);
        obtainStyledAttributes.recycle();
        f create = b.create(this.f2516a);
        create.setColor(this.f2517b);
        setIndeterminateDrawable(create);
        setIndeterminate(true);
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable instanceof f) {
            setIndeterminateDrawable((f) drawable);
            return;
        }
        throw new IllegalArgumentException("this d must be instanceof Sprite");
    }

    public void setIndeterminateDrawable(f fVar) {
        super.setIndeterminateDrawable(fVar);
        this.c = fVar;
        if (this.c.getColor() == 0) {
            this.c.setColor(this.f2517b);
        }
        onSizeChanged(getWidth(), getHeight(), getWidth(), getHeight());
        if (getVisibility() == 0) {
            this.c.start();
        }
    }

    public f getIndeterminateDrawable() {
        return this.c;
    }

    public void setColor(int i) {
        this.f2517b = i;
        f fVar = this.c;
        if (fVar != null) {
            fVar.setColor(i);
        }
        invalidate();
    }

    public void unscheduleDrawable(Drawable drawable) {
        super.unscheduleDrawable(drawable);
        if (drawable instanceof f) {
            ((f) drawable).stop();
        }
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && this.c != null && getVisibility() == 0) {
            this.c.start();
        }
    }

    public void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        if (i == 0) {
            f fVar = this.c;
            if (fVar != null) {
                fVar.stop();
            }
        }
    }
}
