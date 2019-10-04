package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    ValueAnimator f3950a = null;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<a> f3951b = new ArrayList<>();
    private a c = null;
    private final Animator.AnimatorListener d = new AnimatorListenerAdapter() {
        public final void onAnimationEnd(Animator animator) {
            if (i.this.f3950a == animator) {
                i.this.f3950a = null;
            }
        }
    };

    static class a {

        /* renamed from: a  reason: collision with root package name */
        final int[] f3953a;

        /* renamed from: b  reason: collision with root package name */
        final ValueAnimator f3954b;

        a(int[] iArr, ValueAnimator valueAnimator) {
            this.f3953a = iArr;
            this.f3954b = valueAnimator;
        }
    }

    public final void addState(int[] iArr, ValueAnimator valueAnimator) {
        a aVar = new a(iArr, valueAnimator);
        valueAnimator.addListener(this.d);
        this.f3951b.add(aVar);
    }

    public final void setState(int[] iArr) {
        a aVar;
        int size = this.f3951b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            aVar = this.f3951b.get(i);
            if (StateSet.stateSetMatches(aVar.f3953a, iArr)) {
                break;
            }
            i++;
        }
        a aVar2 = this.c;
        if (aVar != aVar2) {
            if (aVar2 != null) {
                ValueAnimator valueAnimator = this.f3950a;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                    this.f3950a = null;
                }
            }
            this.c = aVar;
            if (aVar != null) {
                this.f3950a = aVar.f3954b;
                this.f3950a.start();
            }
        }
    }

    public final void jumpToCurrentState() {
        ValueAnimator valueAnimator = this.f3950a;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f3950a = null;
        }
    }
}
