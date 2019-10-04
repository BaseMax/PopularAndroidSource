package b.y.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: b.y.a.j  reason: case insensitive filesystem */
/* compiled from: DefaultItemAnimator */
class C0340j extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView.w f3472a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f3473b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f3474c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f3475d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f3476e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0343m f3477f;

    public C0340j(C0343m mVar, RecyclerView.w wVar, int i2, View view, int i3, ViewPropertyAnimator viewPropertyAnimator) {
        this.f3477f = mVar;
        this.f3472a = wVar;
        this.f3473b = i2;
        this.f3474c = view;
        this.f3475d = i3;
        this.f3476e = viewPropertyAnimator;
    }

    public void onAnimationCancel(Animator animator) {
        if (this.f3473b != 0) {
            this.f3474c.setTranslationX(0.0f);
        }
        if (this.f3475d != 0) {
            this.f3474c.setTranslationY(0.0f);
        }
    }

    public void onAnimationEnd(Animator animator) {
        this.f3476e.setListener(null);
        this.f3477f.j(this.f3472a);
        this.f3477f.q.remove(this.f3472a);
        this.f3477f.j();
    }

    public void onAnimationStart(Animator animator) {
        this.f3477f.k(this.f3472a);
    }
}
