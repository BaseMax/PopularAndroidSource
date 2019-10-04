package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import java.util.Map;

public final class j extends Transition {
    public final void captureStartValues(TransitionValues transitionValues) {
        a(transitionValues);
    }

    public final void captureEndValues(TransitionValues transitionValues) {
        a(transitionValues);
    }

    private static void a(TransitionValues transitionValues) {
        if (transitionValues.view instanceof TextView) {
            transitionValues.values.put("android:textscale:scale", Float.valueOf(((TextView) transitionValues.view).getScaleX()));
        }
    }

    public final Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ValueAnimator valueAnimator = null;
        if (transitionValues != null && transitionValues2 != null && (transitionValues.view instanceof TextView) && (transitionValues2.view instanceof TextView)) {
            final TextView textView = (TextView) transitionValues2.view;
            Map<String, Object> map = transitionValues.values;
            Map<String, Object> map2 = transitionValues2.values;
            float f = 1.0f;
            float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
            if (map2.get("android:textscale:scale") != null) {
                f = ((Float) map2.get("android:textscale:scale")).floatValue();
            }
            if (floatValue == f) {
                return null;
            }
            valueAnimator = ValueAnimator.ofFloat(new float[]{floatValue, f});
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    textView.setScaleX(floatValue);
                    textView.setScaleY(floatValue);
                }
            });
        }
        return valueAnimator;
    }
}
