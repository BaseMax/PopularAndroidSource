package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.i.k.a.d;
import java.util.Arrays;

public class GridLayoutManager extends LinearLayoutManager {
    public boolean H = false;
    public int I = -1;
    public int[] J;
    public View[] K;
    public final SparseIntArray L = new SparseIntArray();
    public final SparseIntArray M = new SparseIntArray();
    public c N = new a();
    public final Rect O = new Rect();

    public static final class a extends c {
        public int b(int i2) {
            return 1;
        }

        public int c(int i2, int i3) {
            return i2 % i3;
        }
    }

    public static class b extends RecyclerView.j {

        /* renamed from: e  reason: collision with root package name */
        public int f766e = -1;

        /* renamed from: f  reason: collision with root package name */
        public int f767f = 0;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public int e() {
            return this.f766e;
        }

        public int f() {
            return this.f767f;
        }

        public b(int i2, int i3) {
            super(i2, i3);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public static abstract class c {

        /* renamed from: a  reason: collision with root package name */
        public final SparseIntArray f768a = new SparseIntArray();

        /* renamed from: b  reason: collision with root package name */
        public boolean f769b = false;

        public void a() {
            this.f768a.clear();
        }

        public abstract int b(int i2);

        public int b(int i2, int i3) {
            int b2 = b(i2);
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                int b3 = b(i6);
                i4 += b3;
                if (i4 == i3) {
                    i5++;
                    i4 = 0;
                } else if (i4 > i3) {
                    i5++;
                    i4 = b3;
                }
            }
            return i4 + b2 > i3 ? i5 + 1 : i5;
        }

        /* JADX WARNING: Removed duplicated region for block: B:12:0x002a  */
        /* JADX WARNING: Removed duplicated region for block: B:20:0x003c A[RETURN] */
        /* JADX WARNING: Removed duplicated region for block: B:21:0x003d A[RETURN] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int c(int r6, int r7) {
            /*
                r5 = this;
                int r0 = r5.b(r6)
                r1 = 0
                if (r0 != r7) goto L_0x0008
                return r1
            L_0x0008:
                boolean r2 = r5.f769b
                if (r2 == 0) goto L_0x0026
                android.util.SparseIntArray r2 = r5.f768a
                int r2 = r2.size()
                if (r2 <= 0) goto L_0x0026
                int r2 = r5.a(r6)
                if (r2 < 0) goto L_0x0026
                android.util.SparseIntArray r3 = r5.f768a
                int r3 = r3.get(r2)
                int r4 = r5.b(r2)
                int r3 = r3 + r4
                goto L_0x0036
            L_0x0026:
                r2 = 0
                r3 = 0
            L_0x0028:
                if (r2 >= r6) goto L_0x0039
                int r4 = r5.b(r2)
                int r3 = r3 + r4
                if (r3 != r7) goto L_0x0033
                r3 = 0
                goto L_0x0036
            L_0x0033:
                if (r3 <= r7) goto L_0x0036
                r3 = r4
            L_0x0036:
                int r2 = r2 + 1
                goto L_0x0028
            L_0x0039:
                int r0 = r0 + r3
                if (r0 > r7) goto L_0x003d
                return r3
            L_0x003d:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.c.c(int, int):int");
        }

        public int a(int i2, int i3) {
            if (!this.f769b) {
                return c(i2, i3);
            }
            int i4 = this.f768a.get(i2, -1);
            if (i4 != -1) {
                return i4;
            }
            int c2 = c(i2, i3);
            this.f768a.put(i2, c2);
            return c2;
        }

        public int a(int i2) {
            int size = this.f768a.size() - 1;
            int i3 = 0;
            while (i3 <= size) {
                int i4 = (i3 + size) >>> 1;
                if (this.f768a.keyAt(i4) < i2) {
                    i3 = i4 + 1;
                } else {
                    size = i4 - 1;
                }
            }
            int i5 = i3 - 1;
            if (i5 < 0 || i5 >= this.f768a.size()) {
                return -1;
            }
            return this.f768a.keyAt(i5);
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        n(RecyclerView.i.a(context, attributeSet, i2, i3).f833b);
    }

    public boolean D() {
        return this.D == null && !this.H;
    }

    public final void P() {
        int e2 = e();
        for (int i2 = 0; i2 < e2; i2++) {
            b bVar = (b) d(i2).getLayoutParams();
            int a2 = bVar.a();
            this.L.put(a2, bVar.f());
            this.M.put(a2, bVar.e());
        }
    }

    public final void Q() {
        this.L.clear();
        this.M.clear();
    }

    public final void R() {
        View[] viewArr = this.K;
        if (viewArr == null || viewArr.length != this.I) {
            this.K = new View[this.I];
        }
    }

    public int S() {
        return this.I;
    }

    public final void T() {
        int i2;
        int i3;
        if (L() == 1) {
            i3 = r() - p();
            i2 = o();
        } else {
            i3 = h() - n();
            i2 = q();
        }
        m(i3 - i2);
    }

    public int a(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.s == 1) {
            return this.I;
        }
        if (tVar.a() < 1) {
            return 0;
        }
        return a(pVar, tVar, tVar.a() - 1) + 1;
    }

    public int b(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.s == 0) {
            return this.I;
        }
        if (tVar.a() < 1) {
            return 0;
        }
        return a(pVar, tVar, tVar.a() - 1) + 1;
    }

    public void c(boolean z) {
        if (!z) {
            super.c(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    public void d(RecyclerView recyclerView) {
        this.N.a();
    }

    public void e(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (tVar.d()) {
            P();
        }
        super.e(pVar, tVar);
        Q();
    }

    public void g(RecyclerView.t tVar) {
        super.g(tVar);
        this.H = false;
    }

    public int i(int i2, int i3) {
        if (this.s != 1 || !M()) {
            int[] iArr = this.J;
            return iArr[i3 + i2] - iArr[i2];
        }
        int[] iArr2 = this.J;
        int i4 = this.I;
        return iArr2[i4 - i2] - iArr2[(i4 - i2) - i3];
    }

    public final void m(int i2) {
        this.J = a(this.J, this.I, i2);
    }

    public void n(int i2) {
        if (i2 != this.I) {
            this.H = true;
            if (i2 >= 1) {
                this.I = i2;
                this.N.a();
                z();
                return;
            }
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i2);
        }
    }

    public void c(RecyclerView recyclerView, int i2, int i3) {
        this.N.a();
    }

    public RecyclerView.j c() {
        if (this.s == 0) {
            return new b(-2, -1);
        }
        return new b(-1, -2);
    }

    public void a(RecyclerView.p pVar, RecyclerView.t tVar, View view, d dVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof b)) {
            super.a(view, dVar);
            return;
        }
        b bVar = (b) layoutParams;
        int a2 = a(pVar, tVar, bVar.a());
        if (this.s == 0) {
            dVar.b((Object) d.c.a(bVar.e(), bVar.f(), a2, 1, this.I > 1 && bVar.f() == this.I, false));
        } else {
            dVar.b((Object) d.c.a(a2, 1, bVar.e(), bVar.f(), this.I > 1 && bVar.f() == this.I, false));
        }
    }

    public void b(RecyclerView recyclerView, int i2, int i3) {
        this.N.a();
    }

    public int b(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        T();
        R();
        return super.b(i2, pVar, tVar);
    }

    public final int c(RecyclerView.p pVar, RecyclerView.t tVar, int i2) {
        if (!tVar.d()) {
            return this.N.b(i2);
        }
        int i3 = this.L.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        int a2 = pVar.a(i2);
        if (a2 != -1) {
            return this.N.b(a2);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
        return 1;
    }

    public final void b(RecyclerView.p pVar, RecyclerView.t tVar, LinearLayoutManager.a aVar, int i2) {
        boolean z = i2 == 1;
        int b2 = b(pVar, tVar, aVar.f774b);
        if (z) {
            while (b2 > 0) {
                int i3 = aVar.f774b;
                if (i3 > 0) {
                    aVar.f774b = i3 - 1;
                    b2 = b(pVar, tVar, aVar.f774b);
                } else {
                    return;
                }
            }
            return;
        }
        int a2 = tVar.a() - 1;
        int i4 = aVar.f774b;
        while (i4 < a2) {
            int i5 = i4 + 1;
            int b3 = b(pVar, tVar, i5);
            if (b3 <= b2) {
                break;
            }
            i4 = i5;
            b2 = b3;
        }
        aVar.f774b = i4;
    }

    public GridLayoutManager(Context context, int i2) {
        super(context);
        n(i2);
    }

    public void a(RecyclerView recyclerView, int i2, int i3, Object obj) {
        this.N.a();
    }

    public final int b(RecyclerView.p pVar, RecyclerView.t tVar, int i2) {
        if (!tVar.d()) {
            return this.N.a(i2, this.I);
        }
        int i3 = this.M.get(i2, -1);
        if (i3 != -1) {
            return i3;
        }
        int a2 = pVar.a(i2);
        if (a2 != -1) {
            return this.N.a(a2, this.I);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i2);
        return 0;
    }

    public void a(RecyclerView recyclerView, int i2, int i3, int i4) {
        this.N.a();
    }

    public RecyclerView.j a(Context context, AttributeSet attributeSet) {
        return new b(context, attributeSet);
    }

    public RecyclerView.j a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new b((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new b(layoutParams);
    }

    public boolean a(RecyclerView.j jVar) {
        return jVar instanceof b;
    }

    public final void b(View view, int i2, boolean z) {
        int i3;
        int i4;
        b bVar = (b) view.getLayoutParams();
        Rect rect = bVar.f837b;
        int i5 = rect.top + rect.bottom + bVar.topMargin + bVar.bottomMargin;
        int i6 = rect.left + rect.right + bVar.leftMargin + bVar.rightMargin;
        int i7 = i(bVar.f766e, bVar.f767f);
        if (this.s == 1) {
            i3 = RecyclerView.i.a(i7, i2, i6, bVar.width, false);
            i4 = RecyclerView.i.a(this.u.g(), i(), i5, bVar.height, true);
        } else {
            int a2 = RecyclerView.i.a(i7, i2, i5, bVar.height, false);
            int a3 = RecyclerView.i.a(this.u.g(), s(), i6, bVar.width, true);
            i4 = a2;
            i3 = a3;
        }
        a(view, i3, i4, z);
    }

    public void a(c cVar) {
        this.N = cVar;
    }

    public void a(Rect rect, int i2, int i3) {
        int i4;
        int i5;
        if (this.J == null) {
            super.a(rect, i2, i3);
        }
        int o = o() + p();
        int q = q() + n();
        if (this.s == 1) {
            i5 = RecyclerView.i.a(i3, rect.height() + q, l());
            int[] iArr = this.J;
            i4 = RecyclerView.i.a(i2, iArr[iArr.length - 1] + o, m());
        } else {
            i4 = RecyclerView.i.a(i2, rect.width() + o, m());
            int[] iArr2 = this.J;
            i5 = RecyclerView.i.a(i3, iArr2[iArr2.length - 1] + q, l());
        }
        c(i4, i5);
    }

    public static int[] a(int[] iArr, int i2, int i3) {
        int i4;
        if (!(iArr != null && iArr.length == i2 + 1 && iArr[iArr.length - 1] == i3)) {
            iArr = new int[(i2 + 1)];
        }
        int i5 = 0;
        iArr[0] = 0;
        int i6 = i3 / i2;
        int i7 = i3 % i2;
        int i8 = 0;
        for (int i9 = 1; i9 <= i2; i9++) {
            i5 += i7;
            if (i5 <= 0 || i2 - i5 >= i7) {
                i4 = i6;
            } else {
                i4 = i6 + 1;
                i5 -= i2;
            }
            i8 += i4;
            iArr[i9] = i8;
        }
        return iArr;
    }

    public void a(RecyclerView.p pVar, RecyclerView.t tVar, LinearLayoutManager.a aVar, int i2) {
        super.a(pVar, tVar, aVar, i2);
        T();
        if (tVar.a() > 0 && !tVar.d()) {
            b(pVar, tVar, aVar, i2);
        }
        R();
    }

    public int a(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        T();
        R();
        return super.a(i2, pVar, tVar);
    }

    public View a(RecyclerView.p pVar, RecyclerView.t tVar, int i2, int i3, int i4) {
        F();
        int f2 = this.u.f();
        int b2 = this.u.b();
        int i5 = i3 > i2 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i2 != i3) {
            View d2 = d(i2);
            int l2 = l(d2);
            if (l2 >= 0 && l2 < i4 && b(pVar, tVar, l2) == 0) {
                if (((RecyclerView.j) d2.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = d2;
                    }
                } else if (this.u.d(d2) < b2 && this.u.a(d2) >= f2) {
                    return d2;
                } else {
                    if (view == null) {
                        view = d2;
                    }
                }
            }
            i2 += i5;
        }
        if (view == null) {
            view = view2;
        }
        return view;
    }

    public final int a(RecyclerView.p pVar, RecyclerView.t tVar, int i2) {
        if (!tVar.d()) {
            return this.N.b(i2, this.I);
        }
        int a2 = pVar.a(i2);
        if (a2 != -1) {
            return this.N.b(a2, this.I);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i2);
        return 0;
    }

    public void a(RecyclerView.t tVar, LinearLayoutManager.c cVar, RecyclerView.i.a aVar) {
        int i2 = this.I;
        for (int i3 = 0; i3 < this.I && cVar.a(tVar) && i2 > 0; i3++) {
            int i4 = cVar.f785d;
            aVar.a(i4, Math.max(0, cVar.f788g));
            i2 -= this.N.b(i4);
            cVar.f785d += cVar.f786e;
        }
    }

    public void a(RecyclerView.p pVar, RecyclerView.t tVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        RecyclerView.p pVar2 = pVar;
        RecyclerView.t tVar2 = tVar;
        LinearLayoutManager.c cVar2 = cVar;
        LinearLayoutManager.b bVar2 = bVar;
        int e2 = this.u.e();
        boolean z2 = e2 != 1073741824;
        int i10 = e() > 0 ? this.J[this.I] : 0;
        if (z2) {
            T();
        }
        boolean z3 = cVar2.f786e == 1;
        int i11 = this.I;
        if (!z3) {
            i11 = b(pVar2, tVar2, cVar2.f785d) + c(pVar2, tVar2, cVar2.f785d);
        }
        int i12 = 0;
        int i13 = 0;
        while (i13 < this.I && cVar2.a(tVar2) && i11 > 0) {
            int c2 = c(pVar2, tVar2, cVar2.f785d);
            if (c2 <= this.I) {
                i11 -= c2;
                if (i11 < 0) {
                    break;
                }
                View a2 = cVar2.a(pVar2);
                if (a2 == null) {
                    break;
                }
                i12 += c2;
                this.K[i13] = a2;
                i13++;
            } else {
                throw new IllegalArgumentException("Item at position " + r3 + " requires " + c2 + " spans but GridLayoutManager has only " + this.I + " spans.");
            }
        }
        if (i13 == 0) {
            bVar2.f779b = true;
            return;
        }
        float f2 = 0.0f;
        int i14 = i13;
        a(pVar, tVar, i13, i12, z3);
        int i15 = 0;
        for (int i16 = 0; i16 < i14; i16++) {
            View view = this.K[i16];
            if (cVar2.f792k != null) {
                z = false;
                if (z3) {
                    a(view);
                } else {
                    a(view, 0);
                }
            } else if (z3) {
                b(view);
                z = false;
            } else {
                z = false;
                b(view, 0);
            }
            a(view, this.O);
            b(view, e2, z);
            int b2 = this.u.b(view);
            if (b2 > i15) {
                i15 = b2;
            }
            float c3 = (((float) this.u.c(view)) * 1.0f) / ((float) ((b) view.getLayoutParams()).f767f);
            if (c3 > f2) {
                f2 = c3;
            }
        }
        if (z2) {
            a(f2, i10);
            i15 = 0;
            for (int i17 = 0; i17 < i14; i17++) {
                View view2 = this.K[i17];
                b(view2, 1073741824, true);
                int b3 = this.u.b(view2);
                if (b3 > i15) {
                    i15 = b3;
                }
            }
        }
        for (int i18 = 0; i18 < i14; i18++) {
            View view3 = this.K[i18];
            if (this.u.b(view3) != i15) {
                b bVar3 = (b) view3.getLayoutParams();
                Rect rect = bVar3.f837b;
                int i19 = rect.top + rect.bottom + bVar3.topMargin + bVar3.bottomMargin;
                int i20 = rect.left + rect.right + bVar3.leftMargin + bVar3.rightMargin;
                int i21 = i(bVar3.f766e, bVar3.f767f);
                if (this.s == 1) {
                    i9 = RecyclerView.i.a(i21, 1073741824, i20, bVar3.width, false);
                    i8 = View.MeasureSpec.makeMeasureSpec(i15 - i19, 1073741824);
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i15 - i20, 1073741824);
                    i8 = RecyclerView.i.a(i21, 1073741824, i19, bVar3.height, false);
                    i9 = makeMeasureSpec;
                }
                a(view3, i9, i8, true);
            }
        }
        int i22 = 0;
        bVar2.f778a = i15;
        if (this.s == 1) {
            if (cVar2.f787f == -1) {
                int i23 = cVar2.f783b;
                i2 = i23;
                i3 = i23 - i15;
            } else {
                int i24 = cVar2.f783b;
                i3 = i24;
                i2 = i15 + i24;
            }
            i5 = 0;
            i4 = 0;
        } else if (cVar2.f787f == -1) {
            int i25 = cVar2.f783b;
            i3 = 0;
            i2 = 0;
            int i26 = i25 - i15;
            i4 = i25;
            i5 = i26;
        } else {
            i5 = cVar2.f783b;
            i4 = i15 + i5;
            i3 = 0;
            i2 = 0;
        }
        while (i22 < i14) {
            View view4 = this.K[i22];
            b bVar4 = (b) view4.getLayoutParams();
            if (this.s != 1) {
                i3 = q() + this.J[bVar4.f766e];
                i2 = this.u.c(view4) + i3;
            } else if (M()) {
                int o = o() + this.J[this.I - bVar4.f766e];
                i6 = o;
                i7 = o - this.u.c(view4);
                int i27 = i3;
                int i28 = i2;
                a(view4, i7, i27, i6, i28);
                if (!bVar4.c() || bVar4.b()) {
                    bVar2.f780c = true;
                }
                bVar2.f781d |= view4.hasFocusable();
                i22++;
                i5 = i7;
                i3 = i27;
                i4 = i6;
                i2 = i28;
            } else {
                i5 = o() + this.J[bVar4.f766e];
                i4 = this.u.c(view4) + i5;
            }
            i7 = i5;
            i6 = i4;
            int i272 = i3;
            int i282 = i2;
            a(view4, i7, i272, i6, i282);
            if (!bVar4.c()) {
            }
            bVar2.f780c = true;
            bVar2.f781d |= view4.hasFocusable();
            i22++;
            i5 = i7;
            i3 = i272;
            i4 = i6;
            i2 = i282;
        }
        Arrays.fill(this.K, null);
    }

    public final void a(float f2, int i2) {
        m(Math.max(Math.round(f2 * ((float) this.I)), i2));
    }

    public final void a(View view, int i2, int i3, boolean z) {
        boolean z2;
        RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
        if (z) {
            z2 = b(view, i2, i3, jVar);
        } else {
            z2 = a(view, i2, i3, jVar);
        }
        if (z2) {
            view.measure(i2, i3);
        }
    }

    public final void a(RecyclerView.p pVar, RecyclerView.t tVar, int i2, int i3, boolean z) {
        int i4;
        int i5;
        int i6 = 0;
        int i7 = -1;
        if (z) {
            i7 = i2;
            i5 = 0;
            i4 = 1;
        } else {
            i5 = i2 - 1;
            i4 = -1;
        }
        while (i5 != i7) {
            View view = this.K[i5];
            b bVar = (b) view.getLayoutParams();
            bVar.f767f = c(pVar, tVar, l(view));
            bVar.f766e = i6;
            i6 += bVar.f767f;
            i5 += i4;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00d7, code lost:
        if (r13 == (r2 > r8)) goto L_0x00cd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x00f7, code lost:
        if (r13 == r11) goto L_0x00b7;
     */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0105  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.view.View a(android.view.View r24, int r25, androidx.recyclerview.widget.RecyclerView.p r26, androidx.recyclerview.widget.RecyclerView.t r27) {
        /*
            r23 = this;
            r0 = r23
            r1 = r26
            r2 = r27
            android.view.View r3 = r23.c((android.view.View) r24)
            r4 = 0
            if (r3 != 0) goto L_0x000e
            return r4
        L_0x000e:
            android.view.ViewGroup$LayoutParams r5 = r3.getLayoutParams()
            androidx.recyclerview.widget.GridLayoutManager$b r5 = (androidx.recyclerview.widget.GridLayoutManager.b) r5
            int r6 = r5.f766e
            int r5 = r5.f767f
            int r5 = r5 + r6
            android.view.View r7 = super.a((android.view.View) r24, (int) r25, (androidx.recyclerview.widget.RecyclerView.p) r26, (androidx.recyclerview.widget.RecyclerView.t) r27)
            if (r7 != 0) goto L_0x0020
            return r4
        L_0x0020:
            r7 = r25
            int r7 = r0.j((int) r7)
            r9 = 1
            if (r7 != r9) goto L_0x002b
            r7 = 1
            goto L_0x002c
        L_0x002b:
            r7 = 0
        L_0x002c:
            boolean r10 = r0.x
            if (r7 == r10) goto L_0x0032
            r7 = 1
            goto L_0x0033
        L_0x0032:
            r7 = 0
        L_0x0033:
            r10 = -1
            if (r7 == 0) goto L_0x003e
            int r7 = r23.e()
            int r7 = r7 - r9
            r11 = -1
            r12 = -1
            goto L_0x0045
        L_0x003e:
            int r7 = r23.e()
            r11 = r7
            r7 = 0
            r12 = 1
        L_0x0045:
            int r13 = r0.s
            if (r13 != r9) goto L_0x0051
            boolean r13 = r23.M()
            if (r13 == 0) goto L_0x0051
            r13 = 1
            goto L_0x0052
        L_0x0051:
            r13 = 0
        L_0x0052:
            int r14 = r0.a((androidx.recyclerview.widget.RecyclerView.p) r1, (androidx.recyclerview.widget.RecyclerView.t) r2, (int) r7)
            r10 = r4
            r8 = -1
            r15 = 0
            r16 = 0
            r17 = -1
        L_0x005d:
            if (r7 == r11) goto L_0x0147
            int r9 = r0.a((androidx.recyclerview.widget.RecyclerView.p) r1, (androidx.recyclerview.widget.RecyclerView.t) r2, (int) r7)
            android.view.View r1 = r0.d((int) r7)
            if (r1 != r3) goto L_0x006b
            goto L_0x0147
        L_0x006b:
            boolean r18 = r1.hasFocusable()
            if (r18 == 0) goto L_0x0085
            if (r9 == r14) goto L_0x0085
            if (r4 == 0) goto L_0x0077
            goto L_0x0147
        L_0x0077:
            r18 = r3
            r19 = r8
            r21 = r10
            r20 = r11
            r8 = r16
            r10 = r17
            goto L_0x0133
        L_0x0085:
            android.view.ViewGroup$LayoutParams r9 = r1.getLayoutParams()
            androidx.recyclerview.widget.GridLayoutManager$b r9 = (androidx.recyclerview.widget.GridLayoutManager.b) r9
            int r2 = r9.f766e
            r18 = r3
            int r3 = r9.f767f
            int r3 = r3 + r2
            boolean r19 = r1.hasFocusable()
            if (r19 == 0) goto L_0x009d
            if (r2 != r6) goto L_0x009d
            if (r3 != r5) goto L_0x009d
            return r1
        L_0x009d:
            boolean r19 = r1.hasFocusable()
            if (r19 == 0) goto L_0x00a5
            if (r4 == 0) goto L_0x00ad
        L_0x00a5:
            boolean r19 = r1.hasFocusable()
            if (r19 != 0) goto L_0x00b9
            if (r10 != 0) goto L_0x00b9
        L_0x00ad:
            r19 = r8
            r21 = r10
        L_0x00b1:
            r20 = r11
            r8 = r16
            r10 = r17
        L_0x00b7:
            r11 = 1
            goto L_0x0103
        L_0x00b9:
            int r19 = java.lang.Math.max(r2, r6)
            int r20 = java.lang.Math.min(r3, r5)
            r21 = r10
            int r10 = r20 - r19
            boolean r19 = r1.hasFocusable()
            if (r19 == 0) goto L_0x00da
            if (r10 <= r15) goto L_0x00d0
        L_0x00cd:
            r19 = r8
            goto L_0x00b1
        L_0x00d0:
            if (r10 != r15) goto L_0x00fa
            if (r2 <= r8) goto L_0x00d6
            r10 = 1
            goto L_0x00d7
        L_0x00d6:
            r10 = 0
        L_0x00d7:
            if (r13 != r10) goto L_0x00fa
            goto L_0x00cd
        L_0x00da:
            if (r4 != 0) goto L_0x00fa
            r19 = r8
            r20 = r11
            r8 = 0
            r11 = 1
            boolean r22 = r0.a((android.view.View) r1, (boolean) r8, (boolean) r11)
            if (r22 == 0) goto L_0x00fe
            r8 = r16
            if (r10 <= r8) goto L_0x00ef
            r10 = r17
            goto L_0x0103
        L_0x00ef:
            if (r10 != r8) goto L_0x0100
            r10 = r17
            if (r2 <= r10) goto L_0x00f6
            goto L_0x00f7
        L_0x00f6:
            r11 = 0
        L_0x00f7:
            if (r13 != r11) goto L_0x0102
            goto L_0x00b7
        L_0x00fa:
            r19 = r8
            r20 = r11
        L_0x00fe:
            r8 = r16
        L_0x0100:
            r10 = r17
        L_0x0102:
            r11 = 0
        L_0x0103:
            if (r11 == 0) goto L_0x0133
            boolean r11 = r1.hasFocusable()
            if (r11 == 0) goto L_0x0120
            int r4 = r9.f766e
            int r3 = java.lang.Math.min(r3, r5)
            int r2 = java.lang.Math.max(r2, r6)
            int r3 = r3 - r2
            r15 = r3
            r16 = r8
            r17 = r10
            r10 = r21
            r8 = r4
            r4 = r1
            goto L_0x013b
        L_0x0120:
            int r8 = r9.f766e
            int r3 = java.lang.Math.min(r3, r5)
            int r2 = java.lang.Math.max(r2, r6)
            int r3 = r3 - r2
            r10 = r1
            r16 = r3
            r17 = r8
            r8 = r19
            goto L_0x013b
        L_0x0133:
            r16 = r8
            r17 = r10
            r8 = r19
            r10 = r21
        L_0x013b:
            int r7 = r7 + r12
            r1 = r26
            r2 = r27
            r3 = r18
            r11 = r20
            r9 = 1
            goto L_0x005d
        L_0x0147:
            r21 = r10
            if (r4 == 0) goto L_0x014c
            goto L_0x014e
        L_0x014c:
            r4 = r21
        L_0x014e:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.RecyclerView$t):android.view.View");
    }
}
