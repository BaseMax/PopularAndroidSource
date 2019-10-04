package b.o.a;

import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.Fragment;

/* compiled from: FragmentManagerImpl */
class r implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f3083a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fragment f3084b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ v f3085c;

    public r(v vVar, ViewGroup viewGroup, Fragment fragment) {
        this.f3085c = vVar;
        this.f3083a = viewGroup;
        this.f3084b = fragment;
    }

    public void onAnimationEnd(Animation animation) {
        this.f3083a.post(new C0293q(this));
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}
