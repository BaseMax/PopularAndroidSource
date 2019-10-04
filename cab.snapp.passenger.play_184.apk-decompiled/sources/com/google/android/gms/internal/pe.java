package com.google.android.gms.internal;

import androidx.appcompat.widget.ActivityChooserView;
import com.pusher.java_websocket.drafts.c;
import java.io.IOException;
import java.util.Arrays;

final class pe extends pd {
    private final byte[] d;
    private final boolean e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;

    private pe(byte[] bArr, int i2, int i3, boolean z) {
        super((byte) 0);
        this.k = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.d = bArr;
        this.f = i3 + i2;
        this.h = i2;
        this.i = this.h;
        this.e = z;
    }

    /* synthetic */ pe(byte[] bArr, int i2, int i3, boolean z, byte b2) {
        this(bArr, i2, i3, z);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00b0, code lost:
        if (((long) r2[r0]) >= 0) goto L_0x00b2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final long b() throws java.io.IOException {
        /*
            r11 = this;
            int r0 = r11.h
            int r1 = r11.f
            if (r1 == r0) goto L_0x00b5
            byte[] r2 = r11.d
            int r3 = r0 + 1
            byte r0 = r2[r0]
            if (r0 < 0) goto L_0x0012
            r11.h = r3
            long r0 = (long) r0
            return r0
        L_0x0012:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L_0x00b5
            int r1 = r3 + 1
            byte r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L_0x0026
            r0 = r0 ^ -128(0xffffffffffffff80, float:NaN)
        L_0x0022:
            long r2 = (long) r0
            r3 = r2
            goto L_0x00b2
        L_0x0026:
            int r3 = r1 + 1
            byte r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L_0x0037
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            long r0 = (long) r0
            r9 = r0
            r1 = r3
            r3 = r9
            goto L_0x00b2
        L_0x0037:
            int r1 = r3 + 1
            byte r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L_0x0045
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L_0x0022
        L_0x0045:
            long r3 = (long) r0
            int r0 = r1 + 1
            byte r1 = r2[r1]
            long r5 = (long) r1
            r1 = 28
            long r5 = r5 << r1
            long r3 = r3 ^ r5
            r5 = 0
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L_0x005c
            r1 = 266354560(0xfe03f80, double:1.315966377E-315)
        L_0x0058:
            long r1 = r1 ^ r3
            r3 = r1
        L_0x005a:
            r1 = r0
            goto L_0x00b2
        L_0x005c:
            int r1 = r0 + 1
            byte r0 = r2[r0]
            long r7 = (long) r0
            r0 = 35
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L_0x0070
            r5 = -34093383808(0xfffffff80fe03f80, double:NaN)
        L_0x006e:
            long r3 = r3 ^ r5
            goto L_0x00b2
        L_0x0070:
            int r0 = r1 + 1
            byte r1 = r2[r1]
            long r7 = (long) r1
            r1 = 42
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L_0x0083
            r1 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
            goto L_0x0058
        L_0x0083:
            int r1 = r0 + 1
            byte r0 = r2[r0]
            long r7 = (long) r0
            r0 = 49
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L_0x0096
            r5 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
            goto L_0x006e
        L_0x0096:
            int r0 = r1 + 1
            byte r1 = r2[r1]
            long r7 = (long) r1
            r1 = 56
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            r7 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 >= 0) goto L_0x005a
            int r1 = r0 + 1
            byte r0 = r2[r0]
            long r7 = (long) r0
            int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r0 < 0) goto L_0x00b5
        L_0x00b2:
            r11.h = r1
            return r3
        L_0x00b5:
            long r0 = r11.a()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.pe.b():long");
    }

    private final int c() throws IOException {
        int i2 = this.h;
        if (this.f - i2 >= 4) {
            byte[] bArr = this.d;
            this.h = i2 + 4;
            return ((bArr[i2 + 3] & c.END_OF_FRAME) << 24) | (bArr[i2] & c.END_OF_FRAME) | ((bArr[i2 + 1] & c.END_OF_FRAME) << 8) | ((bArr[i2 + 2] & c.END_OF_FRAME) << 16);
        }
        throw py.a();
    }

    private final long d() throws IOException {
        int i2 = this.h;
        if (this.f - i2 >= 8) {
            byte[] bArr = this.d;
            this.h = i2 + 8;
            return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
        }
        throw py.a();
    }

    private final void e() {
        this.f += this.g;
        int i2 = this.f;
        int i3 = i2 - this.i;
        int i4 = this.k;
        if (i3 > i4) {
            this.g = i3 - i4;
            this.f = i2 - this.g;
            return;
        }
        this.g = 0;
    }

    private final byte f() throws IOException {
        int i2 = this.h;
        if (i2 != this.f) {
            byte[] bArr = this.d;
            this.h = i2 + 1;
            return bArr[i2];
        }
        throw py.a();
    }

    /* access modifiers changed from: package-private */
    public final long a() throws IOException {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            byte f2 = f();
            j2 |= ((long) (f2 & Byte.MAX_VALUE)) << i2;
            if ((f2 & 128) == 0) {
                return j2;
            }
        }
        throw py.c();
    }

    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(d());
    }

    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(c());
    }

    public final String readString() throws IOException {
        int zzcwi = zzcwi();
        if (zzcwi > 0) {
            int i2 = this.f;
            int i3 = this.h;
            if (zzcwi <= i2 - i3) {
                String str = new String(this.d, i3, zzcwi, pu.f3459a);
                this.h += zzcwi;
                return str;
            }
        }
        if (zzcwi == 0) {
            return "";
        }
        if (zzcwi < 0) {
            throw py.b();
        }
        throw py.a();
    }

    public final <T extends ps<T, ?>> T zza(T t, pk pkVar) throws IOException {
        int zzcwi = zzcwi();
        if (this.f3435a < this.f3436b) {
            int zzks = zzks(zzcwi);
            this.f3435a++;
            T b2 = ps.b(t);
            zzkp(0);
            this.f3435a--;
            zzkt(zzks);
            return b2;
        }
        throw py.g();
    }

    public final void zza(qs qsVar, pk pkVar) throws IOException {
        int zzcwi = zzcwi();
        if (this.f3435a < this.f3436b) {
            int zzks = zzks(zzcwi);
            this.f3435a++;
            qsVar.zzb(this, pkVar);
            zzkp(0);
            this.f3435a--;
            zzkt(zzks);
            return;
        }
        throw py.g();
    }

    public final int zzcvt() throws IOException {
        if (zzcwl()) {
            this.j = 0;
            return 0;
        }
        this.j = zzcwi();
        int i2 = this.j;
        if ((i2 >>> 3) != 0) {
            return i2;
        }
        throw py.d();
    }

    public final long zzcvu() throws IOException {
        return b();
    }

    public final long zzcvv() throws IOException {
        return b();
    }

    public final int zzcvw() throws IOException {
        return zzcwi();
    }

    public final long zzcvx() throws IOException {
        return d();
    }

    public final int zzcvy() throws IOException {
        return c();
    }

    public final boolean zzcvz() throws IOException {
        return b() != 0;
    }

    public final String zzcwa() throws IOException {
        int zzcwi = zzcwi();
        if (zzcwi > 0) {
            int i2 = this.f;
            int i3 = this.h;
            if (zzcwi <= i2 - i3) {
                if (rz.zzk(this.d, i3, i3 + zzcwi)) {
                    int i4 = this.h;
                    this.h = i4 + zzcwi;
                    return new String(this.d, i4, zzcwi, pu.f3459a);
                }
                throw py.i();
            }
        }
        if (zzcwi == 0) {
            return "";
        }
        if (zzcwi <= 0) {
            throw py.b();
        }
        throw py.a();
    }

    public final ou zzcwb() throws IOException {
        byte[] bArr;
        int zzcwi = zzcwi();
        if (zzcwi > 0) {
            int i2 = this.f;
            int i3 = this.h;
            if (zzcwi <= i2 - i3) {
                ou zze = ou.zze(this.d, i3, zzcwi);
                this.h += zzcwi;
                return zze;
            }
        }
        if (zzcwi == 0) {
            return ou.zzpfg;
        }
        if (zzcwi > 0) {
            int i4 = this.f;
            int i5 = this.h;
            if (zzcwi <= i4 - i5) {
                this.h = zzcwi + i5;
                bArr = Arrays.copyOfRange(this.d, i5, this.h);
                return ou.a(bArr);
            }
        }
        if (zzcwi > 0) {
            throw py.a();
        } else if (zzcwi == 0) {
            bArr = pu.EMPTY_BYTE_ARRAY;
            return ou.a(bArr);
        } else {
            throw py.b();
        }
    }

    public final int zzcwc() throws IOException {
        return zzcwi();
    }

    public final int zzcwd() throws IOException {
        return zzcwi();
    }

    public final int zzcwe() throws IOException {
        return c();
    }

    public final long zzcwf() throws IOException {
        return d();
    }

    public final int zzcwg() throws IOException {
        return zzkv(zzcwi());
    }

    public final long zzcwh() throws IOException {
        return zzcs(b());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0066, code lost:
        if (r2[r3] >= 0) goto L_0x0068;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int zzcwi() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.h
            int r1 = r5.f
            if (r1 == r0) goto L_0x006b
            byte[] r2 = r5.d
            int r3 = r0 + 1
            byte r0 = r2[r0]
            if (r0 < 0) goto L_0x0011
            r5.h = r3
            return r0
        L_0x0011:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L_0x006b
            int r1 = r3 + 1
            byte r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L_0x0022
            r0 = r0 ^ -128(0xffffffffffffff80, float:NaN)
            goto L_0x0068
        L_0x0022:
            int r3 = r1 + 1
            byte r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L_0x002f
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L_0x002d:
            r1 = r3
            goto L_0x0068
        L_0x002f:
            int r1 = r3 + 1
            byte r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L_0x003d
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L_0x0068
        L_0x003d:
            int r3 = r1 + 1
            byte r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L_0x002d
            int r1 = r3 + 1
            byte r3 = r2[r3]
            if (r3 >= 0) goto L_0x0068
            int r3 = r1 + 1
            byte r1 = r2[r1]
            if (r1 >= 0) goto L_0x002d
            int r1 = r3 + 1
            byte r3 = r2[r3]
            if (r3 >= 0) goto L_0x0068
            int r3 = r1 + 1
            byte r1 = r2[r1]
            if (r1 >= 0) goto L_0x002d
            int r1 = r3 + 1
            byte r2 = r2[r3]
            if (r2 < 0) goto L_0x006b
        L_0x0068:
            r5.h = r1
            return r0
        L_0x006b:
            long r0 = r5.a()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.pe.zzcwi():int");
    }

    public final int zzcwk() {
        int i2 = this.k;
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2 - zzcwm();
    }

    public final boolean zzcwl() throws IOException {
        return this.h == this.f;
    }

    public final int zzcwm() {
        return this.h - this.i;
    }

    public final void zzkp(int i2) throws py {
        if (this.j != i2) {
            throw py.e();
        }
    }

    public final boolean zzkq(int i2) throws IOException {
        int zzcvt;
        int i3 = i2 & 7;
        int i4 = 0;
        if (i3 == 0) {
            if (this.f - this.h >= 10) {
                while (i4 < 10) {
                    byte[] bArr = this.d;
                    int i5 = this.h;
                    this.h = i5 + 1;
                    if (bArr[i5] < 0) {
                        i4++;
                    }
                }
                throw py.c();
            }
            while (i4 < 10) {
                if (f() < 0) {
                    i4++;
                }
            }
            throw py.c();
            return true;
        } else if (i3 == 1) {
            zzku(8);
            return true;
        } else if (i3 == 2) {
            zzku(zzcwi());
            return true;
        } else if (i3 == 3) {
            do {
                zzcvt = zzcvt();
                if (zzcvt == 0) {
                    break;
                }
            } while (zzkq(zzcvt));
            zzkp(((i2 >>> 3) << 3) | 4);
            return true;
        } else if (i3 == 4) {
            return false;
        } else {
            if (i3 == 5) {
                zzku(4);
                return true;
            }
            throw py.f();
        }
    }

    public final int zzks(int i2) throws py {
        if (i2 >= 0) {
            int zzcwm = i2 + zzcwm();
            int i3 = this.k;
            if (zzcwm <= i3) {
                this.k = zzcwm;
                e();
                return i3;
            }
            throw py.a();
        }
        throw py.b();
    }

    public final void zzkt(int i2) {
        this.k = i2;
        e();
    }

    public final void zzku(int i2) throws IOException {
        if (i2 >= 0) {
            int i3 = this.f;
            int i4 = this.h;
            if (i2 <= i3 - i4) {
                this.h = i4 + i2;
                return;
            }
        }
        if (i2 < 0) {
            throw py.b();
        }
        throw py.a();
    }
}
