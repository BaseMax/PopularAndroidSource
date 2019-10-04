package b.D;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import b.f.C0243b;

/* compiled from: Transition */
class C extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0243b f1075a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ E f1076b;

    public C(E e2, C0243b bVar) {
        this.f1076b = e2;
        this.f1075a = bVar;
    }

    public void onAnimationEnd(Animator animator) {
        this.f1075a.remove(animator);
        this.f1076b.A.remove(animator);
    }

    public void onAnimationStart(Animator animator) {
        this.f1076b.A.add(animator);
    }
}
