package b.b.f.a;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: StandardMenuPopup */
class y implements View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ z f1934a;

    public y(z zVar) {
        this.f1934a = zVar;
    }

    public void onViewAttachedToWindow(View view) {
    }

    public void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f1934a.q;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f1934a.q = view.getViewTreeObserver();
            }
            z zVar = this.f1934a;
            zVar.q.removeGlobalOnLayoutListener(zVar.f1944k);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
