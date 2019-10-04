package c.e.a.c.a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* compiled from: MotionTiming */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public long f11198a = 0;

    /* renamed from: b  reason: collision with root package name */
    public long f11199b = 300;

    /* renamed from: c  reason: collision with root package name */
    public TimeInterpolator f11200c = null;

    /* renamed from: d  reason: collision with root package name */
    public int f11201d = 0;

    /* renamed from: e  reason: collision with root package name */
    public int f11202e = 1;

    public i(long j2, long j3) {
        this.f11198a = j2;
        this.f11199b = j3;
    }

    public void a(Animator animator) {
        animator.setStartDelay(a());
        animator.setDuration(b());
        animator.setInterpolator(c());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(d());
            valueAnimator.setRepeatMode(e());
        }
    }

    public long b() {
        return this.f11199b;
    }

    public TimeInterpolator c() {
        TimeInterpolator timeInterpolator = this.f11200c;
        return timeInterpolator != null ? timeInterpolator : a.f11185b;
    }

    public int d() {
        return this.f11201d;
    }

    public int e() {
        return this.f11202e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (a() == iVar.a() && b() == iVar.b() && d() == iVar.d() && e() == iVar.e()) {
            return c().getClass().equals(iVar.c().getClass());
        }
        return false;
    }

    public int hashCode() {
        return (((((((((int) (a() ^ (a() >>> 32))) * 31) + ((int) (b() ^ (b() >>> 32)))) * 31) + c().getClass().hashCode()) * 31) + d()) * 31) + e();
    }

    public String toString() {
        return 10 + i.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + a() + " duration: " + b() + " interpolator: " + c().getClass() + " repeatCount: " + d() + " repeatMode: " + e() + "}\n";
    }

    public static TimeInterpolator b(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return a.f11185b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return a.f11186c;
        }
        if (interpolator instanceof DecelerateInterpolator) {
            interpolator = a.f11187d;
        }
        return interpolator;
    }

    public long a() {
        return this.f11198a;
    }

    public static i a(ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), b(valueAnimator));
        iVar.f11201d = valueAnimator.getRepeatCount();
        iVar.f11202e = valueAnimator.getRepeatMode();
        return iVar;
    }

    public i(long j2, long j3, TimeInterpolator timeInterpolator) {
        this.f11198a = j2;
        this.f11199b = j3;
        this.f11200c = timeInterpolator;
    }
}
