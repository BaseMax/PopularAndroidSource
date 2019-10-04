package b.D;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import b.D.E;
import b.i.k.z;

/* renamed from: b.D.o  reason: case insensitive filesystem */
/* compiled from: Fade */
public class C0169o extends ha {

    /* renamed from: b.D.o$a */
    /* compiled from: Fade */
    private static class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        public final View f1190a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f1191b = false;

        public a(View view) {
            this.f1190a = view;
        }

        public void onAnimationEnd(Animator animator) {
            ba.a(this.f1190a, 1.0f);
            if (this.f1191b) {
                this.f1190a.setLayerType(0, null);
            }
        }

        public void onAnimationStart(Animator animator) {
            if (z.x(this.f1190a) && this.f1190a.getLayerType() == 0) {
                this.f1191b = true;
                this.f1190a.setLayerType(2, null);
            }
        }
    }

    public C0169o(int i2) {
        a(i2);
    }

    public final Animator a(View view, float f2, float f3) {
        if (f2 == f3) {
            return null;
        }
        ba.a(view, f2);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, ba.f1133d, new float[]{f3});
        ofFloat.addListener(new a(view));
        a((E.c) new C0168n(this, view));
        return ofFloat;
    }

    public Animator b(ViewGroup viewGroup, View view, M m, M m2) {
        ba.e(view);
        return a(view, a(m, 1.0f), 0.0f);
    }

    public void c(M m) {
        super.c(m);
        m.f1108a.put("android:fade:transitionAlpha", Float.valueOf(ba.c(m.f1109b)));
    }

    public Animator a(ViewGroup viewGroup, View view, M m, M m2) {
        float f2 = 0.0f;
        float a2 = a(m, 0.0f);
        if (a2 != 1.0f) {
            f2 = a2;
        }
        return a(view, f2, 1.0f);
    }

    public static float a(M m, float f2) {
        if (m == null) {
            return f2;
        }
        Float f3 = (Float) m.f1108a.get("android:fade:transitionAlpha");
        return f3 != null ? f3.floatValue() : f2;
    }
}
