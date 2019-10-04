package b.D;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.View;
import b.i.k.z;

/* renamed from: b.D.k  reason: case insensitive filesystem */
/* compiled from: ChangeBounds */
class C0165k extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public boolean f1170a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f1171b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Rect f1172c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1173d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f1174e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f1175f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ int f1176g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ C0167m f1177h;

    public C0165k(C0167m mVar, View view, Rect rect, int i2, int i3, int i4, int i5) {
        this.f1177h = mVar;
        this.f1171b = view;
        this.f1172c = rect;
        this.f1173d = i2;
        this.f1174e = i3;
        this.f1175f = i4;
        this.f1176g = i5;
    }

    public void onAnimationCancel(Animator animator) {
        this.f1170a = true;
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.f1170a) {
            z.a(this.f1171b, this.f1172c);
            ba.a(this.f1171b, this.f1173d, this.f1174e, this.f1175f, this.f1176g);
        }
    }
}
