package b.b.g;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* renamed from: b.b.g.e  reason: case insensitive filesystem */
/* compiled from: ActionBarOverlayLayout */
class C0213e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f2161a;

    public C0213e(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f2161a = actionBarOverlayLayout;
    }

    public void run() {
        this.f2161a.i();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2161a;
        actionBarOverlayLayout.x = actionBarOverlayLayout.f337e.animate().translationY(0.0f).setListener(this.f2161a.y);
    }
}
