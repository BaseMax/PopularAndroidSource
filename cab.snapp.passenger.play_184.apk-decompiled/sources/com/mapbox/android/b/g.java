package com.mapbox.android.b;

import android.content.Context;
import android.view.MotionEvent;
import java.util.Iterator;

public final class g extends f<a> {
    private long d;
    private float e;
    private boolean h;
    private boolean i;
    private int j;

    public interface a {
        boolean onMultiFingerTap(g gVar, int i);
    }

    public g(Context context, a aVar) {
        super(context, aVar);
    }

    /* access modifiers changed from: protected */
    public final boolean b(MotionEvent motionEvent) {
        super.b(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        boolean z = false;
        boolean z2 = true;
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked == 5) {
                    if (this.i) {
                        this.h = true;
                    }
                    this.j = this.f.size();
                } else if (actionMasked == 6) {
                    this.i = true;
                }
            } else if (!this.h) {
                Iterator it = this.g.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z2 = false;
                        break;
                    }
                    e eVar = (e) it.next();
                    float abs = Math.abs(eVar.getCurrFingersDiffX() - eVar.getPrevFingersDiffX());
                    float abs2 = Math.abs(eVar.getCurrFingersDiffY() - eVar.getPrevFingersDiffY());
                    float f = this.e;
                    this.h = abs > f || abs2 > f;
                    if (this.h) {
                        break;
                    }
                }
                this.h = z2;
            }
            return false;
        }
        if (a(4)) {
            z = ((a) this.c).onMultiFingerTap(this, this.j);
        }
        d();
        return z;
    }

    /* access modifiers changed from: protected */
    public final boolean a(int i2) {
        if (this.j <= 1 || this.h || getGestureDuration() >= this.d || !super.a(i2)) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public final void d() {
        super.d();
        this.j = 0;
        this.h = false;
        this.i = false;
    }

    public final long getMultiFingerTapTimeThreshold() {
        return this.d;
    }

    public final void setMultiFingerTapTimeThreshold(long j2) {
        this.d = j2;
    }

    public final float getMultiFingerTapMovementThreshold() {
        return this.e;
    }

    public final void setMultiFingerTapMovementThreshold(float f) {
        this.e = f;
    }

    public final void setMultiFingerTapMovementThresholdResource(int i2) {
        setMultiFingerTapMovementThreshold(this.f4899a.getResources().getDimension(i2));
    }
}
