package c.e.a.c.l;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;

/* compiled from: StateListAnimator */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<a> f11397a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public a f11398b = null;

    /* renamed from: c  reason: collision with root package name */
    public ValueAnimator f11399c = null;

    /* renamed from: d  reason: collision with root package name */
    public final Animator.AnimatorListener f11400d = new l(this);

    /* compiled from: StateListAnimator */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int[] f11401a;

        /* renamed from: b  reason: collision with root package name */
        public final ValueAnimator f11402b;

        public a(int[] iArr, ValueAnimator valueAnimator) {
            this.f11401a = iArr;
            this.f11402b = valueAnimator;
        }
    }

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        a aVar = new a(iArr, valueAnimator);
        valueAnimator.addListener(this.f11400d);
        this.f11397a.add(aVar);
    }

    public void b() {
        ValueAnimator valueAnimator = this.f11399c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f11399c = null;
        }
    }

    public void a(int[] iArr) {
        a aVar;
        int size = this.f11397a.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                aVar = null;
                break;
            }
            aVar = this.f11397a.get(i2);
            if (StateSet.stateSetMatches(aVar.f11401a, iArr)) {
                break;
            }
            i2++;
        }
        a aVar2 = this.f11398b;
        if (aVar != aVar2) {
            if (aVar2 != null) {
                a();
            }
            this.f11398b = aVar;
            if (aVar != null) {
                a(aVar);
            }
        }
    }

    public final void a(a aVar) {
        this.f11399c = aVar.f11402b;
        this.f11399c.start();
    }

    public final void a() {
        ValueAnimator valueAnimator = this.f11399c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f11399c = null;
        }
    }
}
