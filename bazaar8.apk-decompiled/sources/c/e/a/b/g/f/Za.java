package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;
import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzeg;
import java.util.List;

public final class Za implements Oc {

    /* renamed from: a  reason: collision with root package name */
    public final zzeg f10301a;

    public Za(zzeg zzeg) {
        C0864qb.a(zzeg, "output");
        this.f10301a = zzeg;
        this.f10301a.f13176c = this;
    }

    public static Za a(zzeg zzeg) {
        Za za = zzeg.f13176c;
        if (za != null) {
            return za;
        }
        return new Za(zzeg);
    }

    public final void b(int i2, int i3) {
        this.f10301a.b(i2, i3);
    }

    public final void c(int i2, long j2) {
        this.f10301a.c(i2, j2);
    }

    public final void d(int i2, long j2) {
        this.f10301a.a(i2, j2);
    }

    public final void e(int i2, int i3) {
        this.f10301a.e(i2, i3);
    }

    public final void f(int i2, int i3) {
        this.f10301a.d(i2, i3);
    }

    public final void g(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.g(list.get(i5).intValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.b(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.c(i2, list.get(i3).intValue());
            i3++;
        }
    }

    public final void h(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.j(list.get(i5).intValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.d(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.e(i2, list.get(i3).intValue());
            i3++;
        }
    }

    public final void i(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.g(list.get(i5).longValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.c(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.c(i2, list.get(i3).longValue());
            i3++;
        }
    }

    public final void j(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.f(list.get(i5).longValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.b(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.b(i2, list.get(i3).longValue());
            i3++;
        }
    }

    public final void k(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.e(list.get(i5).longValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.a(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.a(i2, list.get(i3).longValue());
            i3++;
        }
    }

    public final void l(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.h(list.get(i5).intValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.c(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.d(i2, list.get(i3).intValue());
            i3++;
        }
    }

    public final void m(int i2, List<Double> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.b(list.get(i5).doubleValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.a(list.get(i3).doubleValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.a(i2, list.get(i3).doubleValue());
            i3++;
        }
    }

    public final void n(int i2, List<Float> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.b(list.get(i5).floatValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.a(list.get(i3).floatValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.a(i2, list.get(i3).floatValue());
            i3++;
        }
    }

    public final void c(int i2, int i3) {
        this.f10301a.e(i2, i3);
    }

    public final void f(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.i(list.get(i5).intValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.d(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.e(i2, list.get(i3).intValue());
            i3++;
        }
    }

    public final int a() {
        return C0852nb.e.f10483l;
    }

    public final void b(int i2, long j2) {
        this.f10301a.b(i2, j2);
    }

    public final void c(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.k(list.get(i5).intValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.a(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.b(i2, list.get(i3).intValue());
            i3++;
        }
    }

    public final void d(int i2, int i3) {
        this.f10301a.c(i2, i3);
    }

    public final void e(int i2, long j2) {
        this.f10301a.a(i2, j2);
    }

    public final void a(int i2, long j2) {
        this.f10301a.c(i2, j2);
    }

    public final void b(int i2, Object obj, C0829hc hcVar) {
        this.f10301a.a(i2, (Sb) obj, hcVar);
    }

    public final void d(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.d(list.get(i5).longValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.a(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.a(i2, list.get(i3).longValue());
            i3++;
        }
    }

    public final void e(int i2, List<Long> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.h(list.get(i5).longValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.c(list.get(i3).longValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.c(i2, list.get(i3).longValue());
            i3++;
        }
    }

    public final void b(int i2) {
        this.f10301a.a(i2, 4);
    }

    public final void a(int i2, float f2) {
        this.f10301a.a(i2, f2);
    }

    public final void b(int i2, List<Integer> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.f(list.get(i5).intValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.a(list.get(i3).intValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.b(i2, list.get(i3).intValue());
            i3++;
        }
    }

    public final void a(int i2, double d2) {
        this.f10301a.a(i2, d2);
    }

    public final void a(int i2, int i3) {
        this.f10301a.b(i2, i3);
    }

    public final void a(int i2, boolean z) {
        this.f10301a.a(i2, z);
    }

    public final void a(int i2, String str) {
        this.f10301a.a(i2, str);
    }

    public final void a(int i2, zzdp zzdp) {
        this.f10301a.a(i2, zzdp);
    }

    public final void a(int i2, Object obj, C0829hc hcVar) {
        zzeg zzeg = this.f10301a;
        zzeg.a(i2, 3);
        hcVar.a((Sb) obj, (Oc) zzeg.f13176c);
        zzeg.a(i2, 4);
    }

    public final void b(int i2, List<String> list) {
        int i3 = 0;
        if (list instanceof Cb) {
            Cb cb = (Cb) list;
            while (i3 < list.size()) {
                Object d2 = cb.d(i3);
                if (d2 instanceof String) {
                    this.f10301a.a(i2, (String) d2);
                } else {
                    this.f10301a.a(i2, (zzdp) d2);
                }
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.a(i2, list.get(i3));
            i3++;
        }
    }

    public final void a(int i2) {
        this.f10301a.a(i2, 3);
    }

    public final void a(int i2, Object obj) {
        if (obj instanceof zzdp) {
            this.f10301a.b(i2, (zzdp) obj);
        } else {
            this.f10301a.b(i2, (Sb) obj);
        }
    }

    public final void a(int i2, List<Boolean> list, boolean z) {
        int i3 = 0;
        if (z) {
            this.f10301a.a(i2, 2);
            int i4 = 0;
            for (int i5 = 0; i5 < list.size(); i5++) {
                i4 += zzeg.b(list.get(i5).booleanValue());
            }
            this.f10301a.b(i4);
            while (i3 < list.size()) {
                this.f10301a.a(list.get(i3).booleanValue());
                i3++;
            }
            return;
        }
        while (i3 < list.size()) {
            this.f10301a.a(i2, list.get(i3).booleanValue());
            i3++;
        }
    }

    public final void b(int i2, List<?> list, C0829hc hcVar) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            b(i2, (Object) list.get(i3), hcVar);
        }
    }

    public final void a(int i2, List<zzdp> list) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f10301a.a(i2, list.get(i3));
        }
    }

    public final void a(int i2, List<?> list, C0829hc hcVar) {
        for (int i3 = 0; i3 < list.size(); i3++) {
            a(i2, (Object) list.get(i3), hcVar);
        }
    }
}
