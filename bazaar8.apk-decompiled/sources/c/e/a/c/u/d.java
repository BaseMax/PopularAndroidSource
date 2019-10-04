package c.e.a.c.u;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.tabs.TabLayout;

/* compiled from: TabLayout */
class d extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11465a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TabLayout.e f11466b;

    public d(TabLayout.e eVar, int i2) {
        this.f11466b = eVar;
        this.f11465a = i2;
    }

    public void onAnimationEnd(Animator animator) {
        TabLayout.e eVar = this.f11466b;
        eVar.f13426d = this.f11465a;
        eVar.f13427e = 0.0f;
    }
}
