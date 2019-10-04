package c.e.a.c.f;

import android.view.View;
import b.i.e.a;
import b.k.b.g;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;

/* compiled from: BottomSheetBehavior */
class b extends g.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f11275a;

    public b(BottomSheetBehavior bottomSheetBehavior) {
        this.f11275a = bottomSheetBehavior;
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        this.f11275a.a(i3);
    }

    public boolean b(View view, int i2) {
        BottomSheetBehavior bottomSheetBehavior = this.f11275a;
        int i3 = bottomSheetBehavior.f13353l;
        boolean z = true;
        if (i3 == 1 || bottomSheetBehavior.x) {
            return false;
        }
        if (i3 == 3 && bottomSheetBehavior.v == i2) {
            View view2 = (View) bottomSheetBehavior.s.get();
            if (view2 != null && view2.canScrollVertically(-1)) {
                return false;
            }
        }
        WeakReference<V> weakReference = this.f11275a.r;
        if (weakReference == null || weakReference.get() != view) {
            z = false;
        }
        return z;
    }

    public void c(int i2) {
        if (i2 == 1) {
            this.f11275a.d(1);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x00d5  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00e6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.view.View r8, float r9, float r10) {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
            r2 = 4
            r3 = 6
            r4 = 3
            int r5 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r5 >= 0) goto L_0x0028
            com.google.android.material.bottomsheet.BottomSheetBehavior r9 = r7.f11275a
            boolean r9 = r9.f13342a
            if (r9 == 0) goto L_0x0018
            com.google.android.material.bottomsheet.BottomSheetBehavior r9 = r7.f11275a
            int r9 = r9.f13348g
        L_0x0015:
            r2 = 3
            goto L_0x00c7
        L_0x0018:
            int r9 = r8.getTop()
            com.google.android.material.bottomsheet.BottomSheetBehavior r10 = r7.f11275a
            int r10 = r10.f13349h
            if (r9 <= r10) goto L_0x0026
            r9 = r10
        L_0x0023:
            r2 = 6
            goto L_0x00c7
        L_0x0026:
            r9 = 0
            goto L_0x0015
        L_0x0028:
            com.google.android.material.bottomsheet.BottomSheetBehavior r5 = r7.f11275a
            boolean r6 = r5.f13351j
            if (r6 == 0) goto L_0x0051
            boolean r5 = r5.a((android.view.View) r8, (float) r10)
            if (r5 == 0) goto L_0x0051
            int r5 = r8.getTop()
            com.google.android.material.bottomsheet.BottomSheetBehavior r6 = r7.f11275a
            int r6 = r6.f13350i
            if (r5 > r6) goto L_0x004a
            float r5 = java.lang.Math.abs(r9)
            float r6 = java.lang.Math.abs(r10)
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 >= 0) goto L_0x0051
        L_0x004a:
            com.google.android.material.bottomsheet.BottomSheetBehavior r9 = r7.f11275a
            int r9 = r9.q
            r2 = 5
            goto L_0x00c7
        L_0x0051:
            int r1 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r1 == 0) goto L_0x0067
            float r9 = java.lang.Math.abs(r9)
            float r10 = java.lang.Math.abs(r10)
            int r9 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
            if (r9 <= 0) goto L_0x0062
            goto L_0x0067
        L_0x0062:
            com.google.android.material.bottomsheet.BottomSheetBehavior r9 = r7.f11275a
            int r9 = r9.f13350i
            goto L_0x00c7
        L_0x0067:
            int r9 = r8.getTop()
            com.google.android.material.bottomsheet.BottomSheetBehavior r10 = r7.f11275a
            boolean r10 = r10.f13342a
            if (r10 == 0) goto L_0x0094
            com.google.android.material.bottomsheet.BottomSheetBehavior r10 = r7.f11275a
            int r10 = r10.f13348g
            int r10 = r9 - r10
            int r10 = java.lang.Math.abs(r10)
            com.google.android.material.bottomsheet.BottomSheetBehavior r0 = r7.f11275a
            int r0 = r0.f13350i
            int r9 = r9 - r0
            int r9 = java.lang.Math.abs(r9)
            if (r10 >= r9) goto L_0x008e
            com.google.android.material.bottomsheet.BottomSheetBehavior r9 = r7.f11275a
            int r0 = r9.f13348g
            r9 = r0
            goto L_0x0015
        L_0x008e:
            com.google.android.material.bottomsheet.BottomSheetBehavior r9 = r7.f11275a
            int r0 = r9.f13350i
        L_0x0092:
            r9 = r0
            goto L_0x00c7
        L_0x0094:
            com.google.android.material.bottomsheet.BottomSheetBehavior r10 = r7.f11275a
            int r1 = r10.f13349h
            if (r9 >= r1) goto L_0x00aa
            int r10 = r10.f13350i
            int r10 = r9 - r10
            int r10 = java.lang.Math.abs(r10)
            if (r9 >= r10) goto L_0x00a5
            goto L_0x0026
        L_0x00a5:
            com.google.android.material.bottomsheet.BottomSheetBehavior r9 = r7.f11275a
            int r0 = r9.f13349h
            goto L_0x00bf
        L_0x00aa:
            int r10 = r9 - r1
            int r10 = java.lang.Math.abs(r10)
            com.google.android.material.bottomsheet.BottomSheetBehavior r0 = r7.f11275a
            int r0 = r0.f13350i
            int r9 = r9 - r0
            int r9 = java.lang.Math.abs(r9)
            if (r10 >= r9) goto L_0x00c2
            com.google.android.material.bottomsheet.BottomSheetBehavior r9 = r7.f11275a
            int r0 = r9.f13349h
        L_0x00bf:
            r9 = r0
            goto L_0x0023
        L_0x00c2:
            com.google.android.material.bottomsheet.BottomSheetBehavior r9 = r7.f11275a
            int r0 = r9.f13350i
            goto L_0x0092
        L_0x00c7:
            com.google.android.material.bottomsheet.BottomSheetBehavior r10 = r7.f11275a
            b.k.b.g r10 = r10.m
            int r0 = r8.getLeft()
            boolean r9 = r10.d(r0, r9)
            if (r9 == 0) goto L_0x00e6
            com.google.android.material.bottomsheet.BottomSheetBehavior r9 = r7.f11275a
            r10 = 2
            r9.d((int) r10)
            com.google.android.material.bottomsheet.BottomSheetBehavior$b r9 = new com.google.android.material.bottomsheet.BottomSheetBehavior$b
            com.google.android.material.bottomsheet.BottomSheetBehavior r10 = r7.f11275a
            r9.<init>(r8, r2)
            b.i.k.z.a((android.view.View) r8, (java.lang.Runnable) r9)
            goto L_0x00eb
        L_0x00e6:
            com.google.android.material.bottomsheet.BottomSheetBehavior r8 = r7.f11275a
            r8.d((int) r2)
        L_0x00eb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.c.f.b.a(android.view.View, float, float):void");
    }

    public int b(View view, int i2, int i3) {
        int b2 = this.f11275a.b();
        BottomSheetBehavior bottomSheetBehavior = this.f11275a;
        return a.a(i2, b2, bottomSheetBehavior.f13351j ? bottomSheetBehavior.q : bottomSheetBehavior.f13350i);
    }

    public int b(View view) {
        BottomSheetBehavior bottomSheetBehavior = this.f11275a;
        if (bottomSheetBehavior.f13351j) {
            return bottomSheetBehavior.q;
        }
        return bottomSheetBehavior.f13350i;
    }

    public int a(View view, int i2, int i3) {
        return view.getLeft();
    }
}
