package com.mapbox.android.b;

import android.content.Context;
import java.util.HashSet;
import java.util.Set;

public final class l extends j<a> {
    private static final Set<Integer> l;
    float d;
    float e;
    private float m;

    public interface a {
        boolean onRotate(l lVar, float f, float f2);

        boolean onRotateBegin(l lVar);

        void onRotateEnd(l lVar, float f, float f2, float f3);
    }

    public static class b implements a {
        public boolean onRotate(l lVar, float f, float f2) {
            return true;
        }

        public boolean onRotateBegin(l lVar) {
            return true;
        }

        public void onRotateEnd(l lVar, float f, float f2, float f3) {
        }
    }

    static {
        HashSet hashSet = new HashSet();
        l = hashSet;
        hashSet.add(2);
    }

    public l(Context context, a aVar) {
        super(context, aVar);
    }

    /* access modifiers changed from: protected */
    public final Set<Integer> b() {
        return l;
    }

    /* access modifiers changed from: protected */
    public final boolean c() {
        super.c();
        e eVar = (e) this.g.get(new i((Integer) this.f.get(0), (Integer) this.f.get(1)));
        this.e = (float) Math.toDegrees(Math.atan2((double) eVar.getPrevFingersDiffY(), (double) eVar.getPrevFingersDiffX()) - Math.atan2((double) eVar.getCurrFingersDiffY(), (double) eVar.getCurrFingersDiffX()));
        this.d += this.e;
        if (isInProgress() && this.e != 0.0f) {
            return ((a) this.c).onRotate(this, this.e, this.d);
        }
        if (!a(2) || !((a) this.c).onRotateBegin(this)) {
            return false;
        }
        h();
        return true;
    }

    /* access modifiers changed from: protected */
    public final boolean a(int i) {
        return Math.abs(this.d) >= this.m && super.a(i);
    }

    /* access modifiers changed from: protected */
    public final void e() {
        super.e();
        if (this.e == 0.0f) {
            this.j = 0.0f;
            this.k = 0.0f;
        }
        float f = this.j;
        double d2 = (double) ((getFocalPoint().x * this.k) + (getFocalPoint().y * f));
        Double.isNaN(d2);
        float abs = Math.abs((float) (d2 / (Math.pow((double) getFocalPoint().x, 2.0d) + Math.pow((double) getFocalPoint().y, 2.0d))));
        if (this.e < 0.0f) {
            abs = -abs;
        }
        ((a) this.c).onRotateEnd(this, this.j, this.k, abs);
    }

    /* access modifiers changed from: protected */
    public final void d() {
        super.d();
        this.d = 0.0f;
    }

    public final float getDeltaSinceStart() {
        return this.d;
    }

    public final float getDeltaSinceLast() {
        return this.e;
    }

    public final float getAngleThreshold() {
        return this.m;
    }

    public final void setAngleThreshold(float f) {
        this.m = f;
    }
}
