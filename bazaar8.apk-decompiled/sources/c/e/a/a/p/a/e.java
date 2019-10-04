package c.e.a.a.p.a;

import c.e.a.a.o.I;
import c.e.a.a.o.u;
import c.e.a.a.o.v;
import c.e.a.a.p.a.d;
import java.util.ArrayList;
import java.util.zip.Inflater;

/* compiled from: ProjectionDecoder */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final int f9668a = I.b("ytmp");

    /* renamed from: b  reason: collision with root package name */
    public static final int f9669b = I.b("mshp");

    /* renamed from: c  reason: collision with root package name */
    public static final int f9670c = I.b("raw ");

    /* renamed from: d  reason: collision with root package name */
    public static final int f9671d = I.b("dfl8");

    /* renamed from: e  reason: collision with root package name */
    public static final int f9672e = I.b("mesh");

    /* renamed from: f  reason: collision with root package name */
    public static final int f9673f = I.b("proj");

    public static int a(int i2) {
        return (-(i2 & 1)) ^ (i2 >> 1);
    }

    public static d a(byte[] bArr, int i2) {
        ArrayList<d.a> arrayList;
        v vVar = new v(bArr);
        try {
            arrayList = a(vVar) ? d(vVar) : c(vVar);
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayList = null;
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        if (size == 1) {
            return new d(arrayList.get(0), i2);
        }
        if (size != 2) {
            return null;
        }
        return new d(arrayList.get(0), arrayList.get(1), i2);
    }

    public static d.a b(v vVar) {
        int i2 = vVar.i();
        if (i2 > 10000) {
            return null;
        }
        float[] fArr = new float[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            fArr[i3] = vVar.h();
        }
        int i4 = vVar.i();
        if (i4 > 32000) {
            return null;
        }
        double d2 = 2.0d;
        double log = Math.log(2.0d);
        double d3 = (double) i2;
        Double.isNaN(d3);
        int ceil = (int) Math.ceil(Math.log(d3 * 2.0d) / log);
        u uVar = new u(vVar.f9634a);
        int i5 = 8;
        uVar.b(vVar.c() * 8);
        float[] fArr2 = new float[(i4 * 5)];
        int i6 = 5;
        int[] iArr = new int[5];
        int i7 = 0;
        int i8 = 0;
        while (i7 < i4) {
            int i9 = 0;
            while (i9 < i6) {
                int a2 = iArr[i9] + a(uVar.a(ceil));
                if (a2 >= i2 || a2 < 0) {
                    return null;
                }
                fArr2[i8] = fArr[a2];
                iArr[i9] = a2;
                i9++;
                i8++;
                i6 = 5;
            }
            i7++;
            i6 = 5;
        }
        uVar.b((uVar.e() + 7) & -8);
        int i10 = 32;
        int a3 = uVar.a(32);
        d.b[] bVarArr = new d.b[a3];
        int i11 = 0;
        while (i11 < a3) {
            int a4 = uVar.a(i5);
            int a5 = uVar.a(i5);
            int a6 = uVar.a(i10);
            if (a6 > 128000) {
                return null;
            }
            int i12 = a4;
            double d4 = (double) i4;
            Double.isNaN(d4);
            int ceil2 = (int) Math.ceil(Math.log(d4 * d2) / log);
            float[] fArr3 = new float[(a6 * 3)];
            float[] fArr4 = new float[(a6 * 2)];
            int i13 = 0;
            for (int i14 = 0; i14 < a6; i14++) {
                i13 += a(uVar.a(ceil2));
                if (i13 < 0 || i13 >= i4) {
                    return null;
                }
                int i15 = i14 * 3;
                int i16 = i13 * 5;
                fArr3[i15] = fArr2[i16];
                fArr3[i15 + 1] = fArr2[i16 + 1];
                fArr3[i15 + 2] = fArr2[i16 + 2];
                int i17 = i14 * 2;
                fArr4[i17] = fArr2[i16 + 3];
                fArr4[i17 + 1] = fArr2[i16 + 4];
            }
            bVarArr[i11] = new d.b(i12, fArr3, fArr4, a5);
            i11++;
            i10 = 32;
            d2 = 2.0d;
            i5 = 8;
        }
        return new d.a(bVarArr);
    }

    public static ArrayList<d.a> c(v vVar) {
        if (vVar.u() != 0) {
            return null;
        }
        vVar.f(7);
        int i2 = vVar.i();
        if (i2 == f9671d) {
            v vVar2 = new v();
            Inflater inflater = new Inflater(true);
            try {
                if (!I.a(vVar, vVar2, inflater)) {
                    return null;
                }
                inflater.end();
                vVar = vVar2;
            } finally {
                inflater.end();
            }
        } else if (i2 != f9670c) {
            return null;
        }
        return e(vVar);
    }

    public static ArrayList<d.a> d(v vVar) {
        vVar.f(8);
        int c2 = vVar.c();
        int d2 = vVar.d();
        while (c2 < d2) {
            int i2 = vVar.i() + c2;
            if (i2 <= c2 || i2 > d2) {
                break;
            }
            int i3 = vVar.i();
            if (i3 == f9668a || i3 == f9669b) {
                vVar.d(i2);
                return c(vVar);
            }
            vVar.e(i2);
            c2 = i2;
        }
        return null;
    }

    public static ArrayList<d.a> e(v vVar) {
        ArrayList<d.a> arrayList = new ArrayList<>();
        int c2 = vVar.c();
        int d2 = vVar.d();
        while (c2 < d2) {
            int i2 = vVar.i() + c2;
            if (i2 <= c2 || i2 > d2) {
                return null;
            }
            if (vVar.i() == f9672e) {
                d.a b2 = b(vVar);
                if (b2 == null) {
                    return null;
                }
                arrayList.add(b2);
            }
            vVar.e(i2);
            c2 = i2;
        }
        return arrayList;
    }

    public static boolean a(v vVar) {
        vVar.f(4);
        int i2 = vVar.i();
        vVar.e(0);
        if (i2 == f9673f) {
            return true;
        }
        return false;
    }
}
