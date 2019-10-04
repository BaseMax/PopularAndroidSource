package c.e.a.c.k;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import c.e.a.c.k.e;

/* compiled from: FloatingActionButtonImpl */
class c extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f11338a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ e.d f11339b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ e f11340c;

    public c(e eVar, boolean z, e.d dVar) {
        this.f11340c = eVar;
        this.f11338a = z;
        this.f11339b = dVar;
    }

    public void onAnimationEnd(Animator animator) {
        e eVar = this.f11340c;
        eVar.f11349h = 0;
        eVar.f11350i = null;
        e.d dVar = this.f11339b;
        if (dVar != null) {
            dVar.a();
        }
    }

    public void onAnimationStart(Animator animator) {
        this.f11340c.B.a(0, this.f11338a);
        e eVar = this.f11340c;
        eVar.f11349h = 2;
        eVar.f11350i = animator;
    }
}
