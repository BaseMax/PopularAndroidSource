package c.e.a.c.s;

import android.animation.ValueAnimator;
import b.i.k.z;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* compiled from: BaseTransientBottomBar */
class l implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public int f11441a = this.f11442b;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f11442b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f11443c;

    public l(BaseTransientBottomBar baseTransientBottomBar, int i2) {
        this.f11443c = baseTransientBottomBar;
        this.f11442b = i2;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        if (BaseTransientBottomBar.f13386b) {
            z.e(this.f11443c.f13390f, intValue - this.f11441a);
        } else {
            this.f11443c.f13390f.setTranslationY((float) intValue);
        }
        this.f11441a = intValue;
    }
}
