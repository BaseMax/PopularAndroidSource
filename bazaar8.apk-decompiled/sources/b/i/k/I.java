package b.i.k;

import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* compiled from: ViewPropertyAnimatorCompat */
public final class I {

    /* renamed from: a  reason: collision with root package name */
    public WeakReference<View> f2772a;

    /* renamed from: b  reason: collision with root package name */
    public Runnable f2773b = null;

    /* renamed from: c  reason: collision with root package name */
    public Runnable f2774c = null;

    /* renamed from: d  reason: collision with root package name */
    public int f2775d = -1;

    /* compiled from: ViewPropertyAnimatorCompat */
    static class a implements J {

        /* renamed from: a  reason: collision with root package name */
        public I f2776a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f2777b;

        public a(I i2) {
            this.f2776a = i2;
        }

        public void a(View view) {
            Object tag = view.getTag(2113929216);
            J j2 = tag instanceof J ? (J) tag : null;
            if (j2 != null) {
                j2.a(view);
            }
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v5, resolved type: java.lang.Object} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v2, resolved type: b.i.k.J} */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void b(android.view.View r4) {
            /*
                r3 = this;
                b.i.k.I r0 = r3.f2776a
                int r0 = r0.f2775d
                r1 = -1
                r2 = 0
                if (r0 <= r1) goto L_0x000f
                r4.setLayerType(r0, r2)
                b.i.k.I r0 = r3.f2776a
                r0.f2775d = r1
            L_0x000f:
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 16
                if (r0 >= r1) goto L_0x0019
                boolean r0 = r3.f2777b
                if (r0 != 0) goto L_0x0039
            L_0x0019:
                b.i.k.I r0 = r3.f2776a
                java.lang.Runnable r1 = r0.f2774c
                if (r1 == 0) goto L_0x0024
                r0.f2774c = r2
                r1.run()
            L_0x0024:
                r0 = 2113929216(0x7e000000, float:4.2535296E37)
                java.lang.Object r0 = r4.getTag(r0)
                boolean r1 = r0 instanceof b.i.k.J
                if (r1 == 0) goto L_0x0031
                r2 = r0
                b.i.k.J r2 = (b.i.k.J) r2
            L_0x0031:
                if (r2 == 0) goto L_0x0036
                r2.b(r4)
            L_0x0036:
                r4 = 1
                r3.f2777b = r4
            L_0x0039:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: b.i.k.I.a.b(android.view.View):void");
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v5, resolved type: java.lang.Object} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: b.i.k.J} */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void c(android.view.View r4) {
            /*
                r3 = this;
                r0 = 0
                r3.f2777b = r0
                b.i.k.I r0 = r3.f2776a
                int r0 = r0.f2775d
                r1 = 0
                r2 = -1
                if (r0 <= r2) goto L_0x000f
                r0 = 2
                r4.setLayerType(r0, r1)
            L_0x000f:
                b.i.k.I r0 = r3.f2776a
                java.lang.Runnable r2 = r0.f2773b
                if (r2 == 0) goto L_0x001a
                r0.f2773b = r1
                r2.run()
            L_0x001a:
                r0 = 2113929216(0x7e000000, float:4.2535296E37)
                java.lang.Object r0 = r4.getTag(r0)
                boolean r2 = r0 instanceof b.i.k.J
                if (r2 == 0) goto L_0x0027
                r1 = r0
                b.i.k.J r1 = (b.i.k.J) r1
            L_0x0027:
                if (r1 == 0) goto L_0x002c
                r1.c(r4)
            L_0x002c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: b.i.k.I.a.c(android.view.View):void");
        }
    }

    public I(View view) {
        this.f2772a = new WeakReference<>(view);
    }

    public I a(long j2) {
        View view = (View) this.f2772a.get();
        if (view != null) {
            view.animate().setDuration(j2);
        }
        return this;
    }

    public I b(float f2) {
        View view = (View) this.f2772a.get();
        if (view != null) {
            view.animate().translationY(f2);
        }
        return this;
    }

    public void c() {
        View view = (View) this.f2772a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public I a(float f2) {
        View view = (View) this.f2772a.get();
        if (view != null) {
            view.animate().alpha(f2);
        }
        return this;
    }

    public long b() {
        View view = (View) this.f2772a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0;
    }

    public I a(Interpolator interpolator) {
        View view = (View) this.f2772a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public I b(long j2) {
        View view = (View) this.f2772a.get();
        if (view != null) {
            view.animate().setStartDelay(j2);
        }
        return this;
    }

    public void a() {
        View view = (View) this.f2772a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public I a(J j2) {
        View view = (View) this.f2772a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                a(view, j2);
            } else {
                view.setTag(2113929216, j2);
                a(view, new a(this));
            }
        }
        return this;
    }

    public final void a(View view, J j2) {
        if (j2 != null) {
            view.animate().setListener(new G(this, j2, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public I a(L l2) {
        View view = (View) this.f2772a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            H h2 = null;
            if (l2 != null) {
                h2 = new H(this, l2, view);
            }
            view.animate().setUpdateListener(h2);
        }
        return this;
    }
}
