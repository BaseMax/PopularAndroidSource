package b.D;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import b.f.C0243b;
import b.f.f;
import b.f.i;
import b.i.k.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Transition */
public abstract class E implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f1078a = {2, 1, 3, 4};

    /* renamed from: b  reason: collision with root package name */
    public static final C0175v f1079b = new B();

    /* renamed from: c  reason: collision with root package name */
    public static ThreadLocal<C0243b<Animator, a>> f1080c = new ThreadLocal<>();
    public ArrayList<Animator> A = new ArrayList<>();
    public int B = 0;
    public boolean C = false;
    public boolean D = false;
    public ArrayList<c> E = null;
    public ArrayList<Animator> F = new ArrayList<>();
    public I G;
    public b H;
    public C0243b<String, String> I;
    public C0175v J = f1079b;

    /* renamed from: d  reason: collision with root package name */
    public String f1081d = getClass().getName();

    /* renamed from: e  reason: collision with root package name */
    public long f1082e = -1;

    /* renamed from: f  reason: collision with root package name */
    public long f1083f = -1;

    /* renamed from: g  reason: collision with root package name */
    public TimeInterpolator f1084g = null;

    /* renamed from: h  reason: collision with root package name */
    public ArrayList<Integer> f1085h = new ArrayList<>();

    /* renamed from: i  reason: collision with root package name */
    public ArrayList<View> f1086i = new ArrayList<>();

    /* renamed from: j  reason: collision with root package name */
    public ArrayList<String> f1087j = null;

    /* renamed from: k  reason: collision with root package name */
    public ArrayList<Class> f1088k = null;

    /* renamed from: l  reason: collision with root package name */
    public ArrayList<Integer> f1089l = null;
    public ArrayList<View> m = null;
    public ArrayList<Class> n = null;
    public ArrayList<String> o = null;
    public ArrayList<Integer> p = null;
    public ArrayList<View> q = null;
    public ArrayList<Class> r = null;
    public N s = new N();
    public N t = new N();
    public K u = null;
    public int[] v = f1078a;
    public ArrayList<M> w;
    public ArrayList<M> x;
    public ViewGroup y = null;
    public boolean z = false;

    /* compiled from: Transition */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public View f1090a;

        /* renamed from: b  reason: collision with root package name */
        public String f1091b;

        /* renamed from: c  reason: collision with root package name */
        public M f1092c;

        /* renamed from: d  reason: collision with root package name */
        public ka f1093d;

        /* renamed from: e  reason: collision with root package name */
        public E f1094e;

        public a(View view, String str, E e2, ka kaVar, M m) {
            this.f1090a = view;
            this.f1091b = str;
            this.f1092c = m;
            this.f1093d = kaVar;
            this.f1094e = e2;
        }
    }

    /* compiled from: Transition */
    public static abstract class b {
    }

    /* compiled from: Transition */
    public interface c {
        void a(E e2);

        void b(E e2);

        void c(E e2);

        void d(E e2);
    }

    public static C0243b<Animator, a> h() {
        C0243b<Animator, a> bVar = f1080c.get();
        if (bVar != null) {
            return bVar;
        }
        C0243b<Animator, a> bVar2 = new C0243b<>();
        f1080c.set(bVar2);
        return bVar2;
    }

    public Animator a(ViewGroup viewGroup, M m2, M m3) {
        return null;
    }

    public E a(long j2) {
        this.f1083f = j2;
        return this;
    }

    public abstract void a(M m2);

    public long b() {
        return this.f1083f;
    }

    public M c(View view, boolean z2) {
        K k2 = this.u;
        if (k2 != null) {
            return k2.c(view, z2);
        }
        return (z2 ? this.s : this.t).f1111a.get(view);
    }

    public abstract void c(M m2);

    public TimeInterpolator d() {
        return this.f1084g;
    }

    public void e(View view) {
        if (this.C) {
            if (!this.D) {
                C0243b<Animator, a> h2 = h();
                int size = h2.size();
                ka d2 = ba.d(view);
                for (int i2 = size - 1; i2 >= 0; i2--) {
                    a e2 = h2.e(i2);
                    if (e2.f1090a != null && d2.equals(e2.f1093d)) {
                        C0155a.b(h2.c(i2));
                    }
                }
                ArrayList<c> arrayList = this.E;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.E.clone();
                    int size2 = arrayList2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        ((c) arrayList2.get(i3)).d(this);
                    }
                }
            }
            this.C = false;
        }
    }

    public C0175v f() {
        return this.J;
    }

    public I g() {
        return this.G;
    }

    public long i() {
        return this.f1082e;
    }

    public List<Integer> j() {
        return this.f1085h;
    }

    public List<String> k() {
        return this.f1087j;
    }

    public List<Class> p() {
        return this.f1088k;
    }

    public List<View> q() {
        return this.f1086i;
    }

    public String[] r() {
        return null;
    }

    public void s() {
        t();
        C0243b<Animator, a> h2 = h();
        Iterator<Animator> it = this.F.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (h2.containsKey(next)) {
                t();
                a(next, h2);
            }
        }
        this.F.clear();
        a();
    }

    public void t() {
        if (this.B == 0) {
            ArrayList<c> arrayList = this.E;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.E.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((c) arrayList2.get(i2)).a(this);
                }
            }
            this.D = false;
        }
        this.B++;
    }

    public String toString() {
        return a("");
    }

    public E a(TimeInterpolator timeInterpolator) {
        this.f1084g = timeInterpolator;
        return this;
    }

    public E b(long j2) {
        this.f1082e = j2;
        return this;
    }

    public E clone() {
        try {
            E e2 = (E) super.clone();
            e2.F = new ArrayList<>();
            e2.s = new N();
            e2.t = new N();
            e2.w = null;
            e2.x = null;
            return e2;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public E d(View view) {
        this.f1086i.remove(view);
        return this;
    }

    public final void a(C0243b<View, M> bVar, C0243b<View, M> bVar2, f<View> fVar, f<View> fVar2) {
        int c2 = fVar.c();
        for (int i2 = 0; i2 < c2; i2++) {
            View c3 = fVar.c(i2);
            if (c3 != null && b(c3)) {
                View b2 = fVar2.b(fVar.a(i2));
                if (b2 != null && b(b2)) {
                    M m2 = bVar.get(c3);
                    M m3 = bVar2.get(b2);
                    if (!(m2 == null || m3 == null)) {
                        this.w.add(m2);
                        this.x.add(m3);
                        bVar.remove(c3);
                        bVar2.remove(b2);
                    }
                }
            }
        }
    }

    public final void b(C0243b<View, M> bVar, C0243b<View, M> bVar2) {
        for (int size = bVar.size() - 1; size >= 0; size--) {
            View c2 = bVar.c(size);
            if (c2 != null && b(c2)) {
                M remove = bVar2.remove(c2);
                if (remove != null) {
                    View view = remove.f1109b;
                    if (view != null && b(view)) {
                        this.w.add(bVar.d(size));
                        this.x.add(remove);
                    }
                }
            }
        }
    }

    public void c(View view) {
        if (!this.D) {
            C0243b<Animator, a> h2 = h();
            int size = h2.size();
            ka d2 = ba.d(view);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                a e2 = h2.e(i2);
                if (e2.f1090a != null && d2.equals(e2.f1093d)) {
                    C0155a.a(h2.c(i2));
                }
            }
            ArrayList<c> arrayList = this.E;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.E.clone();
                int size2 = arrayList2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    ((c) arrayList2.get(i3)).b(this);
                }
            }
            this.C = true;
        }
    }

    public boolean b(View view) {
        int id = view.getId();
        ArrayList<Integer> arrayList = this.f1089l;
        if (arrayList != null && arrayList.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList2 = this.m;
        if (arrayList2 != null && arrayList2.contains(view)) {
            return false;
        }
        ArrayList<Class> arrayList3 = this.n;
        if (arrayList3 != null) {
            int size = arrayList3.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.n.get(i2).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.o != null && z.r(view) != null && this.o.contains(z.r(view))) {
            return false;
        }
        if (this.f1085h.size() == 0 && this.f1086i.size() == 0) {
            ArrayList<Class> arrayList4 = this.f1088k;
            if (arrayList4 == null || arrayList4.isEmpty()) {
                ArrayList<String> arrayList5 = this.f1087j;
                if (arrayList5 == null || arrayList5.isEmpty()) {
                    return true;
                }
            }
        }
        if (this.f1085h.contains(Integer.valueOf(id)) || this.f1086i.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.f1087j;
        if (arrayList6 != null && arrayList6.contains(z.r(view))) {
            return true;
        }
        if (this.f1088k != null) {
            for (int i3 = 0; i3 < this.f1088k.size(); i3++) {
                if (this.f1088k.get(i3).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void a(C0243b<View, M> bVar, C0243b<View, M> bVar2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            View valueAt = sparseArray.valueAt(i2);
            if (valueAt != null && b(valueAt)) {
                View view = sparseArray2.get(sparseArray.keyAt(i2));
                if (view != null && b(view)) {
                    M m2 = bVar.get(valueAt);
                    M m3 = bVar2.get(view);
                    if (!(m2 == null || m3 == null)) {
                        this.w.add(m2);
                        this.x.add(m3);
                        bVar.remove(valueAt);
                        bVar2.remove(view);
                    }
                }
            }
        }
    }

    public String e() {
        return this.f1081d;
    }

    public b c() {
        return this.H;
    }

    public final void a(C0243b<View, M> bVar, C0243b<View, M> bVar2, C0243b<String, View> bVar3, C0243b<String, View> bVar4) {
        int size = bVar3.size();
        for (int i2 = 0; i2 < size; i2++) {
            View e2 = bVar3.e(i2);
            if (e2 != null && b(e2)) {
                View view = bVar4.get(bVar3.c(i2));
                if (view != null && b(view)) {
                    M m2 = bVar.get(e2);
                    M m3 = bVar2.get(view);
                    if (!(m2 == null || m3 == null)) {
                        this.w.add(m2);
                        this.x.add(m3);
                        bVar.remove(e2);
                        bVar2.remove(view);
                    }
                }
            }
        }
    }

    public M b(View view, boolean z2) {
        K k2 = this.u;
        if (k2 != null) {
            return k2.b(view, z2);
        }
        ArrayList<M> arrayList = z2 ? this.w : this.x;
        M m2 = null;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i2 = -1;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            M m3 = arrayList.get(i3);
            if (m3 == null) {
                return null;
            }
            if (m3.f1109b == view) {
                i2 = i3;
                break;
            }
            i3++;
        }
        if (i2 >= 0) {
            m2 = (z2 ? this.x : this.w).get(i2);
        }
        return m2;
    }

    public final void a(C0243b<View, M> bVar, C0243b<View, M> bVar2) {
        for (int i2 = 0; i2 < bVar.size(); i2++) {
            M e2 = bVar.e(i2);
            if (b(e2.f1109b)) {
                this.w.add(e2);
                this.x.add(null);
            }
        }
        for (int i3 = 0; i3 < bVar2.size(); i3++) {
            M e3 = bVar2.e(i3);
            if (b(e3.f1109b)) {
                this.x.add(e3);
                this.w.add(null);
            }
        }
    }

    public E b(c cVar) {
        ArrayList<c> arrayList = this.E;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(cVar);
        if (this.E.size() == 0) {
            this.E = null;
        }
        return this;
    }

    public void b(M m2) {
        if (this.G != null && !m2.f1108a.isEmpty()) {
            String[] a2 = this.G.a();
            if (a2 != null) {
                boolean z2 = false;
                int i2 = 0;
                while (true) {
                    if (i2 >= a2.length) {
                        z2 = true;
                        break;
                    } else if (!m2.f1108a.containsKey(a2[i2])) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (!z2) {
                    this.G.a(m2);
                }
            }
        }
    }

    public final void a(N n2, N n3) {
        C0243b bVar = new C0243b((i) n2.f1111a);
        C0243b bVar2 = new C0243b((i) n3.f1111a);
        int i2 = 0;
        while (true) {
            int[] iArr = this.v;
            if (i2 < iArr.length) {
                int i3 = iArr[i2];
                if (i3 == 1) {
                    b((C0243b<View, M>) bVar, (C0243b<View, M>) bVar2);
                } else if (i3 == 2) {
                    a((C0243b<View, M>) bVar, (C0243b<View, M>) bVar2, n2.f1114d, n3.f1114d);
                } else if (i3 == 3) {
                    a((C0243b<View, M>) bVar, (C0243b<View, M>) bVar2, n2.f1112b, n3.f1112b);
                } else if (i3 == 4) {
                    a((C0243b<View, M>) bVar, (C0243b<View, M>) bVar2, n2.f1113c, n3.f1113c);
                }
                i2++;
            } else {
                a((C0243b<View, M>) bVar, (C0243b<View, M>) bVar2);
                return;
            }
        }
    }

    public void a(ViewGroup viewGroup, N n2, N n3, ArrayList<M> arrayList, ArrayList<M> arrayList2) {
        int i2;
        int i3;
        View view;
        Animator animator;
        M m2;
        M m3;
        Animator animator2;
        ViewGroup viewGroup2 = viewGroup;
        C0243b<Animator, a> h2 = h();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long j2 = Long.MAX_VALUE;
        int i4 = 0;
        while (i4 < size) {
            M m4 = arrayList.get(i4);
            M m5 = arrayList2.get(i4);
            if (m4 != null && !m4.f1110c.contains(this)) {
                m4 = null;
            }
            if (m5 != null && !m5.f1110c.contains(this)) {
                m5 = null;
            }
            if (!(m4 == null && m5 == null)) {
                if (m4 == null || m5 == null || a(m4, m5)) {
                    Animator a2 = a(viewGroup2, m4, m5);
                    if (a2 != null) {
                        if (m5 != null) {
                            view = m5.f1109b;
                            String[] r2 = r();
                            if (view != null && r2 != null && r2.length > 0) {
                                m3 = new M();
                                m3.f1109b = view;
                                Animator animator3 = a2;
                                i3 = size;
                                M m6 = n3.f1111a.get(view);
                                if (m6 != null) {
                                    int i5 = 0;
                                    while (i5 < r2.length) {
                                        m3.f1108a.put(r2[i5], m6.f1108a.get(r2[i5]));
                                        i5++;
                                        ArrayList<M> arrayList3 = arrayList2;
                                        i4 = i4;
                                        m6 = m6;
                                    }
                                }
                                i2 = i4;
                                int size2 = h2.size();
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= size2) {
                                        animator2 = animator3;
                                        break;
                                    }
                                    a aVar = h2.get(h2.c(i6));
                                    if (aVar.f1092c != null && aVar.f1090a == view && aVar.f1091b.equals(e()) && aVar.f1092c.equals(m3)) {
                                        animator2 = null;
                                        break;
                                    }
                                    i6++;
                                }
                            } else {
                                i3 = size;
                                i2 = i4;
                                animator2 = a2;
                                m3 = null;
                            }
                            animator = animator2;
                            m2 = m3;
                        } else {
                            i3 = size;
                            i2 = i4;
                            view = m4.f1109b;
                            animator = a2;
                            m2 = null;
                        }
                        if (animator != null) {
                            I i7 = this.G;
                            if (i7 != null) {
                                long a3 = i7.a(viewGroup2, this, m4, m5);
                                sparseIntArray.put(this.F.size(), (int) a3);
                                j2 = Math.min(a3, j2);
                            }
                            long j3 = j2;
                            a aVar2 = new a(view, e(), this, ba.d(viewGroup), m2);
                            h2.put(animator, aVar2);
                            this.F.add(animator);
                            j2 = j3;
                        }
                        i4 = i2 + 1;
                        size = i3;
                    }
                }
            }
            i3 = size;
            i2 = i4;
            i4 = i2 + 1;
            size = i3;
        }
        if (sparseIntArray.size() != 0) {
            for (int i8 = 0; i8 < sparseIntArray.size(); i8++) {
                Animator animator4 = this.F.get(sparseIntArray.keyAt(i8));
                animator4.setStartDelay((((long) sparseIntArray.valueAt(i8)) - j2) + animator4.getStartDelay());
            }
        }
    }

    public final void a(Animator animator, C0243b<Animator, a> bVar) {
        if (animator != null) {
            animator.addListener(new C(this, bVar));
            a(animator);
        }
    }

    public E a(View view) {
        this.f1086i.add(view);
        return this;
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x00ac  */
    /* JADX WARNING: Removed duplicated region for block: B:61:? A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.view.ViewGroup r6, boolean r7) {
        /*
            r5 = this;
            r5.a((boolean) r7)
            java.util.ArrayList<java.lang.Integer> r0 = r5.f1085h
            int r0 = r0.size()
            r1 = 0
            if (r0 > 0) goto L_0x0014
            java.util.ArrayList<android.view.View> r0 = r5.f1086i
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x0029
        L_0x0014:
            java.util.ArrayList<java.lang.String> r0 = r5.f1087j
            if (r0 == 0) goto L_0x001e
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0029
        L_0x001e:
            java.util.ArrayList<java.lang.Class> r0 = r5.f1088k
            if (r0 == 0) goto L_0x002e
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0029
            goto L_0x002e
        L_0x0029:
            r5.a((android.view.View) r6, (boolean) r7)
            goto L_0x00aa
        L_0x002e:
            r0 = 0
        L_0x002f:
            java.util.ArrayList<java.lang.Integer> r2 = r5.f1085h
            int r2 = r2.size()
            if (r0 >= r2) goto L_0x0071
            java.util.ArrayList<java.lang.Integer> r2 = r5.f1085h
            java.lang.Object r2 = r2.get(r0)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            android.view.View r2 = r6.findViewById(r2)
            if (r2 == 0) goto L_0x006e
            b.D.M r3 = new b.D.M
            r3.<init>()
            r3.f1109b = r2
            if (r7 == 0) goto L_0x0056
            r5.c((b.D.M) r3)
            goto L_0x0059
        L_0x0056:
            r5.a((b.D.M) r3)
        L_0x0059:
            java.util.ArrayList<b.D.E> r4 = r3.f1110c
            r4.add(r5)
            r5.b((b.D.M) r3)
            if (r7 == 0) goto L_0x0069
            b.D.N r4 = r5.s
            a((b.D.N) r4, (android.view.View) r2, (b.D.M) r3)
            goto L_0x006e
        L_0x0069:
            b.D.N r4 = r5.t
            a((b.D.N) r4, (android.view.View) r2, (b.D.M) r3)
        L_0x006e:
            int r0 = r0 + 1
            goto L_0x002f
        L_0x0071:
            r6 = 0
        L_0x0072:
            java.util.ArrayList<android.view.View> r0 = r5.f1086i
            int r0 = r0.size()
            if (r6 >= r0) goto L_0x00aa
            java.util.ArrayList<android.view.View> r0 = r5.f1086i
            java.lang.Object r0 = r0.get(r6)
            android.view.View r0 = (android.view.View) r0
            b.D.M r2 = new b.D.M
            r2.<init>()
            r2.f1109b = r0
            if (r7 == 0) goto L_0x008f
            r5.c((b.D.M) r2)
            goto L_0x0092
        L_0x008f:
            r5.a((b.D.M) r2)
        L_0x0092:
            java.util.ArrayList<b.D.E> r3 = r2.f1110c
            r3.add(r5)
            r5.b((b.D.M) r2)
            if (r7 == 0) goto L_0x00a2
            b.D.N r3 = r5.s
            a((b.D.N) r3, (android.view.View) r0, (b.D.M) r2)
            goto L_0x00a7
        L_0x00a2:
            b.D.N r3 = r5.t
            a((b.D.N) r3, (android.view.View) r0, (b.D.M) r2)
        L_0x00a7:
            int r6 = r6 + 1
            goto L_0x0072
        L_0x00aa:
            if (r7 != 0) goto L_0x00ee
            b.f.b<java.lang.String, java.lang.String> r6 = r5.I
            if (r6 == 0) goto L_0x00ee
            int r6 = r6.size()
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>(r6)
            r0 = 0
        L_0x00ba:
            if (r0 >= r6) goto L_0x00d2
            b.f.b<java.lang.String, java.lang.String> r2 = r5.I
            java.lang.Object r2 = r2.c((int) r0)
            java.lang.String r2 = (java.lang.String) r2
            b.D.N r3 = r5.s
            b.f.b<java.lang.String, android.view.View> r3 = r3.f1114d
            java.lang.Object r2 = r3.remove(r2)
            r7.add(r2)
            int r0 = r0 + 1
            goto L_0x00ba
        L_0x00d2:
            if (r1 >= r6) goto L_0x00ee
            java.lang.Object r0 = r7.get(r1)
            android.view.View r0 = (android.view.View) r0
            if (r0 == 0) goto L_0x00eb
            b.f.b<java.lang.String, java.lang.String> r2 = r5.I
            java.lang.Object r2 = r2.e(r1)
            java.lang.String r2 = (java.lang.String) r2
            b.D.N r3 = r5.s
            b.f.b<java.lang.String, android.view.View> r3 = r3.f1114d
            r3.put(r2, r0)
        L_0x00eb:
            int r1 = r1 + 1
            goto L_0x00d2
        L_0x00ee:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.D.E.a(android.view.ViewGroup, boolean):void");
    }

    public static void a(N n2, View view, M m2) {
        n2.f1111a.put(view, m2);
        int id = view.getId();
        if (id >= 0) {
            if (n2.f1112b.indexOfKey(id) >= 0) {
                n2.f1112b.put(id, null);
            } else {
                n2.f1112b.put(id, view);
            }
        }
        String r2 = z.r(view);
        if (r2 != null) {
            if (n2.f1114d.containsKey(r2)) {
                n2.f1114d.put(r2, null);
            } else {
                n2.f1114d.put(r2, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (n2.f1113c.c(itemIdAtPosition) >= 0) {
                    View b2 = n2.f1113c.b(itemIdAtPosition);
                    if (b2 != null) {
                        z.b(b2, false);
                        n2.f1113c.c(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                z.b(view, true);
                n2.f1113c.c(itemIdAtPosition, view);
            }
        }
    }

    public void a(boolean z2) {
        if (z2) {
            this.s.f1111a.clear();
            this.s.f1112b.clear();
            this.s.f1113c.a();
            return;
        }
        this.t.f1111a.clear();
        this.t.f1112b.clear();
        this.t.f1113c.a();
    }

    public final void a(View view, boolean z2) {
        if (view != null) {
            int id = view.getId();
            ArrayList<Integer> arrayList = this.f1089l;
            if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
                ArrayList<View> arrayList2 = this.m;
                if (arrayList2 == null || !arrayList2.contains(view)) {
                    ArrayList<Class> arrayList3 = this.n;
                    if (arrayList3 != null) {
                        int size = arrayList3.size();
                        int i2 = 0;
                        while (i2 < size) {
                            if (!this.n.get(i2).isInstance(view)) {
                                i2++;
                            } else {
                                return;
                            }
                        }
                    }
                    if (view.getParent() instanceof ViewGroup) {
                        M m2 = new M();
                        m2.f1109b = view;
                        if (z2) {
                            c(m2);
                        } else {
                            a(m2);
                        }
                        m2.f1110c.add(this);
                        b(m2);
                        if (z2) {
                            a(this.s, view, m2);
                        } else {
                            a(this.t, view, m2);
                        }
                    }
                    if (view instanceof ViewGroup) {
                        ArrayList<Integer> arrayList4 = this.p;
                        if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                            ArrayList<View> arrayList5 = this.q;
                            if (arrayList5 == null || !arrayList5.contains(view)) {
                                ArrayList<Class> arrayList6 = this.r;
                                if (arrayList6 != null) {
                                    int size2 = arrayList6.size();
                                    int i3 = 0;
                                    while (i3 < size2) {
                                        if (!this.r.get(i3).isInstance(view)) {
                                            i3++;
                                        } else {
                                            return;
                                        }
                                    }
                                }
                                ViewGroup viewGroup = (ViewGroup) view;
                                for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                                    a(viewGroup.getChildAt(i4), z2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void a(ViewGroup viewGroup) {
        this.w = new ArrayList<>();
        this.x = new ArrayList<>();
        a(this.s, this.t);
        C0243b<Animator, a> h2 = h();
        int size = h2.size();
        ka d2 = ba.d(viewGroup);
        for (int i2 = size - 1; i2 >= 0; i2--) {
            Animator c2 = h2.c(i2);
            if (c2 != null) {
                a aVar = h2.get(c2);
                if (!(aVar == null || aVar.f1090a == null || !d2.equals(aVar.f1093d))) {
                    M m2 = aVar.f1092c;
                    View view = aVar.f1090a;
                    M c3 = c(view, true);
                    M b2 = b(view, true);
                    if (c3 == null && b2 == null) {
                        b2 = this.t.f1111a.get(view);
                    }
                    if (!(c3 == null && b2 == null) && aVar.f1094e.a(m2, b2)) {
                        if (c2.isRunning() || c2.isStarted()) {
                            c2.cancel();
                        } else {
                            h2.remove(c2);
                        }
                    }
                }
            }
        }
        a(viewGroup, this.s, this.t, this.w, this.x);
        s();
    }

    public boolean a(M m2, M m3) {
        if (m2 == null || m3 == null) {
            return false;
        }
        String[] r2 = r();
        if (r2 != null) {
            int length = r2.length;
            int i2 = 0;
            while (i2 < length) {
                if (!a(m2, m3, r2[i2])) {
                    i2++;
                }
            }
            return false;
        }
        for (String a2 : m2.f1108a.keySet()) {
            if (a(m2, m3, a2)) {
            }
        }
        return false;
        return true;
    }

    public static boolean a(M m2, M m3, String str) {
        Object obj = m2.f1108a.get(str);
        Object obj2 = m3.f1108a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    public void a(Animator animator) {
        if (animator == null) {
            a();
            return;
        }
        if (b() >= 0) {
            animator.setDuration(b());
        }
        if (i() >= 0) {
            animator.setStartDelay(i());
        }
        if (d() != null) {
            animator.setInterpolator(d());
        }
        animator.addListener(new D(this));
        animator.start();
    }

    public void a() {
        this.B--;
        if (this.B == 0) {
            ArrayList<c> arrayList = this.E;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.E.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((c) arrayList2.get(i2)).c(this);
                }
            }
            for (int i3 = 0; i3 < this.s.f1113c.c(); i3++) {
                View c2 = this.s.f1113c.c(i3);
                if (c2 != null) {
                    z.b(c2, false);
                }
            }
            for (int i4 = 0; i4 < this.t.f1113c.c(); i4++) {
                View c3 = this.t.f1113c.c(i4);
                if (c3 != null) {
                    z.b(c3, false);
                }
            }
            this.D = true;
        }
    }

    public E a(c cVar) {
        if (this.E == null) {
            this.E = new ArrayList<>();
        }
        this.E.add(cVar);
        return this;
    }

    public void a(C0175v vVar) {
        if (vVar == null) {
            this.J = f1079b;
        } else {
            this.J = vVar;
        }
    }

    public void a(b bVar) {
        this.H = bVar;
    }

    public void a(I i2) {
        this.G = i2;
    }

    public String a(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f1083f != -1) {
            str2 = str2 + "dur(" + this.f1083f + ") ";
        }
        if (this.f1082e != -1) {
            str2 = str2 + "dly(" + this.f1082e + ") ";
        }
        if (this.f1084g != null) {
            str2 = str2 + "interp(" + this.f1084g + ") ";
        }
        if (this.f1085h.size() <= 0 && this.f1086i.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.f1085h.size() > 0) {
            String str4 = str3;
            for (int i2 = 0; i2 < this.f1085h.size(); i2++) {
                if (i2 > 0) {
                    str4 = str4 + ", ";
                }
                str4 = str4 + this.f1085h.get(i2);
            }
            str3 = str4;
        }
        if (this.f1086i.size() > 0) {
            for (int i3 = 0; i3 < this.f1086i.size(); i3++) {
                if (i3 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.f1086i.get(i3);
            }
        }
        return str3 + ")";
    }
}
