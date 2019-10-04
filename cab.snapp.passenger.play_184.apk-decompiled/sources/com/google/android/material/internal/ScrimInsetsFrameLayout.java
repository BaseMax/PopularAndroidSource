package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.a;

public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    Drawable f3928a;

    /* renamed from: b  reason: collision with root package name */
    Rect f3929b;
    private Rect c;

    /* access modifiers changed from: protected */
    public void onInsetsChanged(WindowInsetsCompat windowInsetsCompat) {
    }

    public ScrimInsetsFrameLayout(Context context) {
        this(context, null);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new Rect();
        TypedArray obtainStyledAttributes = k.obtainStyledAttributes(context, attributeSet, a.k.ScrimInsetsFrameLayout, i, a.j.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f3928a = obtainStyledAttributes.getDrawable(a.k.ScrimInsetsFrameLayout_insetForeground);
        obtainStyledAttributes.recycle();
        setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() {
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                if (ScrimInsetsFrameLayout.this.f3929b == null) {
                    ScrimInsetsFrameLayout.this.f3929b = new Rect();
                }
                ScrimInsetsFrameLayout.this.f3929b.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                ScrimInsetsFrameLayout.this.onInsetsChanged(windowInsetsCompat);
                ScrimInsetsFrameLayout.this.setWillNotDraw(!windowInsetsCompat.hasSystemWindowInsets() || ScrimInsetsFrameLayout.this.f3928a == null);
                ViewCompat.postInvalidateOnAnimation(ScrimInsetsFrameLayout.this);
                return windowInsetsCompat.consumeSystemWindowInsets();
            }
        });
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f3929b != null && this.f3928a != null) {
            int save = canvas.save();
            canvas.translate((float) getScrollX(), (float) getScrollY());
            this.c.set(0, 0, width, this.f3929b.top);
            this.f3928a.setBounds(this.c);
            this.f3928a.draw(canvas);
            this.c.set(0, height - this.f3929b.bottom, width, height);
            this.f3928a.setBounds(this.c);
            this.f3928a.draw(canvas);
            this.c.set(0, this.f3929b.top, this.f3929b.left, height - this.f3929b.bottom);
            this.f3928a.setBounds(this.c);
            this.f3928a.draw(canvas);
            this.c.set(width - this.f3929b.right, this.f3929b.top, width, height - this.f3929b.bottom);
            this.f3928a.setBounds(this.c);
            this.f3928a.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f3928a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f3928a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }
}
