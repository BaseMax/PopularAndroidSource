package b.b.a;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import b.i.k.K;
import b.i.k.z;

/* compiled from: WindowDecorActionBar */
class J extends K {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ M f1710a;

    public J(M m) {
        this.f1710a = m;
    }

    public void b(View view) {
        M m = this.f1710a;
        if (m.w) {
            View view2 = m.f1723k;
            if (view2 != null) {
                view2.setTranslationY(0.0f);
                this.f1710a.f1720h.setTranslationY(0.0f);
            }
        }
        this.f1710a.f1720h.setVisibility(8);
        this.f1710a.f1720h.setTransitioning(false);
        M m2 = this.f1710a;
        m2.B = null;
        m2.l();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f1710a.f1719g;
        if (actionBarOverlayLayout != null) {
            z.G(actionBarOverlayLayout);
        }
    }
}
