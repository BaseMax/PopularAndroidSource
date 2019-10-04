package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Build;
import android.view.View;
import android.view.ViewAnimationUtils;
import com.google.android.material.circularreveal.c;

public final class a {
    private a() {
    }

    public static Animator createCircularReveal(c cVar, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(cVar, c.b.CIRCULAR_REVEAL, c.a.CIRCULAR_REVEAL, new c.d[]{new c.d(f, f2, f3)});
        if (Build.VERSION.SDK_INT < 21) {
            return ofObject;
        }
        c.d revealInfo = cVar.getRevealInfo();
        if (revealInfo != null) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) cVar, (int) f, (int) f2, revealInfo.radius, f3);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(new Animator[]{ofObject, createCircularReveal});
            return animatorSet;
        }
        throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
    }

    public static Animator createCircularReveal(c cVar, float f, float f2, float f3, float f4) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(cVar, c.b.CIRCULAR_REVEAL, c.a.CIRCULAR_REVEAL, new c.d[]{new c.d(f, f2, f3), new c.d(f, f2, f4)});
        if (Build.VERSION.SDK_INT < 21) {
            return ofObject;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) cVar, (int) f, (int) f2, f3, f4);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{ofObject, createCircularReveal});
        return animatorSet;
    }

    public static Animator.AnimatorListener createCircularRevealListener(final c cVar) {
        return new AnimatorListenerAdapter() {
            public final void onAnimationStart(Animator animator) {
                cVar.buildCircularRevealCache();
            }

            public final void onAnimationEnd(Animator animator) {
                cVar.destroyCircularRevealCache();
            }
        };
    }
}
