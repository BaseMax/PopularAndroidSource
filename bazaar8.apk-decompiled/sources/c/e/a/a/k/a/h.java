package c.e.a.a.k.a;

import c.e.a.a.e.q;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.v;

/* compiled from: CeaUtil */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final int f9113a = I.b("GA94");

    public static void a(long j2, v vVar, q[] qVarArr) {
        while (true) {
            boolean z = true;
            if (vVar.a() > 1) {
                int a2 = a(vVar);
                int a3 = a(vVar);
                int c2 = vVar.c() + a3;
                if (a3 == -1 || a3 > vVar.a()) {
                    p.d("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    c2 = vVar.d();
                } else if (a2 == 4 && a3 >= 8) {
                    int u = vVar.u();
                    int A = vVar.A();
                    int i2 = A == 49 ? vVar.i() : 0;
                    int u2 = vVar.u();
                    if (A == 47) {
                        vVar.f(1);
                    }
                    boolean z2 = u == 181 && (A == 49 || A == 47) && u2 == 3;
                    if (A == 49) {
                        if (i2 != f9113a) {
                            z = false;
                        }
                        z2 &= z;
                    }
                    if (z2) {
                        b(j2, vVar, qVarArr);
                    }
                }
                vVar.e(c2);
            } else {
                return;
            }
        }
    }

    public static void b(long j2, v vVar, q[] qVarArr) {
        int u = vVar.u();
        if ((u & 64) != 0) {
            vVar.f(1);
            int i2 = (u & 31) * 3;
            int c2 = vVar.c();
            for (q qVar : qVarArr) {
                vVar.e(c2);
                qVar.a(vVar, i2);
                qVar.a(j2, 1, i2, 0, null);
            }
        }
    }

    public static int a(v vVar) {
        int i2 = 0;
        while (vVar.a() != 0) {
            int u = vVar.u();
            i2 += u;
            if (u != 255) {
                return i2;
            }
        }
        return -1;
    }
}
