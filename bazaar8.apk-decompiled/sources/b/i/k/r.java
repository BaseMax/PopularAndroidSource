package b.i.k;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: OneShotPreDrawListener */
public final class r implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final View f2824a;

    /* renamed from: b  reason: collision with root package name */
    public ViewTreeObserver f2825b;

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f2826c;

    public r(View view, Runnable runnable) {
        this.f2824a = view;
        this.f2825b = view.getViewTreeObserver();
        this.f2826c = runnable;
    }

    public static r a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        } else if (runnable != null) {
            r rVar = new r(view, runnable);
            view.getViewTreeObserver().addOnPreDrawListener(rVar);
            view.addOnAttachStateChangeListener(rVar);
            return rVar;
        } else {
            throw new NullPointerException("runnable == null");
        }
    }

    public boolean onPreDraw() {
        a();
        this.f2826c.run();
        return true;
    }

    public void onViewAttachedToWindow(View view) {
        this.f2825b = view.getViewTreeObserver();
    }

    public void onViewDetachedFromWindow(View view) {
        a();
    }

    public void a() {
        if (this.f2825b.isAlive()) {
            this.f2825b.removeOnPreDrawListener(this);
        } else {
            this.f2824a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f2824a.removeOnAttachStateChangeListener(this);
    }
}
