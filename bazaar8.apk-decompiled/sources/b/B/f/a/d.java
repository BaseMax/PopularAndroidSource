package b.b.f.a;

import android.view.View;
import android.view.ViewTreeObserver;
import b.b.f.a.h;

/* compiled from: CascadingMenuPopup */
class d implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ h f1839a;

    public d(h hVar) {
        this.f1839a = hVar;
    }

    public void onGlobalLayout() {
        if (this.f1839a.c() && this.f1839a.f1854j.size() > 0 && !this.f1839a.f1854j.get(0).f1857a.m()) {
            View view = this.f1839a.q;
            if (view == null || !view.isShown()) {
                this.f1839a.dismiss();
                return;
            }
            for (h.a aVar : this.f1839a.f1854j) {
                aVar.f1857a.d();
            }
        }
    }
}
