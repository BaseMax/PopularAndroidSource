package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzfh;

public final class Ha {
    public static int a(byte[] bArr, int i2, Ia ia) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            return a((int) b2, bArr, i3, ia);
        }
        ia.f10177a = b2;
        return i3;
    }

    public static int b(byte[] bArr, int i2, Ia ia) {
        int i3 = i2 + 1;
        long j2 = (long) bArr[i2];
        if (j2 >= 0) {
            ia.f10178b = j2;
            return i3;
        }
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        long j3 = (j2 & 127) | (((long) (b2 & Byte.MAX_VALUE)) << 7);
        int i5 = 7;
        while (b2 < 0) {
            int i6 = i4 + 1;
            byte b3 = bArr[i4];
            i5 += 7;
            j3 |= ((long) (b3 & Byte.MAX_VALUE)) << i5;
            int i7 = i6;
            b2 = b3;
            i4 = i7;
        }
        ia.f10178b = j3;
        return i4;
    }

    public static double c(byte[] bArr, int i2) {
        return Double.longBitsToDouble(b(bArr, i2));
    }

    public static float d(byte[] bArr, int i2) {
        return Float.intBitsToFloat(a(bArr, i2));
    }

    public static int e(byte[] bArr, int i2, Ia ia) {
        int a2 = a(bArr, i2, ia);
        int i3 = ia.f10177a;
        if (i3 < 0) {
            throw zzfh.b();
        } else if (i3 > bArr.length - a2) {
            throw zzfh.a();
        } else if (i3 == 0) {
            ia.f10179c = zzdp.f13171a;
            return a2;
        } else {
            ia.f10179c = zzdp.a(bArr, a2, i3);
            return a2 + i3;
        }
    }

    public static int c(byte[] bArr, int i2, Ia ia) {
        int a2 = a(bArr, i2, ia);
        int i3 = ia.f10177a;
        if (i3 < 0) {
            throw zzfh.b();
        } else if (i3 == 0) {
            ia.f10179c = "";
            return a2;
        } else {
            ia.f10179c = new String(bArr, a2, i3, C0864qb.f10508a);
            return a2 + i3;
        }
    }

    public static int d(byte[] bArr, int i2, Ia ia) {
        int a2 = a(bArr, i2, ia);
        int i3 = ia.f10177a;
        if (i3 < 0) {
            throw zzfh.b();
        } else if (i3 == 0) {
            ia.f10179c = "";
            return a2;
        } else {
            ia.f10179c = Hc.c(bArr, a2, i3);
            return a2 + i3;
        }
    }

    public static int a(int i2, byte[] bArr, int i3, Ia ia) {
        int i4 = i2 & 127;
        int i5 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            ia.f10177a = i4 | (b2 << 7);
            return i5;
        }
        int i6 = i4 | ((b2 & Byte.MAX_VALUE) << 7);
        int i7 = i5 + 1;
        byte b3 = bArr[i5];
        if (b3 >= 0) {
            ia.f10177a = i6 | (b3 << 14);
            return i7;
        }
        int i8 = i6 | ((b3 & Byte.MAX_VALUE) << 14);
        int i9 = i7 + 1;
        byte b4 = bArr[i7];
        if (b4 >= 0) {
            ia.f10177a = i8 | (b4 << 21);
            return i9;
        }
        int i10 = i8 | ((b4 & Byte.MAX_VALUE) << 21);
        int i11 = i9 + 1;
        byte b5 = bArr[i9];
        if (b5 >= 0) {
            ia.f10177a = i10 | (b5 << 28);
            return i11;
        }
        int i12 = i10 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i13 = i11 + 1;
            if (bArr[i11] >= 0) {
                ia.f10177a = i12;
                return i13;
            }
            i11 = i13;
        }
    }

    public static long b(byte[] bArr, int i2) {
        return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
    }

    public static int a(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v2, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v5, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v6, resolved type: byte} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int a(c.e.a.b.g.f.C0829hc r6, byte[] r7, int r8, int r9, c.e.a.b.g.f.Ia r10) {
        /*
            int r0 = r8 + 1
            byte r8 = r7[r8]
            if (r8 >= 0) goto L_0x000c
            int r0 = a((int) r8, (byte[]) r7, (int) r0, (c.e.a.b.g.f.Ia) r10)
            int r8 = r10.f10177a
        L_0x000c:
            r3 = r0
            if (r8 < 0) goto L_0x0025
            int r9 = r9 - r3
            if (r8 > r9) goto L_0x0025
            java.lang.Object r9 = r6.a()
            int r8 = r8 + r3
            r0 = r6
            r1 = r9
            r2 = r7
            r4 = r8
            r5 = r10
            r0.a(r1, r2, r3, r4, r5)
            r6.c(r9)
            r10.f10179c = r9
            return r8
        L_0x0025:
            com.google.android.gms.internal.measurement.zzfh r6 = com.google.android.gms.internal.measurement.zzfh.a()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Ha.a(c.e.a.b.g.f.hc, byte[], int, int, c.e.a.b.g.f.Ia):int");
    }

    public static int a(C0829hc hcVar, byte[] bArr, int i2, int i3, int i4, Ia ia) {
        Wb wb = (Wb) hcVar;
        Object a2 = wb.a();
        int a3 = wb.a(a2, bArr, i2, i3, i4, ia);
        wb.c(a2);
        ia.f10179c = a2;
        return a3;
    }

    public static int a(int i2, byte[] bArr, int i3, int i4, C0883vb<?> vbVar, Ia ia) {
        C0860pb pbVar = (C0860pb) vbVar;
        int a2 = a(bArr, i3, ia);
        pbVar.e(ia.f10177a);
        while (a2 < i4) {
            int a3 = a(bArr, a2, ia);
            if (i2 != ia.f10177a) {
                break;
            }
            a2 = a(bArr, a3, ia);
            pbVar.e(ia.f10177a);
        }
        return a2;
    }

    public static int a(byte[] bArr, int i2, C0883vb<?> vbVar, Ia ia) {
        C0860pb pbVar = (C0860pb) vbVar;
        int a2 = a(bArr, i2, ia);
        int i3 = ia.f10177a + a2;
        while (a2 < i3) {
            a2 = a(bArr, a2, ia);
            pbVar.e(ia.f10177a);
        }
        if (a2 == i3) {
            return a2;
        }
        throw zzfh.a();
    }

    public static int a(C0829hc<?> hcVar, int i2, byte[] bArr, int i3, int i4, C0883vb<?> vbVar, Ia ia) {
        int a2 = a((C0829hc) hcVar, bArr, i3, i4, ia);
        vbVar.add(ia.f10179c);
        while (a2 < i4) {
            int a3 = a(bArr, a2, ia);
            if (i2 != ia.f10177a) {
                break;
            }
            a2 = a((C0829hc) hcVar, bArr, a3, i4, ia);
            vbVar.add(ia.f10179c);
        }
        return a2;
    }

    public static int a(int i2, byte[] bArr, int i3, int i4, Ac ac, Ia ia) {
        if ((i2 >>> 3) != 0) {
            int i5 = i2 & 7;
            if (i5 == 0) {
                int b2 = b(bArr, i3, ia);
                ac.a(i2, (Object) Long.valueOf(ia.f10178b));
                return b2;
            } else if (i5 == 1) {
                ac.a(i2, (Object) Long.valueOf(b(bArr, i3)));
                return i3 + 8;
            } else if (i5 == 2) {
                int a2 = a(bArr, i3, ia);
                int i6 = ia.f10177a;
                if (i6 < 0) {
                    throw zzfh.b();
                } else if (i6 <= bArr.length - a2) {
                    if (i6 == 0) {
                        ac.a(i2, (Object) zzdp.f13171a);
                    } else {
                        ac.a(i2, (Object) zzdp.a(bArr, a2, i6));
                    }
                    return a2 + i6;
                } else {
                    throw zzfh.a();
                }
            } else if (i5 == 3) {
                Ac d2 = Ac.d();
                int i7 = (i2 & -8) | 4;
                int i8 = 0;
                while (true) {
                    if (i3 >= i4) {
                        break;
                    }
                    int a3 = a(bArr, i3, ia);
                    int i9 = ia.f10177a;
                    if (i9 == i7) {
                        i8 = i9;
                        i3 = a3;
                        break;
                    }
                    i8 = i9;
                    i3 = a(i9, bArr, a3, i4, d2, ia);
                }
                if (i3 > i4 || i8 != i7) {
                    throw zzfh.h();
                }
                ac.a(i2, (Object) d2);
                return i3;
            } else if (i5 == 5) {
                ac.a(i2, (Object) Integer.valueOf(a(bArr, i3)));
                return i3 + 4;
            } else {
                throw zzfh.d();
            }
        } else {
            throw zzfh.d();
        }
    }

    public static int a(int i2, byte[] bArr, int i3, int i4, Ia ia) {
        if ((i2 >>> 3) != 0) {
            int i5 = i2 & 7;
            if (i5 == 0) {
                return b(bArr, i3, ia);
            }
            if (i5 == 1) {
                return i3 + 8;
            }
            if (i5 == 2) {
                return a(bArr, i3, ia) + ia.f10177a;
            }
            if (i5 == 3) {
                int i6 = (i2 & -8) | 4;
                int i7 = 0;
                while (i3 < i4) {
                    i3 = a(bArr, i3, ia);
                    i7 = ia.f10177a;
                    if (i7 == i6) {
                        break;
                    }
                    i3 = a(i7, bArr, i3, i4, ia);
                }
                if (i3 <= i4 && i7 == i6) {
                    return i3;
                }
                throw zzfh.h();
            } else if (i5 == 5) {
                return i3 + 4;
            } else {
                throw zzfh.d();
            }
        } else {
            throw zzfh.d();
        }
    }
}
