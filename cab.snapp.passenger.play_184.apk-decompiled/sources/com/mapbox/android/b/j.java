package com.mapbox.android.b;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import java.util.Set;

public abstract class j<L> extends f<L> {
    private boolean d;
    private boolean e;
    final Set<Integer> h = b();
    VelocityTracker i;
    float j;
    float k;

    /* access modifiers changed from: protected */
    public abstract Set<Integer> b();

    public j(Context context, a aVar) {
        super(context, aVar);
    }

    /* access modifiers changed from: protected */
    public boolean b(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 || actionMasked == 5 || actionMasked == 6 || actionMasked == 3) {
            d();
        }
        if (this.e) {
            this.e = false;
            d();
            e();
        }
        VelocityTracker velocityTracker = this.i;
        if (velocityTracker != null) {
            velocityTracker.addMovement(getCurrentEvent());
        }
        boolean b2 = super.b(motionEvent);
        if (actionMasked == 1 || actionMasked == 6) {
            if (this.f.size() < f() && this.d) {
                e();
                return true;
            }
        } else if (actionMasked == 3 && this.d) {
            e();
            return true;
        }
        return b2;
    }

    /* access modifiers changed from: protected */
    public final void h() {
        this.d = true;
        if (this.i == null) {
            this.i = VelocityTracker.obtain();
        }
    }

    /* access modifiers changed from: protected */
    public void e() {
        this.d = false;
        VelocityTracker velocityTracker = this.i;
        if (velocityTracker != null) {
            velocityTracker.computeCurrentVelocity(1000);
            this.j = this.i.getXVelocity();
            this.k = this.i.getYVelocity();
            this.i.recycle();
            this.i = null;
        }
        d();
    }

    public boolean isInProgress() {
        return this.d;
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            interrupt();
        }
    }

    public void interrupt() {
        if (isInProgress()) {
            this.e = true;
        }
    }
}
