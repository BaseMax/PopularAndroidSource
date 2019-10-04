package b.i.k;

import android.view.View;
import android.view.ViewParent;

/* renamed from: b.i.k.l  reason: case insensitive filesystem */
/* compiled from: NestedScrollingChildHelper */
public class C0269l {

    /* renamed from: a  reason: collision with root package name */
    public ViewParent f2817a;

    /* renamed from: b  reason: collision with root package name */
    public ViewParent f2818b;

    /* renamed from: c  reason: collision with root package name */
    public final View f2819c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2820d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f2821e;

    public C0269l(View view) {
        this.f2819c = view;
    }

    public void a(boolean z) {
        if (this.f2820d) {
            z.H(this.f2819c);
        }
        this.f2820d = z;
    }

    public boolean b() {
        return b(0);
    }

    public boolean c() {
        return this.f2820d;
    }

    public void d() {
        d(0);
    }

    public boolean b(int i2) {
        return a(i2) != null;
    }

    public boolean c(int i2) {
        return a(i2, 0);
    }

    public void d(int i2) {
        ViewParent a2 = a(i2);
        if (a2 != null) {
            F.a(a2, this.f2819c, i2);
            a(i2, (ViewParent) null);
        }
    }

    public final boolean b(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        int i7;
        int i8;
        int[] iArr3;
        int[] iArr4 = iArr;
        if (c()) {
            ViewParent a2 = a(i6);
            if (a2 == null) {
                return false;
            }
            if (i2 != 0 || i3 != 0 || i4 != 0 || i5 != 0) {
                if (iArr4 != null) {
                    this.f2819c.getLocationInWindow(iArr4);
                    i8 = iArr4[0];
                    i7 = iArr4[1];
                } else {
                    i8 = 0;
                    i7 = 0;
                }
                if (iArr2 == null) {
                    int[] a3 = a();
                    a3[0] = 0;
                    a3[1] = 0;
                    iArr3 = a3;
                } else {
                    iArr3 = iArr2;
                }
                F.a(a2, this.f2819c, i2, i3, i4, i5, i6, iArr3);
                if (iArr4 != null) {
                    this.f2819c.getLocationInWindow(iArr4);
                    iArr4[0] = iArr4[0] - i8;
                    iArr4[1] = iArr4[1] - i7;
                }
                return true;
            } else if (iArr4 != null) {
                iArr4[0] = 0;
                iArr4[1] = 0;
            }
        }
        return false;
    }

    public boolean a(int i2, int i3) {
        if (b(i3)) {
            return true;
        }
        if (c()) {
            View view = this.f2819c;
            for (ViewParent parent = this.f2819c.getParent(); parent != null; parent = parent.getParent()) {
                if (F.b(parent, view, this.f2819c, i2, i3)) {
                    a(i3, parent);
                    F.a(parent, view, this.f2819c, i2, i3);
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public boolean a(int i2, int i3, int i4, int i5, int[] iArr) {
        return b(i2, i3, i4, i5, iArr, 0, null);
    }

    public boolean a(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return b(i2, i3, i4, i5, iArr, i6, null);
    }

    public void a(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        b(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    public boolean a(int i2, int i3, int[] iArr, int[] iArr2) {
        return a(i2, i3, iArr, iArr2, 0);
    }

    public boolean a(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        int i5;
        int i6;
        if (c()) {
            ViewParent a2 = a(i4);
            if (a2 == null) {
                return false;
            }
            boolean z = true;
            if (i2 != 0 || i3 != 0) {
                if (iArr2 != null) {
                    this.f2819c.getLocationInWindow(iArr2);
                    i6 = iArr2[0];
                    i5 = iArr2[1];
                } else {
                    i6 = 0;
                    i5 = 0;
                }
                if (iArr == null) {
                    iArr = a();
                }
                iArr[0] = 0;
                iArr[1] = 0;
                F.a(a2, this.f2819c, i2, i3, iArr, i4);
                if (iArr2 != null) {
                    this.f2819c.getLocationInWindow(iArr2);
                    iArr2[0] = iArr2[0] - i6;
                    iArr2[1] = iArr2[1] - i5;
                }
                if (iArr[0] == 0 && iArr[1] == 0) {
                    z = false;
                }
                return z;
            } else if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
        }
        return false;
    }

    public boolean a(float f2, float f3, boolean z) {
        if (c()) {
            ViewParent a2 = a(0);
            if (a2 != null) {
                return F.a(a2, this.f2819c, f2, f3, z);
            }
        }
        return false;
    }

    public boolean a(float f2, float f3) {
        if (c()) {
            ViewParent a2 = a(0);
            if (a2 != null) {
                return F.a(a2, this.f2819c, f2, f3);
            }
        }
        return false;
    }

    public final ViewParent a(int i2) {
        if (i2 == 0) {
            return this.f2817a;
        }
        if (i2 != 1) {
            return null;
        }
        return this.f2818b;
    }

    public final void a(int i2, ViewParent viewParent) {
        if (i2 == 0) {
            this.f2817a = viewParent;
        } else if (i2 == 1) {
            this.f2818b = viewParent;
        }
    }

    public final int[] a() {
        if (this.f2821e == null) {
            this.f2821e = new int[2];
        }
        return this.f2821e;
    }
}
