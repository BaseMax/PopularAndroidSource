package com.mapbox.android.b;

import android.content.Context;
import java.util.HashSet;
import java.util.Set;

public final class m extends j<a> {
    private static final Set<Integer> l;
    float d;
    float e;
    private float m;
    private float n;

    public interface a {
        boolean onShove(m mVar, float f, float f2);

        boolean onShoveBegin(m mVar);

        void onShoveEnd(m mVar, float f, float f2);
    }

    public static class b implements a {
        public boolean onShove(m mVar, float f, float f2) {
            return false;
        }

        public boolean onShoveBegin(m mVar) {
            return true;
        }

        public void onShoveEnd(m mVar, float f, float f2) {
        }
    }

    static {
        HashSet hashSet = new HashSet();
        l = hashSet;
        hashSet.add(3);
    }

    public m(Context context, a aVar) {
        super(context, aVar);
    }

    /* access modifiers changed from: protected */
    public final Set<Integer> b() {
        return l;
    }

    /* access modifiers changed from: protected */
    public final boolean c() {
        super.c();
        this.e = ((getCurrentEvent().getY(getCurrentEvent().findPointerIndex(((Integer) this.f.get(0)).intValue())) + getCurrentEvent().getY(getCurrentEvent().findPointerIndex(((Integer) this.f.get(1)).intValue()))) / 2.0f) - ((getPreviousEvent().getY(getPreviousEvent().findPointerIndex(((Integer) this.f.get(0)).intValue())) + getPreviousEvent().getY(getPreviousEvent().findPointerIndex(((Integer) this.f.get(1)).intValue()))) / 2.0f);
        this.d += this.e;
        if (isInProgress() && this.e != 0.0f) {
            return ((a) this.c).onShove(this, this.e, this.d);
        }
        if (!a(3) || !((a) this.c).onShoveBegin(this)) {
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
            double degrees = Math.toDegrees(Math.abs(Math.atan2((double) eVar.getCurrFingersDiffY(), (double) eVar.getCurrFingersDiffX())));
            float f = this.m;
            return !((degrees > ((double) f) ? 1 : (degrees == ((double) f) ? 0 : -1)) <= 0 || ((180.0d - degrees) > ((double) f) ? 1 : ((180.0d - degrees) == ((double) f) ? 0 : -1)) <= 0);
        }
    }

    /* access modifiers changed from: protected */
    public final void e() {
        super.e();
        ((a) this.c).onShoveEnd(this, this.j, this.k);
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
