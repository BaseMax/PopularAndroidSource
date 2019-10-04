package b.b.g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionBarOverlayLayout;

/* renamed from: b.b.g.d  reason: case insensitive filesystem */
/* compiled from: ActionBarOverlayLayout */
class C0211d extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f2159a;

    public C0211d(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f2159a = actionBarOverlayLayout;
    }

    public void onAnimationCancel(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2159a;
        actionBarOverlayLayout.x = null;
        actionBarOverlayLayout.f344l = false;
    }

    public void onAnimationEnd(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2159a;
        actionBarOverlayLayout.x = null;
        actionBarOverlayLayout.f344l = false;
    }
}
