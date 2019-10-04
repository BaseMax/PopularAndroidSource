package b.y.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: b.y.a.i  reason: case insensitive filesystem */
/* compiled from: DefaultItemAnimator */
class C0339i extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView.w f3468a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f3469b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f3470c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0343m f3471d;

    public C0339i(C0343m mVar, RecyclerView.w wVar, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f3471d = mVar;
        this.f3468a = wVar;
        this.f3469b = view;
        this.f3470c = viewPropertyAnimator;
    }

    public void onAnimationCancel(Animator animator) {
        this.f3469b.setAlpha(1.0f);
    }

    public void onAnimationEnd(Animator animator) {
        this.f3470c.setListener(null);
        this.f3471d.h(this.f3468a);
        this.f3471d.p.remove(this.f3468a);
        this.f3471d.j();
    }

    public void onAnimationStart(Animator animator) {
        this.f3471d.i(this.f3468a);
    }
}
