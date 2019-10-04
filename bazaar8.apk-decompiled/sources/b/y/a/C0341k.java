package b.y.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import b.y.a.C0343m;

/* renamed from: b.y.a.k  reason: case insensitive filesystem */
/* compiled from: DefaultItemAnimator */
class C0341k extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0343m.a f3478a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f3479b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f3480c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0343m f3481d;

    public C0341k(C0343m mVar, C0343m.a aVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f3481d = mVar;
        this.f3478a = aVar;
        this.f3479b = viewPropertyAnimator;
        this.f3480c = view;
    }

    public void onAnimationEnd(Animator animator) {
        this.f3479b.setListener(null);
        this.f3480c.setAlpha(1.0f);
        this.f3480c.setTranslationX(0.0f);
        this.f3480c.setTranslationY(0.0f);
        this.f3481d.a(this.f3478a.f3491a, true);
        this.f3481d.s.remove(this.f3478a.f3491a);
        this.f3481d.j();
    }

    public void onAnimationStart(Animator animator) {
        this.f3481d.b(this.f3478a.f3491a, true);
    }
}
