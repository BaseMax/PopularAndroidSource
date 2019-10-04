package b.b.f.a;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: StandardMenuPopup */
class x implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ z f1933a;

    public x(z zVar) {
        this.f1933a = zVar;
    }

    public void onGlobalLayout() {
        if (this.f1933a.c() && !this.f1933a.f1943j.m()) {
            View view = this.f1933a.o;
            if (view == null || !view.isShown()) {
                this.f1933a.dismiss();
            } else {
                this.f1933a.f1943j.d();
            }
        }
    }
}
