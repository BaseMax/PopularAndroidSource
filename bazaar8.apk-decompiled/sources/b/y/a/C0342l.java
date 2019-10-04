package b.y.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import b.y.a.C0343m;

/* renamed from: b.y.a.l  reason: case insensitive filesystem */
/* compiled from: DefaultItemAnimator */
class C0342l extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0343m.a f3482a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f3483b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f3484c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0343m f3485d;

    public C0342l(C0343m mVar, C0343m.a aVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f3485d = mVar;
        this.f3482a = aVar;
        this.f3483b = viewPropertyAnimator;
        this.f3484c = view;
    }

    public void onAnimationEnd(Animator animator) {
        this.f3483b.setListener(null);
        this.f3484c.setAlpha(1.0f);
        this.f3484c.setTranslationX(0.0f);
        this.f3484c.setTranslationY(0.0f);
        this.f3485d.a(this.f3482a.f3492b, false);
        this.f3485d.s.remove(this.f3482a.f3492b);
        this.f3485d.j();
    }

    public void onAnimationStart(Animator animator) {
        this.f3485d.b(this.f3482a.f3492b, false);
    }
}
