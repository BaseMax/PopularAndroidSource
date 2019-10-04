package com.github.ybq.android.spinkit.a;

import android.animation.Animator;
import android.animation.ValueAnimator;
import com.github.ybq.android.spinkit.b.f;

public final class a {
    public static void start(Animator animator) {
        if (animator != null && !animator.isStarted()) {
            animator.start();
        }
    }

    public static void stop(Animator animator) {
        if (animator != null && !animator.isRunning()) {
            animator.end();
        }
    }

    public static void start(f... fVarArr) {
        for (f start : fVarArr) {
            start.start();
        }
    }

    public static void stop(f... fVarArr) {
        for (f stop : fVarArr) {
            stop.stop();
        }
    }

    public static boolean isRunning(f... fVarArr) {
        for (f isRunning : fVarArr) {
            if (isRunning.isRunning()) {
                return true;
            }
        }
        return false;
    }

    public static boolean isRunning(ValueAnimator valueAnimator) {
        return valueAnimator != null && valueAnimator.isRunning();
    }

    public static boolean isStarted(ValueAnimator valueAnimator) {
        return valueAnimator != null && valueAnimator.isStarted();
    }
}
