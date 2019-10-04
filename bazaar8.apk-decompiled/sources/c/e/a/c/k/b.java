package c.e.a.c.k;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import c.e.a.c.k.e;

/* compiled from: FloatingActionButtonImpl */
class b extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11334a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f11335b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ e.d f11336c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ e f11337d;

    public b(e eVar, boolean z, e.d dVar) {
        this.f11337d = eVar;
        this.f11335b = z;
        this.f11336c = dVar;
    }

    public void onAnimationCancel(Animator animator) {
        this.f11334a = true;
    }

    public void onAnimationEnd(Animator animator) {
        e eVar = this.f11337d;
        eVar.f11349h = 0;
        eVar.f11350i = null;
        if (!this.f11334a) {
            eVar.B.a(this.f11335b ? 8 : 4, this.f11335b);
            e.d dVar = this.f11336c;
            if (dVar != null) {
                dVar.b();
            }
        }
    }

    public void onAnimationStart(Animator animator) {
        this.f11337d.B.a(0, this.f11335b);
        e eVar = this.f11337d;
        eVar.f11349h = 1;
        eVar.f11350i = animator;
        this.f11334a = false;
    }
}
