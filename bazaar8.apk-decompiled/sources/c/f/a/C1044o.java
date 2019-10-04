package c.f.a;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* renamed from: c.f.a.o  reason: case insensitive filesystem */
/* compiled from: DeferredRequestCreator */
public class C1044o implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final H f11997a;

    /* renamed from: b  reason: collision with root package name */
    public final WeakReference<ImageView> f11998b;

    /* renamed from: c  reason: collision with root package name */
    public C1041l f11999c;

    public C1044o(H h2, ImageView imageView, C1041l lVar) {
        this.f11997a = h2;
        this.f11998b = new WeakReference<>(imageView);
        this.f11999c = lVar;
        imageView.addOnAttachStateChangeListener(this);
        if (imageView.getWindowToken() != null) {
            onViewAttachedToWindow(imageView);
        }
    }

    public void a() {
        this.f11997a.a();
        this.f11999c = null;
        ImageView imageView = (ImageView) this.f11998b.get();
        if (imageView != null) {
            this.f11998b.clear();
            imageView.removeOnAttachStateChangeListener(this);
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
        }
    }

    public boolean onPreDraw() {
        ImageView imageView = (ImageView) this.f11998b.get();
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
            this.f11998b.clear();
            H h2 = this.f11997a;
            h2.g();
            h2.a(width, height);
            h2.a(imageView, this.f11999c);
        }
        return true;
    }

    public void onViewAttachedToWindow(View view) {
        view.getViewTreeObserver().addOnPreDrawListener(this);
    }

    public void onViewDetachedFromWindow(View view) {
        view.getViewTreeObserver().removeOnPreDrawListener(this);
    }
}
