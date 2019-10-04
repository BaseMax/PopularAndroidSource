package com.squareup.picasso;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

final class h implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a  reason: collision with root package name */
    final x f5276a;

    /* renamed from: b  reason: collision with root package name */
    final WeakReference<ImageView> f5277b;
    e c;

    h(x xVar, ImageView imageView, e eVar) {
        this.f5276a = xVar;
        this.f5277b = new WeakReference<>(imageView);
        this.c = eVar;
        imageView.addOnAttachStateChangeListener(this);
        if (imageView.getWindowToken() != null) {
            onViewAttachedToWindow(imageView);
        }
    }

    public final void onViewAttachedToWindow(View view) {
        view.getViewTreeObserver().addOnPreDrawListener(this);
    }

    public final void onViewDetachedFromWindow(View view) {
        view.getViewTreeObserver().removeOnPreDrawListener(this);
    }

    public final boolean onPreDraw() {
        ImageView imageView = (ImageView) this.f5277b.get();
        if (imageView == null) {
            return true;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        int width = imageView.getWidth();
        int height = imageView.getHeight();
        if (width > 0 && height > 0) {
            imageView.removeOnAttachStateChangeListener(this);
            viewTreeObserver.removeOnPreDrawListener(this);
            this.f5277b.clear();
            x xVar = this.f5276a;
            xVar.f5309a = false;
            xVar.resize(width, height).into(imageView, this.c);
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.f5276a.f5310b = null;
        this.c = null;
        ImageView imageView = (ImageView) this.f5277b.get();
        if (imageView != null) {
            this.f5277b.clear();
            imageView.removeOnAttachStateChangeListener(this);
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
        }
    }
}
