package b.b.f.a;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: CascadingMenuPopup */
class e implements View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h f1840a;

    public e(h hVar) {
        this.f1840a = hVar;
    }

    public void onViewAttachedToWindow(View view) {
    }

    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f1840a.z;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f1840a.z = view.getViewTreeObserver();
            }
            h hVar = this.f1840a;
            hVar.z.removeGlobalOnLayoutListener(hVar.f1855k);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
