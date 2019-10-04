package b.D;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* compiled from: Visibility */
class ga extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Q f1151a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f1152b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ha f1153c;

    public ga(ha haVar, Q q, View view) {
        this.f1153c = haVar;
        this.f1151a = q;
        this.f1152b = view;
    }

    public void onAnimationEnd(Animator animator) {
        this.f1151a.b(this.f1152b);
    }
}
