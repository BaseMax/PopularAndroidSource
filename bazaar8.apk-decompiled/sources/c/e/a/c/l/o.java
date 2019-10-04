package c.e.a.c.l;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import b.D.E;
import b.D.M;
import java.util.Map;

/* compiled from: TextScale */
public class o extends E {
    public void a(M m) {
        d(m);
    }

    public void c(M m) {
        d(m);
    }

    public final void d(M m) {
        View view = m.f1109b;
        if (view instanceof TextView) {
            m.f1108a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    public Animator a(ViewGroup viewGroup, M m, M m2) {
        ValueAnimator valueAnimator = null;
        if (!(m == null || m2 == null || !(m.f1109b instanceof TextView))) {
            View view = m2.f1109b;
            if (view instanceof TextView) {
                TextView textView = (TextView) view;
                Map<String, Object> map = m.f1108a;
                Map<String, Object> map2 = m2.f1108a;
                float f2 = 1.0f;
                float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
                if (map2.get("android:textscale:scale") != null) {
                    f2 = ((Float) map2.get("android:textscale:scale")).floatValue();
                }
                if (floatValue == f2) {
                    return null;
                }
                valueAnimator = ValueAnimator.ofFloat(new float[]{floatValue, f2});
                valueAnimator.addUpdateListener(new n(this, textView));
            }
        }
        return valueAnimator;
    }
}
