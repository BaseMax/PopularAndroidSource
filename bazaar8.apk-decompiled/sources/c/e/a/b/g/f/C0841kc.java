package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzeg;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* renamed from: c.e.a.b.g.f.kc  reason: case insensitive filesystem */
public final class C0841kc {

    /* renamed from: a  reason: collision with root package name */
    public static final Class<?> f10445a = d();

    /* renamed from: b  reason: collision with root package name */
    public static final C0900zc<?, ?> f10446b = a(false);

    /* renamed from: c  reason: collision with root package name */
    public static final C0900zc<?, ?> f10447c = a(true);

    /* renamed from: d  reason: collision with root package name */
    public static final C0900zc<?, ?> f10448d = new Bc();

    public static void a(Class<?> cls) {
        if (!C0852nb.class.isAssignableFrom(cls)) {
            Class<?> cls2 = f10445a;
            if (cls2 != null && !cls2.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            }
        }
    }

    public static void b(int i2, List<Float> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.n(i2, list, z);
        }
    }

    public static void c(int i2, List<Long> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.d(i2, list, z);
        }
    }

    public static void d(int i2, List<Long> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.k(i2, list, z);
        }
    }

    public static void e(int i2, List<Long> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.j(i2, list, z);
        }
    }

    public static void f(int i2, List<Long> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.i(i2, list, z);
        }
    }

    public static void g(int i2, List<Long> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.e(i2, list, z);
        }
    }

    public static void h(int i2, List<Integer> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.b(i2, list, z);
        }
    }

    public static void i(int i2, List<Integer> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.g(i2, list, z);
        }
    }

    public static void j(int i2, List<Integer> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.l(i2, list, z);
        }
    }

    public static void k(int i2, List<Integer> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.f(i2, list, z);
        }
    }

    public static void l(int i2, List<Integer> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.h(i2, list, z);
        }
    }

    public static void m(int i2, List<Integer> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.c(i2, list, z);
        }
    }

    public static void n(int i2, List<Boolean> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.a(i2, list, z);
        }
    }

    public static void b(int i2, List<zzdp> list, Oc oc) {
        if (list != null && !list.isEmpty()) {
            oc.a(i2, list);
        }
    }

    public static int c(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return f(list) + (size * zzeg.e(i2));
    }

    public static int d(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Hb) {
            Hb hb = (Hb) list;
            i2 = 0;
            while (i3 < size) {
                i2 += zzeg.d(hb.getLong(i3));
                i3++;
            }
        } else {
            int i4 = 0;
            while (i3 < size) {
                i4 = i2 + zzeg.d(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    public static int e(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Hb) {
            Hb hb = (Hb) list;
            i2 = 0;
            while (i3 < size) {
                i2 += zzeg.e(hb.getLong(i3));
                i3++;
            }
        } else {
            int i4 = 0;
            while (i3 < size) {
                i4 = i2 + zzeg.e(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    public static int f(List<Long> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Hb) {
            Hb hb = (Hb) list;
            i2 = 0;
            while (i3 < size) {
                i2 += zzeg.f(hb.getLong(i3));
                i3++;
            }
        } else {
            int i4 = 0;
            while (i3 < size) {
                i4 = i2 + zzeg.f(list.get(i3).longValue());
                i3++;
            }
        }
        return i2;
    }

    public static int g(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0860pb) {
            C0860pb pbVar = (C0860pb) list;
            i2 = 0;
            while (i3 < size) {
                i2 += zzeg.k(pbVar.a(i3));
                i3++;
            }
        } else {
            int i4 = 0;
            while (i3 < size) {
                i4 = i2 + zzeg.k(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    public static int h(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0860pb) {
            C0860pb pbVar = (C0860pb) list;
            i2 = 0;
            while (i3 < size) {
                i2 += zzeg.f(pbVar.a(i3));
                i3++;
            }
        } else {
            int i4 = 0;
            while (i3 < size) {
                i4 = i2 + zzeg.f(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    public static int i(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0860pb) {
            C0860pb pbVar = (C0860pb) list;
            i2 = 0;
            while (i3 < size) {
                i2 += zzeg.g(pbVar.a(i3));
                i3++;
            }
        } else {
            int i4 = 0;
            while (i3 < size) {
                i4 = i2 + zzeg.g(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    public static int j(List<Integer> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0860pb) {
            C0860pb pbVar = (C0860pb) list;
            i2 = 0;
            while (i3 < size) {
                i2 += zzeg.h(pbVar.a(i3));
                i3++;
            }
        } else {
            int i4 = 0;
            while (i3 < size) {
                i4 = i2 + zzeg.h(list.get(i3).intValue());
                i3++;
            }
        }
        return i2;
    }

    public static void a(int i2, List<Double> list, Oc oc, boolean z) {
        if (list != null && !list.isEmpty()) {
            oc.m(i2, list, z);
        }
    }

    public static void b(int i2, List<?> list, Oc oc, C0829hc hcVar) {
        if (list != null && !list.isEmpty()) {
            oc.a(i2, list, hcVar);
        }
    }

    public static void a(int i2, List<String> list, Oc oc) {
        if (list != null && !list.isEmpty()) {
            oc.b(i2, list);
        }
    }

    public static int c(List<?> list) {
        return list.size();
    }

    public static int b(int i2, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return e(list) + (size * zzeg.e(i2));
    }

    public static C0900zc<?, ?> c() {
        return f10448d;
    }

    public static void a(int i2, List<?> list, Oc oc, C0829hc hcVar) {
        if (list != null && !list.isEmpty()) {
            oc.b(i2, list, hcVar);
        }
    }

    public static int d(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return g(list) + (size * zzeg.e(i2));
    }

    public static int e(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return h(list) + (size * zzeg.e(i2));
    }

    public static int f(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return i(list) + (size * zzeg.e(i2));
    }

    public static int g(int i2, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return j(list) + (size * zzeg.e(i2));
    }

    public static int h(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzeg.i(i2, 0);
    }

    public static int i(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzeg.g(i2, 0);
    }

    public static int j(int i2, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzeg.b(i2, true);
    }

    public static int a(int i2, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return d(list) + (list.size() * zzeg.e(i2));
    }

    public static int b(List<?> list) {
        return list.size() << 3;
    }

    public static int b(int i2, List<zzdp> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e2 = size * zzeg.e(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            e2 += zzeg.a(list.get(i3));
        }
        return e2;
    }

    public static Class<?> d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Class<?> e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int a(List<?> list) {
        return list.size() << 2;
    }

    public static int a(int i2, List<?> list) {
        int i3;
        int i4;
        int size = list.size();
        int i5 = 0;
        if (size == 0) {
            return 0;
        }
        int e2 = zzeg.e(i2) * size;
        if (list instanceof Cb) {
            Cb cb = (Cb) list;
            while (i5 < size) {
                Object d2 = cb.d(i5);
                if (d2 instanceof zzdp) {
                    i4 = zzeg.a((zzdp) d2);
                } else {
                    i4 = zzeg.a((String) d2);
                }
                e2 += i4;
                i5++;
            }
        } else {
            while (i5 < size) {
                Object obj = list.get(i5);
                if (obj instanceof zzdp) {
                    i3 = zzeg.a((zzdp) obj);
                } else {
                    i3 = zzeg.a((String) obj);
                }
                e2 += i3;
                i5++;
            }
        }
        return e2;
    }

    public static int b(int i2, List<Sb> list, C0829hc hcVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i3 += zzeg.c(i2, list.get(i4), hcVar);
        }
        return i3;
    }

    public static C0900zc<?, ?> b() {
        return f10447c;
    }

    public static int a(int i2, Object obj, C0829hc hcVar) {
        if (obj instanceof Ab) {
            return zzeg.a(i2, (Ab) obj);
        }
        return zzeg.b(i2, (Sb) obj, hcVar);
    }

    public static int a(int i2, List<?> list, C0829hc hcVar) {
        int i3;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e2 = zzeg.e(i2) * size;
        for (int i4 = 0; i4 < size; i4++) {
            Object obj = list.get(i4);
            if (obj instanceof Ab) {
                i3 = zzeg.a((Ab) obj);
            } else {
                i3 = zzeg.a((Sb) obj, hcVar);
            }
            e2 += i3;
        }
        return e2;
    }

    public static C0900zc<?, ?> a() {
        return f10446b;
    }

    public static C0900zc<?, ?> a(boolean z) {
        try {
            Class<?> e2 = e();
            if (e2 == null) {
                return null;
            }
            return (C0900zc) e2.getConstructor(new Class[]{Boolean.TYPE}).newInstance(new Object[]{Boolean.valueOf(z)});
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <T> void a(Nb nb, T t, T t2, long j2) {
        Fc.a((Object) t, j2, nb.a(Fc.f(t, j2), Fc.f(t2, j2)));
    }

    public static <T, FT extends C0832ib<FT>> void a(C0812db<FT> dbVar, T t, T t2) {
        C0824gb<FT> a2 = dbVar.a((Object) t2);
        if (!a2.b()) {
            dbVar.b(t).a(a2);
        }
    }

    public static <T, UT, UB> void a(C0900zc<UT, UB> zcVar, T t, T t2) {
        zcVar.a((Object) t, zcVar.c(zcVar.d(t), zcVar.d(t2)));
    }

    public static <UT, UB> UB a(int i2, List<Integer> list, C0875tb tbVar, UB ub, C0900zc<UT, UB> zcVar) {
        UB ub2;
        if (tbVar == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it = list.iterator();
            loop1:
            while (true) {
                ub2 = ub;
                while (it.hasNext()) {
                    int intValue = it.next().intValue();
                    if (!tbVar.a(intValue)) {
                        ub = a(i2, intValue, ub2, zcVar);
                        it.remove();
                    }
                }
                break loop1;
            }
        } else {
            int size = list.size();
            ub2 = ub;
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                int intValue2 = list.get(i4).intValue();
                if (tbVar.a(intValue2)) {
                    if (i4 != i3) {
                        list.set(i3, Integer.valueOf(intValue2));
                    }
                    i3++;
                } else {
                    ub2 = a(i2, intValue2, ub2, zcVar);
                }
            }
            if (i3 != size) {
                list.subList(i3, size).clear();
            }
        }
        return ub2;
    }

    public static <UT, UB> UB a(int i2, int i3, UB ub, C0900zc<UT, UB> zcVar) {
        if (ub == null) {
            ub = zcVar.a();
        }
        zcVar.a(ub, i2, (long) i3);
        return ub;
    }
}
