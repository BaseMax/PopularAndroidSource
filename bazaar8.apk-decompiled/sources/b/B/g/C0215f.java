package b.b.g;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* renamed from: b.b.g.f  reason: case insensitive filesystem */
/* compiled from: ActionBarOverlayLayout */
class C0215f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f2163a;

    public C0215f(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f2163a = actionBarOverlayLayout;
    }

    public void run() {
        this.f2163a.i();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2163a;
        actionBarOverlayLayout.x = actionBarOverlayLayout.f337e.animate().translationY((float) (-this.f2163a.f337e.getHeight())).setListener(this.f2163a.y);
    }
}
