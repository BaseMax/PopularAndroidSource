package c.e.a.a.e.e;

import c.e.a.a.e.h;
import c.e.a.a.o.I;
import c.e.a.a.o.v;

/* compiled from: Sniffer */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f7863a = {I.b("isom"), I.b("iso2"), I.b("iso3"), I.b("iso4"), I.b("iso5"), I.b("iso6"), I.b("avc1"), I.b("hvc1"), I.b("hev1"), I.b("av01"), I.b("mp41"), I.b("mp42"), I.b("3g2a"), I.b("3g2b"), I.b("3gr6"), I.b("3gs6"), I.b("3ge6"), I.b("3gg6"), I.b("M4V "), I.b("M4A "), I.b("f4v "), I.b("kddi"), I.b("M4VP"), I.b("qt  "), I.b("MSNV"), I.b("dby1")};

    public static boolean a(h hVar) {
        return a(hVar, true);
    }

    public static boolean b(h hVar) {
        return a(hVar, false);
    }

    public static boolean a(h hVar, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        h hVar2 = hVar;
        long length = hVar.getLength();
        long j2 = 4096;
        long j3 = -1;
        if (length != -1 && length <= 4096) {
            j2 = length;
        }
        int i2 = (int) j2;
        v vVar = new v(64);
        boolean z5 = false;
        int i3 = i2;
        int i4 = 0;
        boolean z6 = false;
        while (true) {
            if (i4 >= i3) {
                break;
            }
            vVar.c(8);
            hVar2.a(vVar.f9634a, z5 ? 1 : 0, 8);
            long w = vVar.w();
            int i5 = vVar.i();
            int i6 = 16;
            if (w == 1) {
                hVar2.a(vVar.f9634a, 8, 8);
                vVar.d(16);
                w = vVar.q();
            } else {
                if (w == 0) {
                    long length2 = hVar.getLength();
                    if (length2 != j3) {
                        w = ((long) 8) + (length2 - hVar.a());
                    }
                }
                i6 = 8;
            }
            if (length != j3 && ((long) i4) + w > length) {
                return z5;
            }
            long j4 = (long) i6;
            if (w < j4) {
                return z5;
            }
            i4 += i6;
            if (i5 == c.Q) {
                i3 += (int) w;
                if (length != -1 && ((long) i3) > length) {
                    i3 = (int) length;
                }
                j3 = -1;
            } else if (i5 == c.X || i5 == c.Z) {
                z2 = false;
                z3 = true;
            } else {
                long j5 = w;
                int i7 = i3;
                if ((((long) i4) + w) - j4 >= ((long) i7)) {
                    break;
                }
                int i8 = (int) (j5 - j4);
                i4 += i8;
                if (i5 == c.f7753a) {
                    if (i8 < 8) {
                        return false;
                    }
                    vVar.c(i8);
                    hVar2.a(vVar.f9634a, 0, i8);
                    int i9 = i8 / 4;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= i9) {
                            z4 = z6;
                            break;
                        }
                        z4 = true;
                        if (i10 == 1) {
                            vVar.f(4);
                        } else if (a(vVar.i())) {
                            break;
                        }
                        i10++;
                    }
                    if (!z4) {
                        return false;
                    }
                    z6 = z4;
                } else if (i8 != 0) {
                    hVar2.a(i8);
                }
                i3 = i7;
                j3 = -1;
                z5 = false;
            }
        }
        z2 = false;
        z3 = false;
        if (z6 && z == z3) {
            z2 = true;
        }
        return z2;
    }

    public static boolean a(int i2) {
        if ((i2 >>> 8) == I.b("3gp")) {
            return true;
        }
        for (int i3 : f7863a) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }
}
