package com.farsitel.bazaar.core.widget.loading;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import b.i.b.a;
import c.c.a.d.b;
import c.c.a.d.h;
import c.c.a.d.h.b.w;
import c.c.a.d.h.b.z;

public class SpinKitView extends ProgressBar {

    /* renamed from: a  reason: collision with root package name */
    public int f12196a;

    /* renamed from: b  reason: collision with root package name */
    public w f12197b;

    public SpinKitView(Context context) {
        this(context, null);
    }

    public final void a() {
        z zVar = new z();
        zVar.b(this.f12196a);
        setIndeterminateDrawable((w) zVar);
    }

    public void onScreenStateChanged(int i2) {
        super.onScreenStateChanged(i2);
        if (i2 == 0) {
            w wVar = this.f12197b;
            if (wVar != null) {
                wVar.stop();
            }
        }
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && this.f12197b != null && getVisibility() == 0) {
            this.f12197b.start();
        }
    }

    public void setColor(int i2) {
        this.f12196a = i2;
        w wVar = this.f12197b;
        if (wVar != null) {
            wVar.b(i2);
        }
        invalidate();
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable instanceof w) {
            setIndeterminateDrawable((w) drawable);
            return;
        }
        throw new IllegalArgumentException("this d must be instanceof Sprite");
    }

    public void unscheduleDrawable(Drawable drawable) {
        super.unscheduleDrawable(drawable);
        if (drawable instanceof w) {
            ((w) drawable).stop();
        }
    }

    public SpinKitView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public w getIndeterminateDrawable() {
        return this.f12197b;
    }

    public SpinKitView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    @TargetApi(21)
    public SpinKitView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.SpinKitView);
            this.f12196a = a.a(context, obtainStyledAttributes.getResourceId(h.SpinKitView_loadingColor, b.c_text_body1));
            obtainStyledAttributes.recycle();
        }
        a();
        setIndeterminate(true);
    }

    public void setIndeterminateDrawable(w wVar) {
        super.setIndeterminateDrawable(wVar);
        this.f12197b = wVar;
        if (this.f12197b.a() == 0) {
            this.f12197b.b(this.f12196a);
        }
        onSizeChanged(getWidth(), getHeight(), getWidth(), getHeight());
        if (getVisibility() == 0) {
            this.f12197b.start();
        }
    }
}
