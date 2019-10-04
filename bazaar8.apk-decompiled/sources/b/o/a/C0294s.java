package b.o.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;

/* renamed from: b.o.a.s  reason: case insensitive filesystem */
/* compiled from: FragmentManagerImpl */
class C0294s extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f3086a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f3087b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Fragment f3088c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ v f3089d;

    public C0294s(v vVar, ViewGroup viewGroup, View view, Fragment fragment) {
        this.f3089d = vVar;
        this.f3086a = viewGroup;
        this.f3087b = view;
        this.f3088c = fragment;
    }

    public void onAnimationEnd(Animator animator) {
        this.f3086a.endViewTransition(this.f3087b);
        Animator B = this.f3088c.B();
        this.f3088c.a((Animator) null);
        if (B != null && this.f3086a.indexOfChild(this.f3087b) < 0) {
            v vVar = this.f3089d;
            Fragment fragment = this.f3088c;
            vVar.a(fragment, fragment.X(), 0, 0, false);
        }
    }
}
