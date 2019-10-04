package com.bumptech.glide.e.a;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.e.b.b;

public abstract class d<Z> extends j<ImageView, Z> implements b.a {
    private Animatable c;

    /* access modifiers changed from: protected */
    public abstract void a(Z z);

    public d(ImageView imageView) {
        super(imageView);
    }

    @Deprecated
    public d(ImageView imageView, boolean z) {
        super(imageView, z);
    }

    public Drawable getCurrentDrawable() {
        return ((ImageView) this.f2026a).getDrawable();
    }

    public void setDrawable(Drawable drawable) {
        ((ImageView) this.f2026a).setImageDrawable(drawable);
    }

    public void onLoadStarted(Drawable drawable) {
        super.onLoadStarted(drawable);
        b(null);
        setDrawable(drawable);
    }

    public void onLoadFailed(Drawable drawable) {
        super.onLoadFailed(drawable);
        b(null);
        setDrawable(drawable);
    }

    public void onLoadCleared(Drawable drawable) {
        super.onLoadCleared(drawable);
        Animatable animatable = this.c;
        if (animatable != null) {
            animatable.stop();
        }
        b(null);
        setDrawable(drawable);
    }

    public void onResourceReady(Z z, b<? super Z> bVar) {
        if (bVar == null || !bVar.transition(z, this)) {
            b(z);
        } else {
            c(z);
        }
    }

    public void onStart() {
        Animatable animatable = this.c;
        if (animatable != null) {
            animatable.start();
        }
    }

    public void onStop() {
        Animatable animatable = this.c;
        if (animatable != null) {
            animatable.stop();
        }
    }

    private void b(Z z) {
        a(z);
        c(z);
    }

    private void c(Z z) {
        if (z instanceof Animatable) {
            this.c = (Animatable) z;
            this.c.start();
            return;
        }
        this.c = null;
    }
}
