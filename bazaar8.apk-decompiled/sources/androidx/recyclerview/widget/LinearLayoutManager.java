package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import b.y.a.C0351v;
import b.y.a.D;
import b.y.a.O;
import b.y.a.y;
import java.util.List;

public class LinearLayoutManager extends RecyclerView.i implements C0351v, RecyclerView.s.b {
    public int A;
    public int B;
    public boolean C;
    public SavedState D;
    public final a E;
    public final b F;
    public int G;
    public int s;
    public c t;
    public D u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public boolean z;

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new x();

        /* renamed from: a  reason: collision with root package name */
        public int f770a;

        /* renamed from: b  reason: collision with root package name */
        public int f771b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f772c;

        public SavedState() {
        }

        public boolean a() {
            return this.f770a >= 0;
        }

        public void b() {
            this.f770a = -1;
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f770a);
            parcel.writeInt(this.f771b);
            parcel.writeInt(this.f772c ? 1 : 0);
        }

        public SavedState(Parcel parcel) {
            this.f770a = parcel.readInt();
            this.f771b = parcel.readInt();
            this.f772c = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(SavedState savedState) {
            this.f770a = savedState.f770a;
            this.f771b = savedState.f771b;
            this.f772c = savedState.f772c;
        }
    }

    static class a {

        /* renamed from: a  reason: collision with root package name */
        public D f773a;

        /* renamed from: b  reason: collision with root package name */
        public int f774b;

        /* renamed from: c  reason: collision with root package name */
        public int f775c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f776d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f777e;

        public a() {
            b();
        }

        public void a() {
            int i2;
            if (this.f776d) {
                i2 = this.f773a.b();
            } else {
                i2 = this.f773a.f();
            }
            this.f775c = i2;
        }

        public void b() {
            this.f774b = -1;
            this.f775c = Integer.MIN_VALUE;
            this.f776d = false;
            this.f777e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f774b + ", mCoordinate=" + this.f775c + ", mLayoutFromEnd=" + this.f776d + ", mValid=" + this.f777e + '}';
        }

        public boolean a(View view, RecyclerView.t tVar) {
            RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
            return !jVar.c() && jVar.a() >= 0 && jVar.a() < tVar.a();
        }

        public void b(View view, int i2) {
            int h2 = this.f773a.h();
            if (h2 >= 0) {
                a(view, i2);
                return;
            }
            this.f774b = i2;
            if (this.f776d) {
                int b2 = (this.f773a.b() - h2) - this.f773a.a(view);
                this.f775c = this.f773a.b() - b2;
                if (b2 > 0) {
                    int b3 = this.f775c - this.f773a.b(view);
                    int f2 = this.f773a.f();
                    int min = b3 - (f2 + Math.min(this.f773a.d(view) - f2, 0));
                    if (min < 0) {
                        this.f775c += Math.min(b2, -min);
                    }
                }
            } else {
                int d2 = this.f773a.d(view);
                int f3 = d2 - this.f773a.f();
                this.f775c = d2;
                if (f3 > 0) {
                    int b4 = (this.f773a.b() - Math.min(0, (this.f773a.b() - h2) - this.f773a.a(view))) - (d2 + this.f773a.b(view));
                    if (b4 < 0) {
                        this.f775c -= Math.min(f3, -b4);
                    }
                }
            }
        }

        public void a(View view, int i2) {
            if (this.f776d) {
                this.f775c = this.f773a.a(view) + this.f773a.h();
            } else {
                this.f775c = this.f773a.d(view);
            }
            this.f774b = i2;
        }
    }

    protected static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f778a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f779b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f780c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f781d;

        public void a() {
            this.f778a = 0;
            this.f779b = false;
            this.f780c = false;
            this.f781d = false;
        }
    }

    static class c {

        /* renamed from: a  reason: collision with root package name */
        public boolean f782a = true;

        /* renamed from: b  reason: collision with root package name */
        public int f783b;

        /* renamed from: c  reason: collision with root package name */
        public int f784c;

        /* renamed from: d  reason: collision with root package name */
        public int f785d;

        /* renamed from: e  reason: collision with root package name */
        public int f786e;

        /* renamed from: f  reason: collision with root package name */
        public int f787f;

        /* renamed from: g  reason: collision with root package name */
        public int f788g;

        /* renamed from: h  reason: collision with root package name */
        public int f789h = 0;

        /* renamed from: i  reason: collision with root package name */
        public boolean f790i = false;

        /* renamed from: j  reason: collision with root package name */
        public int f791j;

        /* renamed from: k  reason: collision with root package name */
        public List<RecyclerView.w> f792k = null;

        /* renamed from: l  reason: collision with root package name */
        public boolean f793l;

        public boolean a(RecyclerView.t tVar) {
            int i2 = this.f785d;
            return i2 >= 0 && i2 < tVar.a();
        }

        public final View b() {
            int size = this.f792k.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = this.f792k.get(i2).f891b;
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                if (!jVar.c() && this.f785d == jVar.a()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }

        public View a(RecyclerView.p pVar) {
            if (this.f792k != null) {
                return b();
            }
            View d2 = pVar.d(this.f785d);
            this.f785d += this.f786e;
            return d2;
        }

        public void a() {
            a((View) null);
        }

        public void a(View view) {
            View b2 = b(view);
            if (b2 == null) {
                this.f785d = -1;
            } else {
                this.f785d = ((RecyclerView.j) b2.getLayoutParams()).a();
            }
        }

        public View b(View view) {
            int size = this.f792k.size();
            View view2 = null;
            int i2 = Integer.MAX_VALUE;
            for (int i3 = 0; i3 < size; i3++) {
                View view3 = this.f792k.get(i3).f891b;
                RecyclerView.j jVar = (RecyclerView.j) view3.getLayoutParams();
                if (view3 != view && !jVar.c()) {
                    int a2 = (jVar.a() - this.f785d) * this.f786e;
                    if (a2 >= 0 && a2 < i2) {
                        if (a2 == 0) {
                            return view3;
                        }
                        view2 = view3;
                        i2 = a2;
                    }
                }
            }
            return view2;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public boolean B() {
        return (i() == 1073741824 || s() == 1073741824 || !t()) ? false : true;
    }

    public boolean D() {
        return this.D == null && this.v == this.y;
    }

    public c E() {
        return new c();
    }

    public void F() {
        if (this.t == null) {
            this.t = E();
        }
    }

    public int G() {
        View a2 = a(0, e(), true, false);
        if (a2 == null) {
            return -1;
        }
        return l(a2);
    }

    public int H() {
        View a2 = a(0, e(), false, true);
        if (a2 == null) {
            return -1;
        }
        return l(a2);
    }

    public int I() {
        View a2 = a(e() - 1, -1, false, true);
        if (a2 == null) {
            return -1;
        }
        return l(a2);
    }

    public final View J() {
        return d(this.x ? 0 : e() - 1);
    }

    public final View K() {
        return d(this.x ? e() - 1 : 0);
    }

    public int L() {
        return this.s;
    }

    public boolean M() {
        return k() == 1;
    }

    public boolean N() {
        return this.u.d() == 0 && this.u.a() == 0;
    }

    public final void O() {
        if (this.s == 1 || !M()) {
            this.x = this.w;
        } else {
            this.x = !this.w;
        }
    }

    public void a(AccessibilityEvent accessibilityEvent) {
        super.a(accessibilityEvent);
        if (e() > 0) {
            accessibilityEvent.setFromIndex(H());
            accessibilityEvent.setToIndex(I());
        }
    }

    public void a(RecyclerView.p pVar, RecyclerView.t tVar, a aVar, int i2) {
    }

    public void b(RecyclerView recyclerView, RecyclerView.p pVar) {
        super.b(recyclerView, pVar);
        if (this.C) {
            b(pVar);
            pVar.a();
        }
    }

    public RecyclerView.j c() {
        return new RecyclerView.j(-2, -2);
    }

    public int d(RecyclerView.t tVar) {
        return h(tVar);
    }

    public void e(RecyclerView.p pVar, RecyclerView.t tVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = -1;
        if (!(this.D == null && this.A == -1) && tVar.a() == 0) {
            b(pVar);
            return;
        }
        SavedState savedState = this.D;
        if (savedState != null && savedState.a()) {
            this.A = this.D.f770a;
        }
        F();
        this.t.f782a = false;
        O();
        View g2 = g();
        if (!this.E.f777e || this.A != -1 || this.D != null) {
            this.E.b();
            a aVar = this.E;
            aVar.f776d = this.x ^ this.y;
            b(pVar, tVar, aVar);
            this.E.f777e = true;
        } else if (g2 != null && (this.u.d(g2) >= this.u.b() || this.u.a(g2) <= this.u.f())) {
            this.E.b(g2, l(g2));
        }
        int k2 = k(tVar);
        if (this.t.f791j >= 0) {
            i2 = k2;
            k2 = 0;
        } else {
            i2 = 0;
        }
        int f2 = k2 + this.u.f();
        int c2 = i2 + this.u.c();
        if (tVar.d()) {
            int i11 = this.A;
            if (!(i11 == -1 || this.B == Integer.MIN_VALUE)) {
                View c3 = c(i11);
                if (c3 != null) {
                    if (this.x) {
                        i8 = this.u.b() - this.u.a(c3);
                        i9 = this.B;
                    } else {
                        i9 = this.u.d(c3) - this.u.f();
                        i8 = this.B;
                    }
                    int i12 = i8 - i9;
                    if (i12 > 0) {
                        f2 += i12;
                    } else {
                        c2 -= i12;
                    }
                }
            }
        }
        if (!this.E.f776d ? !this.x : this.x) {
            i10 = 1;
        }
        a(pVar, tVar, this.E, i10);
        a(pVar);
        this.t.f793l = N();
        this.t.f790i = tVar.d();
        a aVar2 = this.E;
        if (aVar2.f776d) {
            b(aVar2);
            c cVar = this.t;
            cVar.f789h = f2;
            a(pVar, cVar, tVar, false);
            c cVar2 = this.t;
            i4 = cVar2.f783b;
            int i13 = cVar2.f785d;
            int i14 = cVar2.f784c;
            if (i14 > 0) {
                c2 += i14;
            }
            a(this.E);
            c cVar3 = this.t;
            cVar3.f789h = c2;
            cVar3.f785d += cVar3.f786e;
            a(pVar, cVar3, tVar, false);
            c cVar4 = this.t;
            i3 = cVar4.f783b;
            int i15 = cVar4.f784c;
            if (i15 > 0) {
                h(i13, i4);
                c cVar5 = this.t;
                cVar5.f789h = i15;
                a(pVar, cVar5, tVar, false);
                i4 = this.t.f783b;
            }
        } else {
            a(aVar2);
            c cVar6 = this.t;
            cVar6.f789h = c2;
            a(pVar, cVar6, tVar, false);
            c cVar7 = this.t;
            i3 = cVar7.f783b;
            int i16 = cVar7.f785d;
            int i17 = cVar7.f784c;
            if (i17 > 0) {
                f2 += i17;
            }
            b(this.E);
            c cVar8 = this.t;
            cVar8.f789h = f2;
            cVar8.f785d += cVar8.f786e;
            a(pVar, cVar8, tVar, false);
            c cVar9 = this.t;
            i4 = cVar9.f783b;
            int i18 = cVar9.f784c;
            if (i18 > 0) {
                g(i16, i3);
                c cVar10 = this.t;
                cVar10.f789h = i18;
                a(pVar, cVar10, tVar, false);
                i3 = this.t.f783b;
            }
        }
        if (e() > 0) {
            if (this.x ^ this.y) {
                int a2 = a(i3, pVar, tVar, true);
                i6 = i4 + a2;
                i5 = i3 + a2;
                i7 = b(i6, pVar, tVar, false);
            } else {
                int b2 = b(i4, pVar, tVar, true);
                i6 = i4 + b2;
                i5 = i3 + b2;
                i7 = a(i5, pVar, tVar, false);
            }
            i4 = i6 + i7;
            i3 = i5 + i7;
        }
        b(pVar, tVar, i4, i3);
        if (!tVar.d()) {
            this.u.i();
        } else {
            this.E.b();
        }
        this.v = this.y;
    }

    public void f(int i2, int i3) {
        this.A = i2;
        this.B = i3;
        SavedState savedState = this.D;
        if (savedState != null) {
            savedState.b();
        }
        z();
    }

    public void g(RecyclerView.t tVar) {
        super.g(tVar);
        this.D = null;
        this.A = -1;
        this.B = Integer.MIN_VALUE;
        this.E.b();
    }

    public final void h(int i2, int i3) {
        this.t.f784c = i3 - this.u.f();
        c cVar = this.t;
        cVar.f785d = i2;
        cVar.f786e = this.x ? 1 : -1;
        c cVar2 = this.t;
        cVar2.f787f = -1;
        cVar2.f783b = i3;
        cVar2.f788g = Integer.MIN_VALUE;
    }

    public void i(int i2) {
        this.A = i2;
        this.B = Integer.MIN_VALUE;
        SavedState savedState = this.D;
        if (savedState != null) {
            savedState.b();
        }
        z();
    }

    public final int j(RecyclerView.t tVar) {
        if (e() == 0) {
            return 0;
        }
        F();
        D d2 = this.u;
        View b2 = b(!this.z, true);
        return O.b(tVar, d2, b2, a(!this.z, true), this, this.z);
    }

    public int k(RecyclerView.t tVar) {
        if (tVar.c()) {
            return this.u.g();
        }
        return 0;
    }

    public void l(int i2) {
        if (i2 == 0 || i2 == 1) {
            a((String) null);
            if (i2 != this.s || this.u == null) {
                this.u = D.a(this, i2);
                this.E.f773a = this.u;
                this.s = i2;
                z();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation:" + i2);
    }

    public final View m(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.x) {
            return i(pVar, tVar);
        }
        return g(pVar, tVar);
    }

    public boolean v() {
        return true;
    }

    public Parcelable y() {
        SavedState savedState = this.D;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (e() > 0) {
            F();
            boolean z2 = this.v ^ this.x;
            savedState2.f772c = z2;
            if (z2) {
                View J = J();
                savedState2.f771b = this.u.b() - this.u.a(J);
                savedState2.f770a = l(J);
            } else {
                View K = K();
                savedState2.f770a = l(K);
                savedState2.f771b = this.u.d(K) - this.u.f();
            }
        } else {
            savedState2.b();
        }
        return savedState2;
    }

    public LinearLayoutManager(Context context, int i2, boolean z2) {
        this.s = 1;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = true;
        this.A = -1;
        this.B = Integer.MIN_VALUE;
        this.D = null;
        this.E = new a();
        this.F = new b();
        this.G = 2;
        l(i2);
        b(z2);
    }

    public void c(boolean z2) {
        a((String) null);
        if (this.y != z2) {
            this.y = z2;
            z();
        }
    }

    public void k(int i2) {
        this.G = i2;
    }

    public final View k(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.x) {
            return h(pVar, tVar);
        }
        return f(pVar, tVar);
    }

    public void a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.D = (SavedState) parcelable;
            z();
        }
    }

    public boolean b() {
        return this.s == 1;
    }

    public void b(boolean z2) {
        a((String) null);
        if (z2 != this.w) {
            this.w = z2;
            z();
        }
    }

    public View c(int i2) {
        int e2 = e();
        if (e2 == 0) {
            return null;
        }
        int l2 = i2 - l(d(0));
        if (l2 >= 0 && l2 < e2) {
            View d2 = d(l2);
            if (l(d2) == i2) {
                return d2;
            }
        }
        return super.c(i2);
    }

    public int f(RecyclerView.t tVar) {
        return j(tVar);
    }

    public final void g(int i2, int i3) {
        this.t.f784c = this.u.b() - i3;
        this.t.f786e = this.x ? -1 : 1;
        c cVar = this.t;
        cVar.f785d = i2;
        cVar.f787f = 1;
        cVar.f783b = i3;
        cVar.f788g = Integer.MIN_VALUE;
    }

    public final int i(RecyclerView.t tVar) {
        if (e() == 0) {
            return 0;
        }
        F();
        D d2 = this.u;
        View b2 = b(!this.z, true);
        return O.a(tVar, d2, b2, a(!this.z, true), this, this.z, this.x);
    }

    public final View f(RecyclerView.p pVar, RecyclerView.t tVar) {
        return e(0, e());
    }

    public final int h(RecyclerView.t tVar) {
        if (e() == 0) {
            return 0;
        }
        F();
        D d2 = this.u;
        View b2 = b(!this.z, true);
        return O.a(tVar, d2, b2, a(!this.z, true), this, this.z);
    }

    public int j(int i2) {
        int i3 = -1;
        int i4 = 1;
        if (i2 == 1) {
            return (this.s != 1 && M()) ? 1 : -1;
        }
        if (i2 == 2) {
            return (this.s != 1 && M()) ? -1 : 1;
        }
        if (i2 == 17) {
            if (this.s != 0) {
                i3 = Integer.MIN_VALUE;
            }
            return i3;
        } else if (i2 == 33) {
            if (this.s != 1) {
                i3 = Integer.MIN_VALUE;
            }
            return i3;
        } else if (i2 == 66) {
            if (this.s != 0) {
                i4 = Integer.MIN_VALUE;
            }
            return i4;
        } else if (i2 != 130) {
            return Integer.MIN_VALUE;
        } else {
            if (this.s != 1) {
                i4 = Integer.MIN_VALUE;
            }
            return i4;
        }
    }

    public boolean a() {
        return this.s == 0;
    }

    public final View l(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.x) {
            return g(pVar, tVar);
        }
        return i(pVar, tVar);
    }

    public void a(RecyclerView recyclerView, RecyclerView.t tVar, int i2) {
        y yVar = new y(recyclerView.getContext());
        yVar.c(i2);
        b((RecyclerView.s) yVar);
    }

    public final void b(RecyclerView.p pVar, RecyclerView.t tVar, int i2, int i3) {
        RecyclerView.p pVar2 = pVar;
        RecyclerView.t tVar2 = tVar;
        if (tVar.e() && e() != 0 && !tVar.d() && D()) {
            List<RecyclerView.w> f2 = pVar.f();
            int size = f2.size();
            int l2 = l(d(0));
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < size; i6++) {
                RecyclerView.w wVar = f2.get(i6);
                if (!wVar.q()) {
                    char c2 = 1;
                    if ((wVar.j() < l2) != this.x) {
                        c2 = 65535;
                    }
                    if (c2 == 65535) {
                        i4 += this.u.b(wVar.f891b);
                    } else {
                        i5 += this.u.b(wVar.f891b);
                    }
                }
            }
            this.t.f792k = f2;
            if (i4 > 0) {
                h(l(K()), i2);
                c cVar = this.t;
                cVar.f789h = i4;
                cVar.f784c = 0;
                cVar.a();
                a(pVar2, this.t, tVar2, false);
            }
            if (i5 > 0) {
                g(l(J()), i3);
                c cVar2 = this.t;
                cVar2.f789h = i5;
                cVar2.f784c = 0;
                cVar2.a();
                a(pVar2, this.t, tVar2, false);
            }
            this.t.f792k = null;
        }
    }

    public int c(RecyclerView.t tVar) {
        return j(tVar);
    }

    public int c(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (e() == 0 || i2 == 0) {
            return 0;
        }
        this.t.f782a = true;
        F();
        int i3 = i2 > 0 ? 1 : -1;
        int abs = Math.abs(i2);
        a(i3, abs, true, tVar);
        c cVar = this.t;
        int a2 = cVar.f788g + a(pVar, cVar, tVar, false);
        if (a2 < 0) {
            return 0;
        }
        if (abs > a2) {
            i2 = i3 * a2;
        }
        this.u.a(-i2);
        this.t.f791j = i2;
        return i2;
    }

    public final View g(RecyclerView.p pVar, RecyclerView.t tVar) {
        return a(pVar, tVar, 0, e(), tVar.a());
    }

    public final View i(RecyclerView.p pVar, RecyclerView.t tVar) {
        return a(pVar, tVar, e() - 1, -1, tVar.a());
    }

    public PointF a(int i2) {
        if (e() == 0) {
            return null;
        }
        boolean z2 = false;
        int i3 = 1;
        if (i2 < l(d(0))) {
            z2 = true;
        }
        if (z2 != this.x) {
            i3 = -1;
        }
        if (this.s == 0) {
            return new PointF((float) i3, 0.0f);
        }
        return new PointF(0.0f, (float) i3);
    }

    public final View h(RecyclerView.p pVar, RecyclerView.t tVar) {
        return e(e() - 1, -1);
    }

    public final View j(RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.x) {
            return f(pVar, tVar);
        }
        return h(pVar, tVar);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.s = 1;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = true;
        this.A = -1;
        this.B = Integer.MIN_VALUE;
        this.D = null;
        this.E = new a();
        this.F = new b();
        this.G = 2;
        RecyclerView.i.b a2 = RecyclerView.i.a(context, attributeSet, i2, i3);
        l(a2.f832a);
        b(a2.f834c);
        c(a2.f835d);
    }

    public final boolean a(RecyclerView.p pVar, RecyclerView.t tVar, a aVar) {
        View view;
        int i2;
        boolean z2 = false;
        if (e() == 0) {
            return false;
        }
        View g2 = g();
        if (g2 != null && aVar.a(g2, tVar)) {
            aVar.b(g2, l(g2));
            return true;
        } else if (this.v != this.y) {
            return false;
        } else {
            if (aVar.f776d) {
                view = l(pVar, tVar);
            } else {
                view = m(pVar, tVar);
            }
            if (view == null) {
                return false;
            }
            aVar.a(view, l(view));
            if (!tVar.d() && D()) {
                if (this.u.d(view) >= this.u.b() || this.u.a(view) < this.u.f()) {
                    z2 = true;
                }
                if (z2) {
                    if (aVar.f776d) {
                        i2 = this.u.b();
                    } else {
                        i2 = this.u.f();
                    }
                    aVar.f775c = i2;
                }
            }
            return true;
        }
    }

    public final void b(RecyclerView.p pVar, RecyclerView.t tVar, a aVar) {
        if (!a(tVar, aVar) && !a(pVar, tVar, aVar)) {
            aVar.a();
            aVar.f774b = this.y ? tVar.a() - 1 : 0;
        }
    }

    public final boolean a(RecyclerView.t tVar, a aVar) {
        int i2;
        boolean z2 = false;
        if (!tVar.d()) {
            int i3 = this.A;
            if (i3 != -1) {
                if (i3 < 0 || i3 >= tVar.a()) {
                    this.A = -1;
                    this.B = Integer.MIN_VALUE;
                } else {
                    aVar.f774b = this.A;
                    SavedState savedState = this.D;
                    if (savedState != null && savedState.a()) {
                        aVar.f776d = this.D.f772c;
                        if (aVar.f776d) {
                            aVar.f775c = this.u.b() - this.D.f771b;
                        } else {
                            aVar.f775c = this.u.f() + this.D.f771b;
                        }
                        return true;
                    } else if (this.B == Integer.MIN_VALUE) {
                        View c2 = c(this.A);
                        if (c2 == null) {
                            if (e() > 0) {
                                if ((this.A < l(d(0))) == this.x) {
                                    z2 = true;
                                }
                                aVar.f776d = z2;
                            }
                            aVar.a();
                        } else if (this.u.b(c2) > this.u.g()) {
                            aVar.a();
                            return true;
                        } else if (this.u.d(c2) - this.u.f() < 0) {
                            aVar.f775c = this.u.f();
                            aVar.f776d = false;
                            return true;
                        } else if (this.u.b() - this.u.a(c2) < 0) {
                            aVar.f775c = this.u.b();
                            aVar.f776d = true;
                            return true;
                        } else {
                            if (aVar.f776d) {
                                i2 = this.u.a(c2) + this.u.h();
                            } else {
                                i2 = this.u.d(c2);
                            }
                            aVar.f775c = i2;
                        }
                        return true;
                    } else {
                        boolean z3 = this.x;
                        aVar.f776d = z3;
                        if (z3) {
                            aVar.f775c = this.u.b() - this.B;
                        } else {
                            aVar.f775c = this.u.f() + this.B;
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int b(int i2, RecyclerView.p pVar, RecyclerView.t tVar, boolean z2) {
        int f2 = i2 - this.u.f();
        if (f2 <= 0) {
            return 0;
        }
        int i3 = -c(f2, pVar, tVar);
        int i4 = i2 + i3;
        if (z2) {
            int f3 = i4 - this.u.f();
            if (f3 > 0) {
                this.u.a(-f3);
                i3 -= f3;
            }
        }
        return i3;
    }

    public final void b(a aVar) {
        h(aVar.f774b, aVar.f775c);
    }

    public int b(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.s == 0) {
            return 0;
        }
        return c(i2, pVar, tVar);
    }

    public int b(RecyclerView.t tVar) {
        return i(tVar);
    }

    public final void b(RecyclerView.p pVar, int i2) {
        if (i2 >= 0) {
            int e2 = e();
            if (!this.x) {
                int i3 = 0;
                while (true) {
                    if (i3 >= e2) {
                        break;
                    }
                    View d2 = d(i3);
                    if (this.u.a(d2) > i2 || this.u.e(d2) > i2) {
                        a(pVar, 0, i3);
                    } else {
                        i3++;
                    }
                }
            } else {
                int i4 = e2 - 1;
                for (int i5 = i4; i5 >= 0; i5--) {
                    View d3 = d(i5);
                    if (this.u.a(d3) > i2 || this.u.e(d3) > i2) {
                        a(pVar, i4, i5);
                        return;
                    }
                }
            }
        }
    }

    public final View b(boolean z2, boolean z3) {
        if (this.x) {
            return a(e() - 1, -1, z2, z3);
        }
        return a(0, e(), z2, z3);
    }

    public final int a(int i2, RecyclerView.p pVar, RecyclerView.t tVar, boolean z2) {
        int b2 = this.u.b() - i2;
        if (b2 <= 0) {
            return 0;
        }
        int i3 = -c(-b2, pVar, tVar);
        int i4 = i2 + i3;
        if (z2) {
            int b3 = this.u.b() - i4;
            if (b3 > 0) {
                this.u.a(b3);
                return b3 + i3;
            }
        }
        return i3;
    }

    public final void a(a aVar) {
        g(aVar.f774b, aVar.f775c);
    }

    public int a(int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        if (this.s == 1) {
            return 0;
        }
        return c(i2, pVar, tVar);
    }

    public int a(RecyclerView.t tVar) {
        return h(tVar);
    }

    public final void a(int i2, int i3, boolean z2, RecyclerView.t tVar) {
        int i4;
        this.t.f793l = N();
        this.t.f789h = k(tVar);
        c cVar = this.t;
        cVar.f787f = i2;
        int i5 = -1;
        if (i2 == 1) {
            cVar.f789h += this.u.c();
            View J = J();
            c cVar2 = this.t;
            if (!this.x) {
                i5 = 1;
            }
            cVar2.f786e = i5;
            c cVar3 = this.t;
            int l2 = l(J);
            c cVar4 = this.t;
            cVar3.f785d = l2 + cVar4.f786e;
            cVar4.f783b = this.u.a(J);
            i4 = this.u.a(J) - this.u.b();
        } else {
            View K = K();
            this.t.f789h += this.u.f();
            c cVar5 = this.t;
            if (this.x) {
                i5 = 1;
            }
            cVar5.f786e = i5;
            c cVar6 = this.t;
            int l3 = l(K);
            c cVar7 = this.t;
            cVar6.f785d = l3 + cVar7.f786e;
            cVar7.f783b = this.u.d(K);
            i4 = (-this.u.d(K)) + this.u.f();
        }
        c cVar8 = this.t;
        cVar8.f784c = i3;
        if (z2) {
            cVar8.f784c -= i4;
        }
        this.t.f788g = i4;
    }

    public int e(RecyclerView.t tVar) {
        return i(tVar);
    }

    public View e(int i2, int i3) {
        int i4;
        int i5;
        View view;
        F();
        if ((i3 > i2 ? 1 : i3 < i2 ? (char) 65535 : 0) == 0) {
            return d(i2);
        }
        if (this.u.d(d(i2)) < this.u.f()) {
            i5 = 16644;
            i4 = 16388;
        } else {
            i5 = 4161;
            i4 = 4097;
        }
        if (this.s == 0) {
            view = this.f824e.a(i2, i3, i5, i4);
        } else {
            view = this.f825f.a(i2, i3, i5, i4);
        }
        return view;
    }

    public void a(RecyclerView.t tVar, c cVar, RecyclerView.i.a aVar) {
        int i2 = cVar.f785d;
        if (i2 >= 0 && i2 < tVar.a()) {
            aVar.a(i2, Math.max(0, cVar.f788g));
        }
    }

    public void a(int i2, RecyclerView.i.a aVar) {
        boolean z2;
        int i3;
        SavedState savedState = this.D;
        int i4 = -1;
        if (savedState == null || !savedState.a()) {
            O();
            z2 = this.x;
            i3 = this.A;
            if (i3 == -1) {
                i3 = z2 ? i2 - 1 : 0;
            }
        } else {
            SavedState savedState2 = this.D;
            z2 = savedState2.f772c;
            i3 = savedState2.f770a;
        }
        if (!z2) {
            i4 = 1;
        }
        int i5 = i3;
        for (int i6 = 0; i6 < this.G && i5 >= 0 && i5 < i2; i6++) {
            aVar.a(i5, 0);
            i5 += i4;
        }
    }

    public void a(int i2, int i3, RecyclerView.t tVar, RecyclerView.i.a aVar) {
        if (this.s != 0) {
            i2 = i3;
        }
        if (e() != 0 && i2 != 0) {
            F();
            a(i2 > 0 ? 1 : -1, Math.abs(i2), true, tVar);
            a(tVar, this.t, aVar);
        }
    }

    public void a(String str) {
        if (this.D == null) {
            super.a(str);
        }
    }

    public final void a(RecyclerView.p pVar, int i2, int i3) {
        if (i2 != i3) {
            if (i3 > i2) {
                for (int i4 = i3 - 1; i4 >= i2; i4--) {
                    a(i4, pVar);
                }
            } else {
                while (i2 > i3) {
                    a(i2, pVar);
                    i2--;
                }
            }
        }
    }

    public final void a(RecyclerView.p pVar, int i2) {
        int e2 = e();
        if (i2 >= 0) {
            int a2 = this.u.a() - i2;
            if (this.x) {
                for (int i3 = 0; i3 < e2; i3++) {
                    View d2 = d(i3);
                    if (this.u.d(d2) < a2 || this.u.f(d2) < a2) {
                        a(pVar, 0, i3);
                        return;
                    }
                }
            } else {
                int i4 = e2 - 1;
                int i5 = i4;
                while (true) {
                    if (i5 < 0) {
                        break;
                    }
                    View d3 = d(i5);
                    if (this.u.d(d3) < a2 || this.u.f(d3) < a2) {
                        a(pVar, i4, i5);
                    } else {
                        i5--;
                    }
                }
                a(pVar, i4, i5);
            }
        }
    }

    public final void a(RecyclerView.p pVar, c cVar) {
        if (cVar.f782a && !cVar.f793l) {
            if (cVar.f787f == -1) {
                a(pVar, cVar.f788g);
            } else {
                b(pVar, cVar.f788g);
            }
        }
    }

    public int a(RecyclerView.p pVar, c cVar, RecyclerView.t tVar, boolean z2) {
        int i2 = cVar.f784c;
        int i3 = cVar.f788g;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                cVar.f788g = i3 + i2;
            }
            a(pVar, cVar);
        }
        int i4 = cVar.f784c + cVar.f789h;
        b bVar = this.F;
        while (true) {
            if ((!cVar.f793l && i4 <= 0) || !cVar.a(tVar)) {
                break;
            }
            bVar.a();
            a(pVar, tVar, cVar, bVar);
            if (!bVar.f779b) {
                cVar.f783b += bVar.f778a * cVar.f787f;
                if (!bVar.f780c || this.t.f792k != null || !tVar.d()) {
                    int i5 = cVar.f784c;
                    int i6 = bVar.f778a;
                    cVar.f784c = i5 - i6;
                    i4 -= i6;
                }
                int i7 = cVar.f788g;
                if (i7 != Integer.MIN_VALUE) {
                    cVar.f788g = i7 + bVar.f778a;
                    int i8 = cVar.f784c;
                    if (i8 < 0) {
                        cVar.f788g += i8;
                    }
                    a(pVar, cVar);
                }
                if (z2 && bVar.f781d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - cVar.f784c;
    }

    public void a(RecyclerView.p pVar, RecyclerView.t tVar, c cVar, b bVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        View a2 = cVar.a(pVar);
        if (a2 == null) {
            bVar.f779b = true;
            return;
        }
        RecyclerView.j jVar = (RecyclerView.j) a2.getLayoutParams();
        if (cVar.f792k == null) {
            if (this.x == (cVar.f787f == -1)) {
                b(a2);
            } else {
                b(a2, 0);
            }
        } else {
            if (this.x == (cVar.f787f == -1)) {
                a(a2);
            } else {
                a(a2, 0);
            }
        }
        a(a2, 0, 0);
        bVar.f778a = this.u.b(a2);
        if (this.s == 1) {
            if (M()) {
                i6 = r() - p();
                i5 = i6 - this.u.c(a2);
            } else {
                i5 = o();
                i6 = this.u.c(a2) + i5;
            }
            if (cVar.f787f == -1) {
                int i7 = cVar.f783b;
                i2 = i7;
                i3 = i6;
                i4 = i7 - bVar.f778a;
            } else {
                int i8 = cVar.f783b;
                i4 = i8;
                i3 = i6;
                i2 = bVar.f778a + i8;
            }
        } else {
            int q = q();
            int c2 = this.u.c(a2) + q;
            if (cVar.f787f == -1) {
                int i9 = cVar.f783b;
                i3 = i9;
                i4 = q;
                i2 = c2;
                i5 = i9 - bVar.f778a;
            } else {
                int i10 = cVar.f783b;
                i4 = q;
                i3 = bVar.f778a + i10;
                i2 = c2;
                i5 = i10;
            }
        }
        a(a2, i5, i4, i3, i2);
        if (jVar.c() || jVar.b()) {
            bVar.f780c = true;
        }
        bVar.f781d = a2.hasFocusable();
    }

    public final View a(boolean z2, boolean z3) {
        if (this.x) {
            return a(0, e(), z2, z3);
        }
        return a(e() - 1, -1, z2, z3);
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
            if (l2 >= 0 && l2 < i4) {
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

    public View a(int i2, int i3, boolean z2, boolean z3) {
        F();
        int i4 = 320;
        int i5 = z2 ? 24579 : 320;
        if (!z3) {
            i4 = 0;
        }
        if (this.s == 0) {
            return this.f824e.a(i2, i3, i5, i4);
        }
        return this.f825f.a(i2, i3, i5, i4);
    }

    public View a(View view, int i2, RecyclerView.p pVar, RecyclerView.t tVar) {
        View view2;
        View view3;
        O();
        if (e() == 0) {
            return null;
        }
        int j2 = j(i2);
        if (j2 == Integer.MIN_VALUE) {
            return null;
        }
        F();
        F();
        a(j2, (int) (((float) this.u.g()) * 0.33333334f), false, tVar);
        c cVar = this.t;
        cVar.f788g = Integer.MIN_VALUE;
        cVar.f782a = false;
        a(pVar, cVar, tVar, true);
        if (j2 == -1) {
            view2 = k(pVar, tVar);
        } else {
            view2 = j(pVar, tVar);
        }
        if (j2 == -1) {
            view3 = K();
        } else {
            view3 = J();
        }
        if (!view3.hasFocusable()) {
            return view2;
        }
        if (view2 == null) {
            return null;
        }
        return view3;
    }
}
