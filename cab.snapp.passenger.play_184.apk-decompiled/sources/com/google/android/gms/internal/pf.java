package com.google.android.gms.internal;

import androidx.appcompat.widget.ActivityChooserView;
import com.pusher.java_websocket.drafts.c;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

final class pf extends pd {
    private final InputStream d;
    private final byte[] e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private pg l;

    private pf(InputStream inputStream) {
        super((byte) 0);
        this.k = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.l = null;
        pu.a(inputStream, "input");
        this.d = inputStream;
        this.e = new byte[4096];
        this.f = 0;
        this.h = 0;
        this.j = 0;
    }

    /* synthetic */ pf(InputStream inputStream, byte b2) {
        this(inputStream);
    }

    private final void a(int i2) throws IOException {
        if (b(i2)) {
            return;
        }
        if (i2 > (this.c - this.j) - this.h) {
            throw py.h();
        }
        throw py.a();
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
            byte[] r2 = r11.e
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.pf.b():long");
    }

    private final boolean b(int i2) throws IOException {
        while (this.h + i2 > this.f) {
            int i3 = this.c;
            int i4 = this.j;
            int i5 = this.h;
            if (i2 > (i3 - i4) - i5 || i4 + i5 + i2 > this.k) {
                return false;
            }
            if (i5 > 0) {
                int i6 = this.f;
                if (i6 > i5) {
                    byte[] bArr = this.e;
                    System.arraycopy(bArr, i5, bArr, 0, i6 - i5);
                }
                this.j += i5;
                this.f -= i5;
                this.h = 0;
            }
            InputStream inputStream = this.d;
            byte[] bArr2 = this.e;
            int i7 = this.f;
            int read = inputStream.read(bArr2, i7, Math.min(bArr2.length - i7, (this.c - this.j) - this.f));
            if (read == 0 || read < -1 || read > this.e.length) {
                StringBuilder sb = new StringBuilder(102);
                sb.append("InputStream#read(byte[]) returned invalid result: ");
                sb.append(read);
                sb.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb.toString());
            } else if (read <= 0) {
                return false;
            } else {
                this.f += read;
                e();
                if (this.f >= i2) {
                    return true;
                }
            }
        }
        StringBuilder sb2 = new StringBuilder(77);
        sb2.append("refillBuffer() called when ");
        sb2.append(i2);
        sb2.append(" bytes were already available in buffer");
        throw new IllegalStateException(sb2.toString());
    }

    private final int c() throws IOException {
        int i2 = this.h;
        if (this.f - i2 < 4) {
            a(4);
            i2 = this.h;
        }
        byte[] bArr = this.e;
        this.h = i2 + 4;
        return ((bArr[i2 + 3] & c.END_OF_FRAME) << 24) | (bArr[i2] & c.END_OF_FRAME) | ((bArr[i2 + 1] & c.END_OF_FRAME) << 8) | ((bArr[i2 + 2] & c.END_OF_FRAME) << 16);
    }

    private final byte[] c(int i2) throws IOException {
        byte[] d2 = d(i2);
        if (d2 != null) {
            return d2;
        }
        int i3 = this.h;
        int i4 = this.f;
        int i5 = i4 - i3;
        this.j += i4;
        this.h = 0;
        this.f = 0;
        List<byte[]> e2 = e(i2 - i5);
        byte[] bArr = new byte[i2];
        System.arraycopy(this.e, i3, bArr, 0, i5);
        for (byte[] next : e2) {
            System.arraycopy(next, 0, bArr, i5, next.length);
            i5 += next.length;
        }
        return bArr;
    }

    private final long d() throws IOException {
        int i2 = this.h;
        if (this.f - i2 < 8) {
            a(8);
            i2 = this.h;
        }
        byte[] bArr = this.e;
        this.h = i2 + 8;
        return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
    }

    private final byte[] d(int i2) throws IOException {
        if (i2 == 0) {
            return pu.EMPTY_BYTE_ARRAY;
        }
        if (i2 >= 0) {
            int i3 = this.j + this.h + i2;
            if (i3 - this.c <= 0) {
                int i4 = this.k;
                if (i3 <= i4) {
                    int i5 = this.f - this.h;
                    int i6 = i2 - i5;
                    if (i6 >= 4096 && i6 > this.d.available()) {
                        return null;
                    }
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.e, this.h, bArr, 0, i5);
                    this.j += this.f;
                    this.h = 0;
                    this.f = 0;
                    while (i5 < bArr.length) {
                        int read = this.d.read(bArr, i5, i2 - i5);
                        if (read != -1) {
                            this.j += read;
                            i5 += read;
                        } else {
                            throw py.a();
                        }
                    }
                    return bArr;
                }
                zzku((i4 - this.j) - this.h);
                throw py.a();
            }
            throw py.h();
        }
        throw py.b();
    }

    private final List<byte[]> e(int i2) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i2 > 0) {
            byte[] bArr = new byte[Math.min(i2, 4096)];
            int i3 = 0;
            while (i3 < bArr.length) {
                int read = this.d.read(bArr, i3, bArr.length - i3);
                if (read != -1) {
                    this.j += read;
                    i3 += read;
                } else {
                    throw py.a();
                }
            }
            i2 -= bArr.length;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void e() {
        this.f += this.g;
        int i2 = this.j;
        int i3 = this.f;
        int i4 = i2 + i3;
        int i5 = this.k;
        if (i4 > i5) {
            this.g = i4 - i5;
            this.f = i3 - this.g;
            return;
        }
        this.g = 0;
    }

    private final byte f() throws IOException {
        if (this.h == this.f) {
            a(1);
        }
        byte[] bArr = this.e;
        int i2 = this.h;
        this.h = i2 + 1;
        return bArr[i2];
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
                String str = new String(this.e, i3, zzcwi, pu.f3459a);
                this.h += zzcwi;
                return str;
            }
        }
        if (zzcwi == 0) {
            return "";
        }
        if (zzcwi > this.f) {
            return new String(c(zzcwi), pu.f3459a);
        }
        a(zzcwi);
        String str2 = new String(this.e, this.h, zzcwi, pu.f3459a);
        this.h += zzcwi;
        return str2;
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
            this.i = 0;
            return 0;
        }
        this.i = zzcwi();
        int i2 = this.i;
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
        byte[] bArr;
        int zzcwi = zzcwi();
        int i2 = this.h;
        int i3 = 0;
        if (zzcwi <= this.f - i2 && zzcwi > 0) {
            bArr = this.e;
            this.h = i2 + zzcwi;
            i3 = i2;
        } else if (zzcwi == 0) {
            return "";
        } else {
            if (zzcwi <= this.f) {
                a(zzcwi);
                bArr = this.e;
                this.h = zzcwi;
            } else {
                bArr = c(zzcwi);
            }
        }
        if (rz.zzk(bArr, i3, i3 + zzcwi)) {
            return new String(bArr, i3, zzcwi, pu.f3459a);
        }
        throw py.i();
    }

    public final ou zzcwb() throws IOException {
        int zzcwi = zzcwi();
        int i2 = this.f;
        int i3 = this.h;
        if (zzcwi <= i2 - i3 && zzcwi > 0) {
            ou zze = ou.zze(this.e, i3, zzcwi);
            this.h += zzcwi;
            return zze;
        } else if (zzcwi == 0) {
            return ou.zzpfg;
        } else {
            byte[] d2 = d(zzcwi);
            if (d2 != null) {
                return ou.a(d2);
            }
            int i4 = this.h;
            int i5 = this.f;
            int i6 = i5 - i4;
            this.j += i5;
            this.h = 0;
            this.f = 0;
            List<byte[]> e2 = e(zzcwi - i6);
            ArrayList arrayList = new ArrayList(e2.size() + 1);
            arrayList.add(ou.zze(this.e, i4, i6));
            for (byte[] a2 : e2) {
                arrayList.add(ou.a(a2));
            }
            return ou.zzf(arrayList);
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
            byte[] r2 = r5.e
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.pf.zzcwi():int");
    }

    public final int zzcwk() {
        int i2 = this.k;
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2 - (this.j + this.h);
    }

    public final boolean zzcwl() throws IOException {
        return this.h == this.f && !b(1);
    }

    public final int zzcwm() {
        return this.j + this.h;
    }

    public final void zzkp(int i2) throws py {
        if (this.i != i2) {
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
                    byte[] bArr = this.e;
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
            int i3 = i2 + this.j + this.h;
            int i4 = this.k;
            if (i3 <= i4) {
                this.k = i3;
                e();
                return i4;
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
        int i3 = this.f;
        int i4 = this.h;
        if (i2 <= i3 - i4 && i2 >= 0) {
            this.h = i4 + i2;
        } else if (i2 >= 0) {
            int i5 = this.j;
            int i6 = this.h;
            int i7 = i5 + i6 + i2;
            int i8 = this.k;
            if (i7 <= i8) {
                int i9 = this.f;
                int i10 = i9 - i6;
                this.h = i9;
                while (true) {
                    a(1);
                    int i11 = i2 - i10;
                    int i12 = this.f;
                    if (i11 > i12) {
                        i10 += i12;
                        this.h = i12;
                    } else {
                        this.h = i11;
                        return;
                    }
                }
            } else {
                zzku((i8 - i5) - i6);
                throw py.a();
            }
        } else {
            throw py.b();
        }
    }
}
