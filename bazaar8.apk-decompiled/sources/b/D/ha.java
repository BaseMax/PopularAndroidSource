package b.D;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import b.D.C0155a;
import b.D.E;

/* compiled from: Visibility */
public abstract class ha extends E {
    public static final String[] K = {"android:visibility:visibility", "android:visibility:parent"};
    public int L = 3;

    /* compiled from: Visibility */
    private static class a extends AnimatorListenerAdapter implements E.c, C0155a.C0016a {

        /* renamed from: a  reason: collision with root package name */
        public final View f1154a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1155b;

        /* renamed from: c  reason: collision with root package name */
        public final ViewGroup f1156c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f1157d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f1158e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f1159f = false;

        public a(View view, int i2, boolean z) {
            this.f1154a = view;
            this.f1155b = i2;
            this.f1156c = (ViewGroup) view.getParent();
            this.f1157d = z;
            a(true);
        }

        public final void a() {
            if (!this.f1159f) {
                ba.a(this.f1154a, this.f1155b);
                ViewGroup viewGroup = this.f1156c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            a(false);
        }

        public void a(E e2) {
        }

        public void b(E e2) {
            a(false);
        }

        public void c(E e2) {
            a();
            e2.b((E.c) this);
        }

        public void d(E e2) {
            a(true);
        }

        public void onAnimationCancel(Animator animator) {
            this.f1159f = true;
        }

        public void onAnimationEnd(Animator animator) {
            a();
        }

        public void onAnimationPause(Animator animator) {
            if (!this.f1159f) {
                ba.a(this.f1154a, this.f1155b);
            }
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationResume(Animator animator) {
            if (!this.f1159f) {
                ba.a(this.f1154a, 0);
            }
        }

        public void onAnimationStart(Animator animator) {
        }

        public final void a(boolean z) {
            if (this.f1157d && this.f1158e != z) {
                ViewGroup viewGroup = this.f1156c;
                if (viewGroup != null) {
                    this.f1158e = z;
                    S.a(viewGroup, z);
                }
            }
        }
    }

    /* compiled from: Visibility */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f1160a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f1161b;

        /* renamed from: c  reason: collision with root package name */
        public int f1162c;

        /* renamed from: d  reason: collision with root package name */
        public int f1163d;

        /* renamed from: e  reason: collision with root package name */
        public ViewGroup f1164e;

        /* renamed from: f  reason: collision with root package name */
        public ViewGroup f1165f;
    }

    public abstract Animator a(ViewGroup viewGroup, View view, M m, M m2);

    public void a(int i2) {
        if ((i2 & -4) == 0) {
            this.L = i2;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    public abstract Animator b(ViewGroup viewGroup, View view, M m, M m2);

    public final b b(M m, M m2) {
        b bVar = new b();
        bVar.f1160a = false;
        bVar.f1161b = false;
        if (m == null || !m.f1108a.containsKey("android:visibility:visibility")) {
            bVar.f1162c = -1;
            bVar.f1164e = null;
        } else {
            bVar.f1162c = ((Integer) m.f1108a.get("android:visibility:visibility")).intValue();
            bVar.f1164e = (ViewGroup) m.f1108a.get("android:visibility:parent");
        }
        if (m2 == null || !m2.f1108a.containsKey("android:visibility:visibility")) {
            bVar.f1163d = -1;
            bVar.f1165f = null;
        } else {
            bVar.f1163d = ((Integer) m2.f1108a.get("android:visibility:visibility")).intValue();
            bVar.f1165f = (ViewGroup) m2.f1108a.get("android:visibility:parent");
        }
        if (m == null || m2 == null) {
            if (m == null && bVar.f1163d == 0) {
                bVar.f1161b = true;
                bVar.f1160a = true;
            } else if (m2 == null && bVar.f1162c == 0) {
                bVar.f1161b = false;
                bVar.f1160a = true;
            }
        } else if (bVar.f1162c == bVar.f1163d && bVar.f1164e == bVar.f1165f) {
            return bVar;
        } else {
            int i2 = bVar.f1162c;
            int i3 = bVar.f1163d;
            if (i2 != i3) {
                if (i2 == 0) {
                    bVar.f1161b = false;
                    bVar.f1160a = true;
                } else if (i3 == 0) {
                    bVar.f1161b = true;
                    bVar.f1160a = true;
                }
            } else if (bVar.f1165f == null) {
                bVar.f1161b = false;
                bVar.f1160a = true;
            } else if (bVar.f1164e == null) {
                bVar.f1161b = true;
                bVar.f1160a = true;
            }
        }
        return bVar;
    }

    public void c(M m) {
        d(m);
    }

    public final void d(M m) {
        m.f1108a.put("android:visibility:visibility", Integer.valueOf(m.f1109b.getVisibility()));
        m.f1108a.put("android:visibility:parent", m.f1109b.getParent());
        int[] iArr = new int[2];
        m.f1109b.getLocationOnScreen(iArr);
        m.f1108a.put("android:visibility:screenLocation", iArr);
    }

    public String[] r() {
        return K;
    }

    public void a(M m) {
        d(m);
    }

    public Animator a(ViewGroup viewGroup, M m, M m2) {
        b b2 = b(m, m2);
        if (!b2.f1160a || (b2.f1164e == null && b2.f1165f == null)) {
            return null;
        }
        if (b2.f1161b) {
            return a(viewGroup, m, b2.f1162c, m2, b2.f1163d);
        }
        return b(viewGroup, m, b2.f1162c, m2, b2.f1163d);
    }

    public Animator a(ViewGroup viewGroup, M m, int i2, M m2, int i3) {
        if ((this.L & 1) != 1 || m2 == null) {
            return null;
        }
        if (m == null) {
            View view = (View) m2.f1109b.getParent();
            if (b(b(view, false), c(view, false)).f1160a) {
                return null;
            }
        }
        return a(viewGroup, m2.f1109b, m, m2);
    }

    public boolean a(M m, M m2) {
        boolean z = false;
        if (m == null && m2 == null) {
            return false;
        }
        if (m != null && m2 != null && m2.f1108a.containsKey("android:visibility:visibility") != m.f1108a.containsKey("android:visibility:visibility")) {
            return false;
        }
        b b2 = b(m, m2);
        if (b2.f1160a && (b2.f1162c == 0 || b2.f1163d == 0)) {
            z = true;
        }
        return z;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:38:0x007d, code lost:
        if (r6.z != false) goto L_0x003a;
     */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0087 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00ce  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00ee A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.animation.Animator b(android.view.ViewGroup r7, b.D.M r8, int r9, b.D.M r10, int r11) {
        /*
            r6 = this;
            int r9 = r6.L
            r0 = 2
            r9 = r9 & r0
            r1 = 0
            if (r9 == r0) goto L_0x0008
            return r1
        L_0x0008:
            if (r8 == 0) goto L_0x000d
            android.view.View r9 = r8.f1109b
            goto L_0x000e
        L_0x000d:
            r9 = r1
        L_0x000e:
            if (r10 == 0) goto L_0x0013
            android.view.View r2 = r10.f1109b
            goto L_0x0014
        L_0x0013:
            r2 = r1
        L_0x0014:
            r3 = 1
            if (r2 == 0) goto L_0x0037
            android.view.ViewParent r4 = r2.getParent()
            if (r4 != 0) goto L_0x001e
            goto L_0x0037
        L_0x001e:
            r4 = 4
            if (r11 != r4) goto L_0x0022
            goto L_0x0024
        L_0x0022:
            if (r9 != r2) goto L_0x0027
        L_0x0024:
            r9 = r1
            goto L_0x0084
        L_0x0027:
            boolean r2 = r6.z
            if (r2 == 0) goto L_0x002c
            goto L_0x0044
        L_0x002c:
            android.view.ViewParent r2 = r9.getParent()
            android.view.View r2 = (android.view.View) r2
            android.view.View r9 = b.D.L.a(r7, r9, r2)
            goto L_0x003a
        L_0x0037:
            if (r2 == 0) goto L_0x003c
            r9 = r2
        L_0x003a:
            r2 = r1
            goto L_0x0084
        L_0x003c:
            if (r9 == 0) goto L_0x0082
            android.view.ViewParent r2 = r9.getParent()
            if (r2 != 0) goto L_0x0045
        L_0x0044:
            goto L_0x003a
        L_0x0045:
            android.view.ViewParent r2 = r9.getParent()
            boolean r2 = r2 instanceof android.view.View
            if (r2 == 0) goto L_0x0082
            android.view.ViewParent r2 = r9.getParent()
            android.view.View r2 = (android.view.View) r2
            b.D.M r4 = r6.c(r2, r3)
            b.D.M r5 = r6.b((android.view.View) r2, (boolean) r3)
            b.D.ha$b r4 = r6.b(r4, r5)
            boolean r4 = r4.f1160a
            if (r4 != 0) goto L_0x0068
            android.view.View r9 = b.D.L.a(r7, r9, r2)
            goto L_0x003a
        L_0x0068:
            android.view.ViewParent r4 = r2.getParent()
            if (r4 != 0) goto L_0x0080
            int r2 = r2.getId()
            r4 = -1
            if (r2 == r4) goto L_0x0080
            android.view.View r2 = r7.findViewById(r2)
            if (r2 == 0) goto L_0x0080
            boolean r2 = r6.z
            if (r2 == 0) goto L_0x0080
            goto L_0x003a
        L_0x0080:
            r9 = r1
            goto L_0x003a
        L_0x0082:
            r9 = r1
            r2 = r9
        L_0x0084:
            r4 = 0
            if (r9 == 0) goto L_0x00cc
            if (r8 == 0) goto L_0x00cc
            java.util.Map<java.lang.String, java.lang.Object> r11 = r8.f1108a
            java.lang.String r1 = "android:visibility:screenLocation"
            java.lang.Object r11 = r11.get(r1)
            int[] r11 = (int[]) r11
            r1 = r11[r4]
            r11 = r11[r3]
            int[] r0 = new int[r0]
            r7.getLocationOnScreen(r0)
            r2 = r0[r4]
            int r1 = r1 - r2
            int r2 = r9.getLeft()
            int r1 = r1 - r2
            r9.offsetLeftAndRight(r1)
            r0 = r0[r3]
            int r11 = r11 - r0
            int r0 = r9.getTop()
            int r11 = r11 - r0
            r9.offsetTopAndBottom(r11)
            b.D.Q r11 = b.D.S.a(r7)
            r11.a(r9)
            android.animation.Animator r7 = r6.b(r7, r9, r8, r10)
            if (r7 != 0) goto L_0x00c3
            r11.b(r9)
            goto L_0x00cb
        L_0x00c3:
            b.D.ga r8 = new b.D.ga
            r8.<init>(r6, r11, r9)
            r7.addListener(r8)
        L_0x00cb:
            return r7
        L_0x00cc:
            if (r2 == 0) goto L_0x00ee
            int r9 = r2.getVisibility()
            b.D.ba.a((android.view.View) r2, (int) r4)
            android.animation.Animator r7 = r6.b(r7, r2, r8, r10)
            if (r7 == 0) goto L_0x00ea
            b.D.ha$a r8 = new b.D.ha$a
            r8.<init>(r2, r11, r3)
            r7.addListener(r8)
            b.D.C0155a.a(r7, r8)
            r6.a((b.D.E.c) r8)
            goto L_0x00ed
        L_0x00ea:
            b.D.ba.a((android.view.View) r2, (int) r9)
        L_0x00ed:
            return r7
        L_0x00ee:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.D.ha.b(android.view.ViewGroup, b.D.M, int, b.D.M, int):android.animation.Animator");
    }
}
