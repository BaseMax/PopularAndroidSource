package c.e.a.c.w;

import android.view.View;
import android.view.ViewTreeObserver;
import c.e.a.c.j.b;
import com.google.android.material.transformation.ExpandableBehavior;

/* compiled from: ExpandableBehavior */
class a implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f11490a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f11491b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b f11492c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ExpandableBehavior f11493d;

    public a(ExpandableBehavior expandableBehavior, View view, int i2, b bVar) {
        this.f11493d = expandableBehavior;
        this.f11490a = view;
        this.f11491b = i2;
        this.f11492c = bVar;
    }

    public boolean onPreDraw() {
        this.f11490a.getViewTreeObserver().removeOnPreDrawListener(this);
        if (this.f11493d.f13469a == this.f11491b) {
            ExpandableBehavior expandableBehavior = this.f11493d;
            b bVar = this.f11492c;
            expandableBehavior.a((View) bVar, this.f11490a, bVar.a(), false);
        }
        return false;
    }
}
