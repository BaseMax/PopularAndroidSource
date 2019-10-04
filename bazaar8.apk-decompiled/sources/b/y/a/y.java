package b.y.a;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import e.a.a.a.a.b.C1046a;

/* compiled from: LinearSmoothScroller */
public class y extends RecyclerView.s {

    /* renamed from: i  reason: collision with root package name */
    public final LinearInterpolator f3567i = new LinearInterpolator();

    /* renamed from: j  reason: collision with root package name */
    public final DecelerateInterpolator f3568j = new DecelerateInterpolator();

    /* renamed from: k  reason: collision with root package name */
    public PointF f3569k;

    /* renamed from: l  reason: collision with root package name */
    public final float f3570l;
    public int m = 0;
    public int n = 0;

    public y(Context context) {
        this.f3570l = a(context.getResources().getDisplayMetrics());
    }

    public void a(View view, RecyclerView.t tVar, RecyclerView.s.a aVar) {
        int a2 = a(view, i());
        int b2 = b(view, j());
        int d2 = d((int) Math.sqrt((double) ((a2 * a2) + (b2 * b2))));
        if (d2 > 0) {
            aVar.a(-a2, -b2, d2, this.f3568j);
        }
    }

    public final int b(int i2, int i3) {
        int i4 = i2 - i3;
        if (i2 * i4 <= 0) {
            return 0;
        }
        return i4;
    }

    public int b(View view, int i2) {
        RecyclerView.i b2 = b();
        if (b2 == null || !b2.b()) {
            return 0;
        }
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        return a(b2.j(view) - jVar.topMargin, b2.e(view) + jVar.bottomMargin, b2.q(), b2.h() - b2.n(), i2);
    }

    public int d(int i2) {
        double e2 = (double) e(i2);
        Double.isNaN(e2);
        return (int) Math.ceil(e2 / 0.3356d);
    }

    public int e(int i2) {
        return (int) Math.ceil((double) (((float) Math.abs(i2)) * this.f3570l));
    }

    public void f() {
    }

    public void g() {
        this.n = 0;
        this.m = 0;
        this.f3569k = null;
    }

    public int i() {
        PointF pointF = this.f3569k;
        if (pointF != null) {
            float f2 = pointF.x;
            if (f2 != 0.0f) {
                return f2 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    public int j() {
        PointF pointF = this.f3569k;
        if (pointF != null) {
            float f2 = pointF.y;
            if (f2 != 0.0f) {
                return f2 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }

    public void a(int i2, int i3, RecyclerView.t tVar, RecyclerView.s.a aVar) {
        if (a() == 0) {
            h();
            return;
        }
        this.m = b(this.m, i2);
        this.n = b(this.n, i3);
        if (this.m == 0 && this.n == 0) {
            a(aVar);
        }
    }

    public float a(DisplayMetrics displayMetrics) {
        return 25.0f / ((float) displayMetrics.densityDpi);
    }

    public void a(RecyclerView.s.a aVar) {
        PointF a2 = a(c());
        if (a2 == null || (a2.x == 0.0f && a2.y == 0.0f)) {
            aVar.a(c());
            h();
            return;
        }
        a(a2);
        this.f3569k = a2;
        this.m = (int) (a2.x * 10000.0f);
        this.n = (int) (a2.y * 10000.0f);
        aVar.a((int) (((float) this.m) * 1.2f), (int) (((float) this.n) * 1.2f), (int) (((float) e(C1046a.DEFAULT_TIMEOUT)) * 1.2f), this.f3567i);
    }

    public int a(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == -1) {
            return i4 - i2;
        }
        if (i6 == 0) {
            int i7 = i4 - i2;
            if (i7 > 0) {
                return i7;
            }
            int i8 = i5 - i3;
            if (i8 < 0) {
                return i8;
            }
            return 0;
        } else if (i6 == 1) {
            return i5 - i3;
        } else {
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
    }

    public int a(View view, int i2) {
        RecyclerView.i b2 = b();
        if (b2 == null || !b2.a()) {
            return 0;
        }
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        return a(b2.f(view) - jVar.leftMargin, b2.i(view) + jVar.rightMargin, b2.o(), b2.r() - b2.p(), i2);
    }
}
