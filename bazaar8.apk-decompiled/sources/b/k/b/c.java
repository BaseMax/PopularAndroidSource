package b.k.b;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import b.f.j;
import b.i.k.C0258a;
import b.i.k.F;
import b.i.k.a.e;
import b.i.k.a.f;
import b.i.k.z;
import b.k.b.d;
import com.crashlytics.android.core.LogFileManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ExploreByTouchHelper */
public abstract class c extends C0258a {

    /* renamed from: d  reason: collision with root package name */
    public static final Rect f2905d = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: e  reason: collision with root package name */
    public static final d.a<b.i.k.a.d> f2906e = new a();

    /* renamed from: f  reason: collision with root package name */
    public static final d.b<j<b.i.k.a.d>, b.i.k.a.d> f2907f = new b();

    /* renamed from: g  reason: collision with root package name */
    public final Rect f2908g;

    /* renamed from: h  reason: collision with root package name */
    public final Rect f2909h;

    /* renamed from: i  reason: collision with root package name */
    public final Rect f2910i;

    /* renamed from: j  reason: collision with root package name */
    public final int[] f2911j;

    /* renamed from: k  reason: collision with root package name */
    public final AccessibilityManager f2912k;

    /* renamed from: l  reason: collision with root package name */
    public final View f2913l;
    public a m;
    public int n;
    public int o;
    public int p;

    /* compiled from: ExploreByTouchHelper */
    private class a extends e {
        public a() {
        }

        public b.i.k.a.d a(int i2) {
            return b.i.k.a.d.a(c.this.f(i2));
        }

        public b.i.k.a.d b(int i2) {
            int i3 = i2 == 2 ? c.this.n : c.this.o;
            if (i3 == Integer.MIN_VALUE) {
                return null;
            }
            return a(i3);
        }

        public boolean a(int i2, int i3, Bundle bundle) {
            return c.this.b(i2, i3, bundle);
        }
    }

    public static int e(int i2) {
        if (i2 == 19) {
            return 33;
        }
        if (i2 != 21) {
            return i2 != 22 ? 130 : 66;
        }
        return 17;
    }

    public abstract int a(float f2, float f3);

    public e a(View view) {
        if (this.m == null) {
            this.m = new a();
        }
        return this.m;
    }

    public void a(int i2, AccessibilityEvent accessibilityEvent) {
    }

    public abstract void a(int i2, b.i.k.a.d dVar);

    public void a(int i2, boolean z) {
    }

    public void a(AccessibilityEvent accessibilityEvent) {
    }

    public void a(b.i.k.a.d dVar) {
    }

    public abstract void a(List<Integer> list);

    public abstract boolean a(int i2, int i3, Bundle bundle);

    public final boolean b(int i2, Rect rect) {
        b.i.k.a.d dVar;
        b.i.k.a.d dVar2;
        j<b.i.k.a.d> d2 = d();
        int i3 = this.o;
        int i4 = Integer.MIN_VALUE;
        if (i3 == Integer.MIN_VALUE) {
            dVar = null;
        } else {
            dVar = d2.a(i3);
        }
        b.i.k.a.d dVar3 = dVar;
        if (i2 == 1 || i2 == 2) {
            dVar2 = (b.i.k.a.d) d.a(d2, f2907f, f2906e, dVar3, i2, z.m(this.f2913l) == 1, false);
        } else if (i2 == 17 || i2 == 33 || i2 == 66 || i2 == 130) {
            Rect rect2 = new Rect();
            int i5 = this.o;
            if (i5 != Integer.MIN_VALUE) {
                a(i5, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                a(this.f2913l, i2, rect2);
            }
            dVar2 = (b.i.k.a.d) d.a(d2, f2907f, f2906e, dVar3, rect2, i2);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        if (dVar2 != null) {
            i4 = d2.c(d2.a(dVar2));
        }
        return h(i4);
    }

    public final boolean c(int i2, int i3) {
        if (i2 == Integer.MIN_VALUE || !this.f2912k.isEnabled()) {
            return false;
        }
        ViewParent parent = this.f2913l.getParent();
        if (parent == null) {
            return false;
        }
        return F.a(parent, this.f2913l, a(i2, i3));
    }

    public final j<b.i.k.a.d> d() {
        ArrayList arrayList = new ArrayList();
        a((List<Integer>) arrayList);
        j<b.i.k.a.d> jVar = new j<>();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            jVar.c(i2, d(i2));
        }
        return jVar;
    }

    public b.i.k.a.d f(int i2) {
        if (i2 == -1) {
            return c();
        }
        return d(i2);
    }

    public final boolean g(int i2) {
        if (this.f2912k.isEnabled() && this.f2912k.isTouchExplorationEnabled()) {
            int i3 = this.n;
            if (i3 != i2) {
                if (i3 != Integer.MIN_VALUE) {
                    a(i3);
                }
                this.n = i2;
                this.f2913l.invalidate();
                c(i2, 32768);
                return true;
            }
        }
        return false;
    }

    public final boolean h(int i2) {
        if (!this.f2913l.isFocused() && !this.f2913l.requestFocus()) {
            return false;
        }
        int i3 = this.o;
        if (i3 == i2) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            b(i3);
        }
        this.o = i2;
        a(i2, true);
        c(i2, 8);
        return true;
    }

    public final void i(int i2) {
        int i3 = this.p;
        if (i3 != i2) {
            this.p = i2;
            c(i2, 128);
            c(i3, 256);
        }
    }

    public final boolean a(MotionEvent motionEvent) {
        boolean z = false;
        if (this.f2912k.isEnabled() && this.f2912k.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7 || action == 9) {
                int a2 = a(motionEvent.getX(), motionEvent.getY());
                i(a2);
                if (a2 != Integer.MIN_VALUE) {
                    z = true;
                }
            } else if (action != 10 || this.p == Integer.MIN_VALUE) {
                return false;
            } else {
                i(Integer.MIN_VALUE);
                return true;
            }
        }
        return z;
    }

    public final AccessibilityEvent c(int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        this.f2913l.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    public final b.i.k.a.d c() {
        b.i.k.a.d c2 = b.i.k.a.d.c(this.f2913l);
        z.a(this.f2913l, c2);
        ArrayList arrayList = new ArrayList();
        a((List<Integer>) arrayList);
        if (c2.c() <= 0 || arrayList.size() <= 0) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                c2.a(this.f2913l, ((Integer) arrayList.get(i2)).intValue());
            }
            return c2;
        }
        throw new RuntimeException("Views cannot have both real and virtual children");
    }

    public final b.i.k.a.d d(int i2) {
        b.i.k.a.d v = b.i.k.a.d.v();
        v.f(true);
        v.g(true);
        v.b((CharSequence) "android.view.View");
        v.c(f2905d);
        v.d(f2905d);
        v.e(this.f2913l);
        a(i2, v);
        if (v.i() == null && v.f() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        v.a(this.f2909h);
        if (!this.f2909h.equals(f2905d)) {
            int b2 = v.b();
            if ((b2 & 64) != 0) {
                throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            } else if ((b2 & 128) == 0) {
                v.e((CharSequence) this.f2913l.getContext().getPackageName());
                v.c(this.f2913l, i2);
                if (this.n == i2) {
                    v.a(true);
                    v.a(128);
                } else {
                    v.a(false);
                    v.a(64);
                }
                boolean z = this.o == i2;
                if (z) {
                    v.a(2);
                } else if (v.p()) {
                    v.a(1);
                }
                v.h(z);
                this.f2913l.getLocationOnScreen(this.f2911j);
                v.b(this.f2908g);
                if (this.f2908g.equals(f2905d)) {
                    v.a(this.f2908g);
                    if (v.f2789c != -1) {
                        b.i.k.a.d v2 = b.i.k.a.d.v();
                        for (int i3 = v.f2789c; i3 != -1; i3 = v2.f2789c) {
                            v2.b(this.f2913l, -1);
                            v2.c(f2905d);
                            a(i3, v2);
                            v2.a(this.f2909h);
                            Rect rect = this.f2908g;
                            Rect rect2 = this.f2909h;
                            rect.offset(rect2.left, rect2.top);
                        }
                        v2.w();
                    }
                    this.f2908g.offset(this.f2911j[0] - this.f2913l.getScrollX(), this.f2911j[1] - this.f2913l.getScrollY());
                }
                if (this.f2913l.getLocalVisibleRect(this.f2910i)) {
                    this.f2910i.offset(this.f2911j[0] - this.f2913l.getScrollX(), this.f2911j[1] - this.f2913l.getScrollY());
                    if (this.f2908g.intersect(this.f2910i)) {
                        v.d(this.f2908g);
                        if (a(this.f2908g)) {
                            v.m(true);
                        }
                    }
                }
                return v;
            } else {
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
        } else {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
    }

    public final boolean a(KeyEvent keyEvent) {
        int i2 = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 61) {
            if (keyCode != 66) {
                switch (keyCode) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                        if (!keyEvent.hasNoModifiers()) {
                            return false;
                        }
                        int e2 = e(keyCode);
                        int repeatCount = keyEvent.getRepeatCount() + 1;
                        boolean z = false;
                        while (i2 < repeatCount && b(e2, (Rect) null)) {
                            i2++;
                            z = true;
                        }
                        return z;
                    case 23:
                        break;
                    default:
                        return false;
                }
            }
            if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
                return false;
            }
            b();
            return true;
        } else if (keyEvent.hasNoModifiers()) {
            return b(2, (Rect) null);
        } else {
            if (keyEvent.hasModifiers(1)) {
                return b(1, (Rect) null);
            }
            return false;
        }
    }

    public final boolean c(int i2, int i3, Bundle bundle) {
        if (i3 == 1) {
            return h(i2);
        }
        if (i3 == 2) {
            return b(i2);
        }
        if (i3 == 64) {
            return g(i2);
        }
        if (i3 != 128) {
            return a(i2, i3, bundle);
        }
        return a(i2);
    }

    public final boolean b() {
        int i2 = this.o;
        return i2 != Integer.MIN_VALUE && a(i2, 16, (Bundle) null);
    }

    public void b(View view, AccessibilityEvent accessibilityEvent) {
        super.b(view, accessibilityEvent);
        a(accessibilityEvent);
    }

    public final AccessibilityEvent b(int i2, int i3) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i3);
        b.i.k.a.d f2 = f(i2);
        obtain.getText().add(f2.i());
        obtain.setContentDescription(f2.f());
        obtain.setScrollable(f2.t());
        obtain.setPassword(f2.s());
        obtain.setEnabled(f2.o());
        obtain.setChecked(f2.m());
        a(i2, obtain);
        if (!obtain.getText().isEmpty() || obtain.getContentDescription() != null) {
            obtain.setClassName(f2.d());
            f.a(obtain, this.f2913l, i2);
            obtain.setPackageName(this.f2913l.getContext().getPackageName());
            return obtain;
        }
        throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
    }

    public final void a(boolean z, int i2, Rect rect) {
        int i3 = this.o;
        if (i3 != Integer.MIN_VALUE) {
            b(i3);
        }
        if (z) {
            b(i2, rect);
        }
    }

    public final void a(int i2, Rect rect) {
        f(i2).a(rect);
    }

    public static Rect a(View view, int i2, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i2 == 17) {
            rect.set(width, 0, width, height);
        } else if (i2 == 33) {
            rect.set(0, height, width, height);
        } else if (i2 == 66) {
            rect.set(-1, 0, -1, height);
        } else if (i2 == 130) {
            rect.set(0, -1, width, -1);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return rect;
    }

    public boolean b(int i2, int i3, Bundle bundle) {
        if (i2 != -1) {
            return c(i2, i3, bundle);
        }
        return a(i3, bundle);
    }

    public final AccessibilityEvent a(int i2, int i3) {
        if (i2 != -1) {
            return b(i2, i3);
        }
        return c(i3);
    }

    public final boolean b(int i2) {
        if (this.o != i2) {
            return false;
        }
        this.o = Integer.MIN_VALUE;
        a(i2, false);
        c(i2, 8);
        return true;
    }

    public void a(View view, b.i.k.a.d dVar) {
        super.a(view, dVar);
        a(dVar);
    }

    public final boolean a(int i2, Bundle bundle) {
        return z.a(this.f2913l, i2, bundle);
    }

    public final boolean a(Rect rect) {
        boolean z = false;
        if (rect != null && !rect.isEmpty()) {
            if (this.f2913l.getWindowVisibility() != 0) {
                return false;
            }
            ViewParent parent = this.f2913l.getParent();
            while (parent instanceof View) {
                View view = (View) parent;
                if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                    return false;
                }
                parent = view.getParent();
            }
            if (parent != null) {
                z = true;
            }
        }
        return z;
    }

    public final boolean a(int i2) {
        if (this.n != i2) {
            return false;
        }
        this.n = Integer.MIN_VALUE;
        this.f2913l.invalidate();
        c(i2, LogFileManager.MAX_LOG_SIZE);
        return true;
    }
}
