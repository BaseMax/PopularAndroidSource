package b.y.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: b.y.a.h  reason: case insensitive filesystem */
/* compiled from: DefaultItemAnimator */
class C0338h extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView.w f3464a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f3465b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f3466c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0343m f3467d;

    public C0338h(C0343m mVar, RecyclerView.w wVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f3467d = mVar;
        this.f3464a = wVar;
        this.f3465b = viewPropertyAnimator;
        this.f3466c = view;
    }

    public void onAnimationEnd(Animator animator) {
        this.f3465b.setListener(null);
        this.f3466c.setAlpha(1.0f);
        this.f3467d.l(this.f3464a);
        this.f3467d.r.remove(this.f3464a);
        this.f3467d.j();
    }

    public void onAnimationStart(Animator animator) {
        this.f3467d.m(this.f3464a);
    }
}
