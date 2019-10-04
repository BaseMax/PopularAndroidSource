package b.o.a;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import b.f.C0243b;
import b.i.a.s;
import b.i.k.r;
import b.i.k.z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* compiled from: FragmentTransition */
public class H {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f3024a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b  reason: collision with root package name */
    public static final Q f3025b = (Build.VERSION.SDK_INT >= 21 ? new M() : null);

    /* renamed from: c  reason: collision with root package name */
    public static final Q f3026c = a();

    /* compiled from: FragmentTransition */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public Fragment f3027a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f3028b;

        /* renamed from: c  reason: collision with root package name */
        public C0277a f3029c;

        /* renamed from: d  reason: collision with root package name */
        public Fragment f3030d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f3031e;

        /* renamed from: f  reason: collision with root package name */
        public C0277a f3032f;
    }

    public static Q a() {
        try {
            return (Q) Class.forName("b.D.t").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void b(v vVar, int i2, a aVar, View view, C0243b<String, String> bVar) {
        Object obj;
        v vVar2 = vVar;
        a aVar2 = aVar;
        View view2 = view;
        ViewGroup viewGroup = vVar2.u.a() ? (ViewGroup) vVar2.u.a(i2) : null;
        if (viewGroup != null) {
            Fragment fragment = aVar2.f3027a;
            Fragment fragment2 = aVar2.f3030d;
            Q a2 = a(fragment2, fragment);
            if (a2 != null) {
                boolean z = aVar2.f3028b;
                boolean z2 = aVar2.f3031e;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Object a3 = a(a2, fragment, z);
                Object b2 = b(a2, fragment2, z2);
                ViewGroup viewGroup2 = viewGroup;
                ArrayList arrayList3 = arrayList2;
                Object b3 = b(a2, viewGroup, view, bVar, aVar, arrayList2, arrayList, a3, b2);
                Object obj2 = a3;
                if (obj2 == null && b3 == null) {
                    obj = b2;
                    if (obj == null) {
                        return;
                    }
                } else {
                    obj = b2;
                }
                ArrayList<View> a4 = a(a2, obj, fragment2, (ArrayList<View>) arrayList3, view2);
                ArrayList<View> a5 = a(a2, obj2, fragment, (ArrayList<View>) arrayList, view2);
                a(a5, 4);
                Fragment fragment3 = fragment;
                ArrayList<View> arrayList4 = a4;
                Object a6 = a(a2, obj2, obj, b3, fragment3, z);
                if (a6 != null) {
                    a(a2, obj, fragment2, arrayList4);
                    ArrayList<String> a7 = a2.a((ArrayList<View>) arrayList);
                    a2.a(a6, obj2, a5, obj, arrayList4, b3, arrayList);
                    ViewGroup viewGroup3 = viewGroup2;
                    a2.a(viewGroup3, a6);
                    a2.a(viewGroup3, arrayList3, arrayList, a7, bVar);
                    a(a5, 0);
                    a2.b(b3, (ArrayList<View>) arrayList3, (ArrayList<View>) arrayList);
                }
            }
        }
    }

    public static void a(v vVar, ArrayList<C0277a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, boolean z) {
        if (vVar.s >= 1) {
            SparseArray sparseArray = new SparseArray();
            for (int i4 = i2; i4 < i3; i4++) {
                C0277a aVar = arrayList.get(i4);
                if (arrayList2.get(i4).booleanValue()) {
                    b(aVar, (SparseArray<a>) sparseArray, z);
                } else {
                    a(aVar, (SparseArray<a>) sparseArray, z);
                }
            }
            if (sparseArray.size() != 0) {
                View view = new View(vVar.t.f());
                int size = sparseArray.size();
                for (int i5 = 0; i5 < size; i5++) {
                    int keyAt = sparseArray.keyAt(i5);
                    C0243b<String, String> a2 = a(keyAt, arrayList, arrayList2, i2, i3);
                    a aVar2 = (a) sparseArray.valueAt(i5);
                    if (z) {
                        b(vVar, keyAt, aVar2, view, a2);
                    } else {
                        a(vVar, keyAt, aVar2, view, a2);
                    }
                }
            }
        }
    }

    public static C0243b<String, String> a(int i2, ArrayList<C0277a> arrayList, ArrayList<Boolean> arrayList2, int i3, int i4) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        C0243b<String, String> bVar = new C0243b<>();
        for (int i5 = i4 - 1; i5 >= i3; i5--) {
            C0277a aVar = arrayList.get(i5);
            if (aVar.b(i2)) {
                boolean booleanValue = arrayList2.get(i5).booleanValue();
                ArrayList<String> arrayList5 = aVar.o;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (booleanValue) {
                        arrayList3 = aVar.o;
                        arrayList4 = aVar.p;
                    } else {
                        ArrayList<String> arrayList6 = aVar.o;
                        arrayList3 = aVar.p;
                        arrayList4 = arrayList6;
                    }
                    for (int i6 = 0; i6 < size; i6++) {
                        String str = arrayList4.get(i6);
                        String str2 = arrayList3.get(i6);
                        String remove = bVar.remove(str2);
                        if (remove != null) {
                            bVar.put(str, remove);
                        } else {
                            bVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return bVar;
    }

    public static Object b(Q q, Fragment fragment, boolean z) {
        Object obj;
        if (fragment == null) {
            return null;
        }
        if (z) {
            obj = fragment.U();
        } else {
            obj = fragment.H();
        }
        return q.b(obj);
    }

    public static Object b(Q q, ViewGroup viewGroup, View view, C0243b<String, String> bVar, a aVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        Object obj4;
        Rect rect;
        View view2;
        Q q2 = q;
        View view3 = view;
        C0243b<String, String> bVar2 = bVar;
        a aVar2 = aVar;
        ArrayList<View> arrayList3 = arrayList;
        ArrayList<View> arrayList4 = arrayList2;
        Object obj5 = obj;
        Fragment fragment = aVar2.f3027a;
        Fragment fragment2 = aVar2.f3030d;
        if (fragment != null) {
            fragment.Ja().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = aVar2.f3028b;
        if (bVar.isEmpty()) {
            obj3 = null;
        } else {
            obj3 = a(q, fragment, fragment2, z);
        }
        C0243b<String, View> b2 = b(q, bVar2, obj3, aVar2);
        C0243b<String, View> a2 = a(q, bVar2, obj3, aVar2);
        if (bVar.isEmpty()) {
            if (b2 != null) {
                b2.clear();
            }
            if (a2 != null) {
                a2.clear();
            }
            obj4 = null;
        } else {
            a(arrayList3, b2, (Collection<String>) bVar.keySet());
            a(arrayList4, a2, bVar.values());
            obj4 = obj3;
        }
        if (obj5 == null && obj2 == null && obj4 == null) {
            return null;
        }
        a(fragment, fragment2, z, b2, true);
        if (obj4 != null) {
            arrayList4.add(view3);
            q.b(obj4, view3, arrayList3);
            a(q, obj4, obj2, b2, aVar2.f3031e, aVar2.f3032f);
            Rect rect2 = new Rect();
            View a3 = a(a2, aVar2, obj5, z);
            if (a3 != null) {
                q.a(obj5, rect2);
            }
            rect = rect2;
            view2 = a3;
        } else {
            view2 = null;
            rect = null;
        }
        F f2 = new F(fragment, fragment2, z, a2, view2, q, rect);
        r.a(viewGroup, f2);
        return obj4;
    }

    public static void a(Q q, Object obj, Fragment fragment, ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.f668l && fragment.z && fragment.O) {
            fragment.h(true);
            q.a(obj, fragment.aa(), arrayList);
            r.a(fragment.G, new D(arrayList));
        }
    }

    public static void a(v vVar, int i2, a aVar, View view, C0243b<String, String> bVar) {
        Object obj;
        v vVar2 = vVar;
        a aVar2 = aVar;
        View view2 = view;
        C0243b<String, String> bVar2 = bVar;
        ViewGroup viewGroup = vVar2.u.a() ? (ViewGroup) vVar2.u.a(i2) : null;
        if (viewGroup != null) {
            Fragment fragment = aVar2.f3027a;
            Fragment fragment2 = aVar2.f3030d;
            Q a2 = a(fragment2, fragment);
            if (a2 != null) {
                boolean z = aVar2.f3028b;
                boolean z2 = aVar2.f3031e;
                Object a3 = a(a2, fragment, z);
                Object b2 = b(a2, fragment2, z2);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = arrayList;
                Object obj2 = b2;
                Q q = a2;
                Object a4 = a(a2, viewGroup, view, bVar, aVar, (ArrayList<View>) arrayList, (ArrayList<View>) arrayList2, a3, obj2);
                Object obj3 = a3;
                if (obj3 == null && a4 == null) {
                    obj = obj2;
                    if (obj == null) {
                        return;
                    }
                } else {
                    obj = obj2;
                }
                ArrayList<View> a5 = a(q, obj, fragment2, (ArrayList<View>) arrayList3, view2);
                Object obj4 = (a5 == null || a5.isEmpty()) ? null : obj;
                q.a(obj3, view2);
                Object a6 = a(q, obj3, obj4, a4, fragment, aVar2.f3028b);
                if (a6 != null) {
                    ArrayList arrayList4 = new ArrayList();
                    Q q2 = q;
                    q2.a(a6, obj3, arrayList4, obj4, a5, a4, arrayList2);
                    a(q2, viewGroup, fragment, view, (ArrayList<View>) arrayList2, obj3, (ArrayList<View>) arrayList4, obj4, a5);
                    ArrayList arrayList5 = arrayList2;
                    q.a((View) viewGroup, (ArrayList<View>) arrayList5, (Map<String, String>) bVar2);
                    q.a(viewGroup, a6);
                    q.a(viewGroup, (ArrayList<View>) arrayList5, (Map<String, String>) bVar2);
                }
            }
        }
    }

    public static C0243b<String, View> b(Q q, C0243b<String, String> bVar, Object obj, a aVar) {
        s sVar;
        ArrayList<String> arrayList;
        if (bVar.isEmpty() || obj == null) {
            bVar.clear();
            return null;
        }
        Fragment fragment = aVar.f3030d;
        C0243b<String, View> bVar2 = new C0243b<>();
        q.a((Map<String, View>) bVar2, fragment.Ja());
        C0277a aVar2 = aVar.f3032f;
        if (aVar.f3031e) {
            sVar = fragment.G();
            arrayList = aVar2.p;
        } else {
            sVar = fragment.I();
            arrayList = aVar2.o;
        }
        bVar2.a(arrayList);
        if (sVar != null) {
            sVar.a(arrayList, bVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = bVar2.get(str);
                if (view == null) {
                    bVar.remove(str);
                } else if (!str.equals(z.r(view))) {
                    bVar.put(z.r(view), bVar.remove(str));
                }
            }
        } else {
            bVar.a(bVar2.keySet());
        }
        return bVar2;
    }

    public static void a(Q q, ViewGroup viewGroup, Fragment fragment, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        E e2 = new E(obj, q, view, fragment, arrayList, arrayList2, arrayList3, obj2);
        ViewGroup viewGroup2 = viewGroup;
        r.a(viewGroup, e2);
    }

    public static Q a(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object H = fragment.H();
            if (H != null) {
                arrayList.add(H);
            }
            Object U = fragment.U();
            if (U != null) {
                arrayList.add(U);
            }
            Object W = fragment.W();
            if (W != null) {
                arrayList.add(W);
            }
        }
        if (fragment2 != null) {
            Object F = fragment2.F();
            if (F != null) {
                arrayList.add(F);
            }
            Object R = fragment2.R();
            if (R != null) {
                arrayList.add(R);
            }
            Object V = fragment2.V();
            if (V != null) {
                arrayList.add(V);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        Q q = f3025b;
        if (q != null && a(q, (List<Object>) arrayList)) {
            return f3025b;
        }
        Q q2 = f3026c;
        if (q2 != null && a(q2, (List<Object>) arrayList)) {
            return f3026c;
        }
        if (f3025b == null && f3026c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    public static void b(C0277a aVar, SparseArray<a> sparseArray, boolean z) {
        if (aVar.s.u.a()) {
            for (int size = aVar.f2976a.size() - 1; size >= 0; size--) {
                a(aVar, aVar.f2976a.get(size), sparseArray, true, z);
            }
        }
    }

    public static boolean b() {
        return (f3025b == null && f3026c == null) ? false : true;
    }

    public static boolean a(Q q, List<Object> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!q.a(list.get(i2))) {
                return false;
            }
        }
        return true;
    }

    public static Object a(Q q, Fragment fragment, Fragment fragment2, boolean z) {
        Object obj;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        if (z) {
            obj = fragment2.W();
        } else {
            obj = fragment.V();
        }
        return q.c(q.b(obj));
    }

    public static Object a(Q q, Fragment fragment, boolean z) {
        Object obj;
        if (fragment == null) {
            return null;
        }
        if (z) {
            obj = fragment.R();
        } else {
            obj = fragment.F();
        }
        return q.b(obj);
    }

    public static void a(ArrayList<View> arrayList, C0243b<String, View> bVar, Collection<String> collection) {
        for (int size = bVar.size() - 1; size >= 0; size--) {
            View e2 = bVar.e(size);
            if (collection.contains(z.r(e2))) {
                arrayList.add(e2);
            }
        }
    }

    public static Object a(Q q, ViewGroup viewGroup, View view, C0243b<String, String> bVar, a aVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        C0243b<String, String> bVar2;
        Object obj3;
        Object obj4;
        Rect rect;
        Q q2 = q;
        a aVar2 = aVar;
        ArrayList<View> arrayList3 = arrayList;
        Object obj5 = obj;
        Fragment fragment = aVar2.f3027a;
        Fragment fragment2 = aVar2.f3030d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z = aVar2.f3028b;
        if (bVar.isEmpty()) {
            bVar2 = bVar;
            obj3 = null;
        } else {
            obj3 = a(q2, fragment, fragment2, z);
            bVar2 = bVar;
        }
        C0243b<String, View> b2 = b(q2, bVar2, obj3, aVar2);
        if (bVar.isEmpty()) {
            obj4 = null;
        } else {
            arrayList3.addAll(b2.values());
            obj4 = obj3;
        }
        if (obj5 == null && obj2 == null && obj4 == null) {
            return null;
        }
        a(fragment, fragment2, z, b2, true);
        if (obj4 != null) {
            rect = new Rect();
            q2.b(obj4, view, arrayList3);
            a(q, obj4, obj2, b2, aVar2.f3031e, aVar2.f3032f);
            if (obj5 != null) {
                q2.a(obj5, rect);
            }
        } else {
            rect = null;
        }
        G g2 = r0;
        G g3 = new G(q, bVar, obj4, aVar, arrayList2, view, fragment, fragment2, z, arrayList, obj, rect);
        r.a(viewGroup, g2);
        return obj4;
    }

    public static C0243b<String, View> a(Q q, C0243b<String, String> bVar, Object obj, a aVar) {
        s sVar;
        ArrayList<String> arrayList;
        Fragment fragment = aVar.f3027a;
        View aa = fragment.aa();
        if (bVar.isEmpty() || obj == null || aa == null) {
            bVar.clear();
            return null;
        }
        C0243b<String, View> bVar2 = new C0243b<>();
        q.a((Map<String, View>) bVar2, aa);
        C0277a aVar2 = aVar.f3029c;
        if (aVar.f3028b) {
            sVar = fragment.I();
            arrayList = aVar2.o;
        } else {
            sVar = fragment.G();
            arrayList = aVar2.p;
        }
        if (arrayList != null) {
            bVar2.a(arrayList);
            bVar2.a(bVar.values());
        }
        if (sVar != null) {
            sVar.a(arrayList, bVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = bVar2.get(str);
                if (view == null) {
                    String a2 = a(bVar, str);
                    if (a2 != null) {
                        bVar.remove(a2);
                    }
                } else if (!str.equals(z.r(view))) {
                    String a3 = a(bVar, str);
                    if (a3 != null) {
                        bVar.put(a3, z.r(view));
                    }
                }
            }
        } else {
            a(bVar, bVar2);
        }
        return bVar2;
    }

    public static String a(C0243b<String, String> bVar, String str) {
        int size = bVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (str.equals(bVar.e(i2))) {
                return bVar.c(i2);
            }
        }
        return null;
    }

    public static View a(C0243b<String, View> bVar, a aVar, Object obj, boolean z) {
        String str;
        C0277a aVar2 = aVar.f3029c;
        if (!(obj == null || bVar == null)) {
            ArrayList<String> arrayList = aVar2.o;
            if (arrayList != null && !arrayList.isEmpty()) {
                if (z) {
                    str = aVar2.o.get(0);
                } else {
                    str = aVar2.p.get(0);
                }
                return bVar.get(str);
            }
        }
        return null;
    }

    public static void a(Q q, Object obj, Object obj2, C0243b<String, View> bVar, boolean z, C0277a aVar) {
        String str;
        ArrayList<String> arrayList = aVar.o;
        if (arrayList != null && !arrayList.isEmpty()) {
            if (z) {
                str = aVar.p.get(0);
            } else {
                str = aVar.o.get(0);
            }
            View view = bVar.get(str);
            q.c(obj, view);
            if (obj2 != null) {
                q.c(obj2, view);
            }
        }
    }

    public static void a(C0243b<String, String> bVar, C0243b<String, View> bVar2) {
        for (int size = bVar.size() - 1; size >= 0; size--) {
            if (!bVar2.containsKey(bVar.e(size))) {
                bVar.d(size);
            }
        }
    }

    public static void a(Fragment fragment, Fragment fragment2, boolean z, C0243b<String, View> bVar, boolean z2) {
        s sVar;
        int i2;
        if (z) {
            sVar = fragment2.G();
        } else {
            sVar = fragment.G();
        }
        if (sVar != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (bVar == null) {
                i2 = 0;
            } else {
                i2 = bVar.size();
            }
            for (int i3 = 0; i3 < i2; i3++) {
                arrayList2.add(bVar.c(i3));
                arrayList.add(bVar.e(i3));
            }
            if (z2) {
                sVar.b(arrayList2, arrayList, null);
            } else {
                sVar.a(arrayList2, arrayList, null);
            }
        }
    }

    public static ArrayList<View> a(Q q, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View aa = fragment.aa();
        if (aa != null) {
            q.a(arrayList2, aa);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        q.a(obj, arrayList2);
        return arrayList2;
    }

    public static void a(ArrayList<View> arrayList, int i2) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).setVisibility(i2);
            }
        }
    }

    public static Object a(Q q, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        boolean z2;
        if (obj == null || obj2 == null || fragment == null) {
            z2 = true;
        } else {
            z2 = z ? fragment.z() : fragment.y();
        }
        if (z2) {
            return q.b(obj2, obj, obj3);
        }
        return q.a(obj2, obj, obj3);
    }

    public static void a(C0277a aVar, SparseArray<a> sparseArray, boolean z) {
        int size = aVar.f2976a.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(aVar, aVar.f2976a.get(i2), sparseArray, false, z);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0041, code lost:
        if (r10.f668l != false) goto L_0x0094;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0074, code lost:
        if (r10.P >= 0.0f) goto L_0x0076;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0076, code lost:
        r1 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0080, code lost:
        if (r10.z == false) goto L_0x0076;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0092, code lost:
        if (r10.z == false) goto L_0x0094;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0094, code lost:
        r1 = true;
     */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x00a2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(b.o.a.C0277a r16, b.o.a.C.a r17, android.util.SparseArray<b.o.a.H.a> r18, boolean r19, boolean r20) {
        /*
            r0 = r16
            r1 = r17
            r2 = r18
            r3 = r19
            androidx.fragment.app.Fragment r10 = r1.f2989b
            if (r10 != 0) goto L_0x000d
            return
        L_0x000d:
            int r11 = r10.x
            if (r11 != 0) goto L_0x0012
            return
        L_0x0012:
            if (r3 == 0) goto L_0x001b
            int[] r4 = f3024a
            int r1 = r1.f2988a
            r1 = r4[r1]
            goto L_0x001d
        L_0x001b:
            int r1 = r1.f2988a
        L_0x001d:
            r4 = 0
            r5 = 1
            if (r1 == r5) goto L_0x0087
            r6 = 3
            if (r1 == r6) goto L_0x005f
            r6 = 4
            if (r1 == r6) goto L_0x0047
            r6 = 5
            if (r1 == r6) goto L_0x0035
            r6 = 6
            if (r1 == r6) goto L_0x005f
            r6 = 7
            if (r1 == r6) goto L_0x0087
            r1 = 0
        L_0x0031:
            r12 = 0
            r13 = 0
            goto L_0x009a
        L_0x0035:
            if (r20 == 0) goto L_0x0044
            boolean r1 = r10.O
            if (r1 == 0) goto L_0x0096
            boolean r1 = r10.z
            if (r1 != 0) goto L_0x0096
            boolean r1 = r10.f668l
            if (r1 == 0) goto L_0x0096
            goto L_0x0094
        L_0x0044:
            boolean r1 = r10.z
            goto L_0x0097
        L_0x0047:
            if (r20 == 0) goto L_0x0056
            boolean r1 = r10.O
            if (r1 == 0) goto L_0x0078
            boolean r1 = r10.f668l
            if (r1 == 0) goto L_0x0078
            boolean r1 = r10.z
            if (r1 == 0) goto L_0x0078
        L_0x0055:
            goto L_0x0076
        L_0x0056:
            boolean r1 = r10.f668l
            if (r1 == 0) goto L_0x0078
            boolean r1 = r10.z
            if (r1 != 0) goto L_0x0078
            goto L_0x0055
        L_0x005f:
            if (r20 == 0) goto L_0x007a
            boolean r1 = r10.f668l
            if (r1 != 0) goto L_0x0078
            android.view.View r1 = r10.H
            if (r1 == 0) goto L_0x0078
            int r1 = r1.getVisibility()
            if (r1 != 0) goto L_0x0078
            float r1 = r10.P
            r6 = 0
            int r1 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r1 < 0) goto L_0x0078
        L_0x0076:
            r1 = 1
            goto L_0x0083
        L_0x0078:
            r1 = 0
            goto L_0x0083
        L_0x007a:
            boolean r1 = r10.f668l
            if (r1 == 0) goto L_0x0078
            boolean r1 = r10.z
            if (r1 != 0) goto L_0x0078
            goto L_0x0076
        L_0x0083:
            r13 = r1
            r1 = 0
            r12 = 1
            goto L_0x009a
        L_0x0087:
            if (r20 == 0) goto L_0x008c
            boolean r1 = r10.N
            goto L_0x0097
        L_0x008c:
            boolean r1 = r10.f668l
            if (r1 != 0) goto L_0x0096
            boolean r1 = r10.z
            if (r1 != 0) goto L_0x0096
        L_0x0094:
            r1 = 1
            goto L_0x0097
        L_0x0096:
            r1 = 0
        L_0x0097:
            r4 = r1
            r1 = 1
            goto L_0x0031
        L_0x009a:
            java.lang.Object r6 = r2.get(r11)
            b.o.a.H$a r6 = (b.o.a.H.a) r6
            if (r4 == 0) goto L_0x00ac
            b.o.a.H$a r6 = a((b.o.a.H.a) r6, (android.util.SparseArray<b.o.a.H.a>) r2, (int) r11)
            r6.f3027a = r10
            r6.f3028b = r3
            r6.f3029c = r0
        L_0x00ac:
            r14 = r6
            r15 = 0
            if (r20 != 0) goto L_0x00d3
            if (r1 == 0) goto L_0x00d3
            if (r14 == 0) goto L_0x00ba
            androidx.fragment.app.Fragment r1 = r14.f3030d
            if (r1 != r10) goto L_0x00ba
            r14.f3030d = r15
        L_0x00ba:
            b.o.a.v r4 = r0.s
            int r1 = r10.f658b
            if (r1 >= r5) goto L_0x00d3
            int r1 = r4.s
            if (r1 < r5) goto L_0x00d3
            boolean r1 = r0.q
            if (r1 != 0) goto L_0x00d3
            r4.m(r10)
            r6 = 1
            r7 = 0
            r8 = 0
            r9 = 0
            r5 = r10
            r4.a((androidx.fragment.app.Fragment) r5, (int) r6, (int) r7, (int) r8, (boolean) r9)
        L_0x00d3:
            if (r13 == 0) goto L_0x00e5
            if (r14 == 0) goto L_0x00db
            androidx.fragment.app.Fragment r1 = r14.f3030d
            if (r1 != 0) goto L_0x00e5
        L_0x00db:
            b.o.a.H$a r14 = a((b.o.a.H.a) r14, (android.util.SparseArray<b.o.a.H.a>) r2, (int) r11)
            r14.f3030d = r10
            r14.f3031e = r3
            r14.f3032f = r0
        L_0x00e5:
            if (r20 != 0) goto L_0x00f1
            if (r12 == 0) goto L_0x00f1
            if (r14 == 0) goto L_0x00f1
            androidx.fragment.app.Fragment r0 = r14.f3027a
            if (r0 != r10) goto L_0x00f1
            r14.f3027a = r15
        L_0x00f1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.o.a.H.a(b.o.a.a, b.o.a.C$a, android.util.SparseArray, boolean, boolean):void");
    }

    public static a a(a aVar, SparseArray<a> sparseArray, int i2) {
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        sparseArray.put(i2, aVar2);
        return aVar2;
    }
}
