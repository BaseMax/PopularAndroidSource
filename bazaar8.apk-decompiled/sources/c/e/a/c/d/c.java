package c.e.a.c.d;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionMenuView;
import com.google.android.material.bottomappbar.BottomAppBar;

/* compiled from: BottomAppBar */
class c extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11241a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ActionMenuView f11242b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f11243c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ boolean f11244d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f11245e;

    public c(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i2, boolean z) {
        this.f11245e = bottomAppBar;
        this.f11242b = actionMenuView;
        this.f11243c = i2;
        this.f11244d = z;
    }

    public void onAnimationCancel(Animator animator) {
        this.f11241a = true;
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.f11241a) {
            this.f11245e.a(this.f11242b, this.f11243c, this.f11244d);
        }
    }
}
