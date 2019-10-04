package c.c.a.d.h.b;

import android.animation.Animator;
import android.animation.ValueAnimator;

/* compiled from: AnimationUtils */
public class a {
    public static void a(Animator animator) {
        if (animator != null && !animator.isStarted()) {
            animator.start();
        }
    }

    public static void b(w... wVarArr) {
        for (w start : wVarArr) {
            start.start();
        }
    }

    public static void c(w... wVarArr) {
        for (w stop : wVarArr) {
            stop.stop();
        }
    }

    public static boolean a(w... wVarArr) {
        for (w isRunning : wVarArr) {
            if (isRunning.isRunning()) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(ValueAnimator valueAnimator) {
        return valueAnimator != null && valueAnimator.isStarted();
    }

    public static boolean a(ValueAnimator valueAnimator) {
        return valueAnimator != null && valueAnimator.isRunning();
    }
}
