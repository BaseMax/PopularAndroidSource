package b.b.g;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import b.b.f.a.w;

/* compiled from: ForwardingListener */
public abstract class K implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final float f2069a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2070b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2071c;

    /* renamed from: d  reason: collision with root package name */
    public final View f2072d;

    /* renamed from: e  reason: collision with root package name */
    public Runnable f2073e;

    /* renamed from: f  reason: collision with root package name */
    public Runnable f2074f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2075g;

    /* renamed from: h  reason: collision with root package name */
    public int f2076h;

    /* renamed from: i  reason: collision with root package name */
    public final int[] f2077i = new int[2];

    /* compiled from: ForwardingListener */
    private class a implements Runnable {
        public a() {
        }

        public void run() {
            ViewParent parent = K.this.f2072d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* compiled from: ForwardingListener */
    private class b implements Runnable {
        public b() {
        }

        public void run() {
            K.this.e();
        }
    }

    public K(View view) {
        this.f2072d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f2069a = (float) ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.f2070b = ViewConfiguration.getTapTimeout();
        this.f2071c = (this.f2070b + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    public final void a() {
        Runnable runnable = this.f2074f;
        if (runnable != null) {
            this.f2072d.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f2073e;
        if (runnable2 != null) {
            this.f2072d.removeCallbacks(runnable2);
        }
    }

    public abstract w b();

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0017, code lost:
        if (r1 != 3) goto L_0x006d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean b(android.view.MotionEvent r6) {
        /*
            r5 = this;
            android.view.View r0 = r5.f2072d
            boolean r1 = r0.isEnabled()
            r2 = 0
            if (r1 != 0) goto L_0x000a
            return r2
        L_0x000a:
            int r1 = r6.getActionMasked()
            if (r1 == 0) goto L_0x0041
            r3 = 1
            if (r1 == r3) goto L_0x003d
            r4 = 2
            if (r1 == r4) goto L_0x001a
            r6 = 3
            if (r1 == r6) goto L_0x003d
            goto L_0x006d
        L_0x001a:
            int r1 = r5.f2076h
            int r1 = r6.findPointerIndex(r1)
            if (r1 < 0) goto L_0x006d
            float r4 = r6.getX(r1)
            float r6 = r6.getY(r1)
            float r1 = r5.f2069a
            boolean r6 = a(r0, r4, r6, r1)
            if (r6 != 0) goto L_0x006d
            r5.a()
            android.view.ViewParent r6 = r0.getParent()
            r6.requestDisallowInterceptTouchEvent(r3)
            return r3
        L_0x003d:
            r5.a()
            goto L_0x006d
        L_0x0041:
            int r6 = r6.getPointerId(r2)
            r5.f2076h = r6
            java.lang.Runnable r6 = r5.f2073e
            if (r6 != 0) goto L_0x0052
            b.b.g.K$a r6 = new b.b.g.K$a
            r6.<init>()
            r5.f2073e = r6
        L_0x0052:
            java.lang.Runnable r6 = r5.f2073e
            int r1 = r5.f2070b
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
            java.lang.Runnable r6 = r5.f2074f
            if (r6 != 0) goto L_0x0065
            b.b.g.K$b r6 = new b.b.g.K$b
            r6.<init>()
            r5.f2074f = r6
        L_0x0065:
            java.lang.Runnable r6 = r5.f2074f
            int r1 = r5.f2071c
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
        L_0x006d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.K.b(android.view.MotionEvent):boolean");
    }

    public abstract boolean c();

    public boolean d() {
        w b2 = b();
        if (b2 != null && b2.c()) {
            b2.dismiss();
        }
        return true;
    }

    public void e() {
        a();
        View view = this.f2072d;
        if (view.isEnabled() && !view.isLongClickable() && c()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            this.f2075g = true;
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f2075g;
        if (z2) {
            z = a(motionEvent) || !d();
        } else {
            z = b(motionEvent) && c();
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f2072d.onTouchEvent(obtain);
                obtain.recycle();
            }
        }
        this.f2075g = z;
        if (z || z2) {
            return true;
        }
        return false;
    }

    public void onViewAttachedToWindow(View view) {
    }

    public void onViewDetachedFromWindow(View view) {
        this.f2075g = false;
        this.f2076h = -1;
        Runnable runnable = this.f2073e;
        if (runnable != null) {
            this.f2072d.removeCallbacks(runnable);
        }
    }

    public final boolean a(MotionEvent motionEvent) {
        View view = this.f2072d;
        w b2 = b();
        if (b2 != null && b2.c()) {
            I i2 = (I) b2.f();
            if (i2 != null && i2.isShown()) {
                MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                a(view, obtainNoHistory);
                b(i2, obtainNoHistory);
                boolean a2 = i2.a(obtainNoHistory, this.f2076h);
                obtainNoHistory.recycle();
                int actionMasked = motionEvent.getActionMasked();
                boolean z = true;
                boolean z2 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                if (!a2 || !z2) {
                    z = false;
                }
                return z;
            }
        }
        return false;
    }

    public static boolean a(View view, float f2, float f3, float f4) {
        float f5 = -f4;
        return f2 >= f5 && f3 >= f5 && f2 < ((float) (view.getRight() - view.getLeft())) + f4 && f3 < ((float) (view.getBottom() - view.getTop())) + f4;
    }

    public final boolean a(View view, MotionEvent motionEvent) {
        int[] iArr = this.f2077i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation((float) iArr[0], (float) iArr[1]);
        return true;
    }

    public final boolean b(View view, MotionEvent motionEvent) {
        int[] iArr = this.f2077i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation((float) (-iArr[0]), (float) (-iArr[1]));
        return true;
    }
}
