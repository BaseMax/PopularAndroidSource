package com.mapbox.android.b;

import android.content.Context;
import java.util.HashSet;
import java.util.Set;

public final class n extends j<a> {
    private static final Set<Integer> l;
    float d;
    float e;
    private float m;
    private float n;

    public interface a {
        boolean onSidewaysShove(n nVar, float f, float f2);

        boolean onSidewaysShoveBegin(n nVar);

        void onSidewaysShoveEnd(n nVar, float f, float f2);
    }

    static {
        HashSet hashSet = new HashSet();
        l = hashSet;
        hashSet.add(14);
    }

    public n(Context context, a aVar) {
        super(context, aVar);
    }

    /* access modifiers changed from: protected */
    public final Set<Integer> b() {
        return l;
    }

    /* access modifiers changed from: protected */
    public final boolean c() {
        super.c();
        this.e = ((getCurrentEvent().getX(getCurrentEvent().findPointerIndex(((Integer) this.f.get(0)).intValue())) + getCurrentEvent().getX(getCurrentEvent().findPointerIndex(((Integer) this.f.get(1)).intValue()))) / 2.0f) - ((getPreviousEvent().getX(getPreviousEvent().findPointerIndex(((Integer) this.f.get(0)).intValue())) + getPreviousEvent().getX(getPreviousEvent().findPointerIndex(((Integer) this.f.get(1)).intValue()))) / 2.0f);
        this.d += this.e;
        if (isInProgress() && this.e != 0.0f) {
            return ((a) this.c).onSidewaysShove(this, this.e, this.d);
        }
        if (!a(14) || !((a) this.c).onSidewaysShoveBegin(this)) {
            return false;
        }
        h();
        return true;
    }

    /* access modifiers changed from: protected */
    public final boolean a(int i) {
        return Math.abs(this.d) >= this.n && super.a(i);
    }

    /* access modifiers changed from: protected */
    public final boolean g() {
        if (!super.g()) {
            e eVar = (e) this.g.get(new i((Integer) this.f.get(0), (Integer) this.f.get(1)));
            return !((Math.abs(Math.toDegrees(Math.abs(Math.atan2((double) eVar.getCurrFingersDiffY(), (double) eVar.getCurrFingersDiffX()))) - 90.0d) > ((double) this.m) ? 1 : (Math.abs(Math.toDegrees(Math.abs(Math.atan2((double) eVar.getCurrFingersDiffY(), (double) eVar.getCurrFingersDiffX()))) - 90.0d) == ((double) this.m) ? 0 : -1)) <= 0);
        }
    }

    /* access modifiers changed from: protected */
    public final void e() {
        super.e();
        ((a) this.c).onSidewaysShoveEnd(this, this.j, this.k);
    }

    /* access modifiers changed from: protected */
    public final void d() {
        super.d();
        this.d = 0.0f;
    }

    public final float getDeltaPixelsSinceStart() {
        return this.d;
    }

    public final float getDeltaPixelSinceLast() {
        return this.e;
    }

    public final float getPixelDeltaThreshold() {
        return this.n;
    }

    public final void setPixelDeltaThreshold(float f) {
        this.n = f;
    }

    public final void setPixelDeltaThresholdResource(int i) {
        setPixelDeltaThreshold(this.f4899a.getResources().getDimension(i));
    }

    public final float getMaxShoveAngle() {
        return this.m;
    }

    public final void setMaxShoveAngle(float f) {
        this.m = f;
    }
}
