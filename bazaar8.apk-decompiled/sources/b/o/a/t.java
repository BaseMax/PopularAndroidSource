package b.o.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;

/* compiled from: FragmentManagerImpl */
class t extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f3090a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f3091b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Fragment f3092c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ v f3093d;

    public t(v vVar, ViewGroup viewGroup, View view, Fragment fragment) {
        this.f3093d = vVar;
        this.f3090a = viewGroup;
        this.f3091b = view;
        this.f3092c = fragment;
    }

    public void onAnimationEnd(Animator animator) {
        this.f3090a.endViewTransition(this.f3091b);
        animator.removeListener(this);
        Fragment fragment = this.f3092c;
        View view = fragment.H;
        if (view != null && fragment.z) {
            view.setVisibility(8);
        }
    }
}
