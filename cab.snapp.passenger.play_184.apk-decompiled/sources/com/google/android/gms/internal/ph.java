package com.google.android.gms.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class ph extends ot {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f3437a = rx.a();
    private static final Logger c = Logger.getLogger(ph.class.getName());

    /* renamed from: b  reason: collision with root package name */
    pi f3438b;

    static abstract class a extends ph {
        final byte[] c;
        final int d;
        int e;
        int f;

        a(int i) {
            super((byte) 0);
            if (i >= 0) {
                this.c = new byte[Math.max(i, 20)];
                this.d = this.c.length;
                return;
            }
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }

        /* access modifiers changed from: package-private */
        public final void a(byte b2) {
            byte[] bArr = this.c;
            int i = this.e;
            this.e = i + 1;
            bArr[i] = b2;
            this.f++;
        }

        /* access modifiers changed from: package-private */
        public final void a(int i, int i2) {
            b((i << 3) | i2);
        }

        /* access modifiers changed from: package-private */
        public final void b(long j) {
            byte[] bArr = this.c;
            int i = this.e;
            this.e = i + 1;
            bArr[i] = (byte) ((int) (j & 255));
            int i2 = this.e;
            this.e = i2 + 1;
            bArr[i2] = (byte) ((int) ((j >> 8) & 255));
            int i3 = this.e;
            this.e = i3 + 1;
            bArr[i3] = (byte) ((int) ((j >> 16) & 255));
            int i4 = this.e;
            this.e = i4 + 1;
            bArr[i4] = (byte) ((int) (255 & (j >> 24)));
            int i5 = this.e;
            this.e = i5 + 1;
            bArr[i5] = (byte) ((int) (j >> 32));
            int i6 = this.e;
            this.e = i6 + 1;
            bArr[i6] = (byte) ((int) (j >> 40));
            int i7 = this.e;
            this.e = i7 + 1;
            bArr[i7] = (byte) ((int) (j >> 48));
            int i8 = this.e;
            this.e = i8 + 1;
            bArr[i8] = (byte) ((int) (j >> 56));
            this.f += 8;
        }

        /* access modifiers changed from: package-private */
        public final void c(int i) {
            byte[] bArr = this.c;
            int i2 = this.e;
            this.e = i2 + 1;
            bArr[i2] = (byte) i;
            int i3 = this.e;
            this.e = i3 + 1;
            bArr[i3] = (byte) (i >> 8);
            int i4 = this.e;
            this.e = i4 + 1;
            bArr[i4] = (byte) (i >> 16);
            int i5 = this.e;
            this.e = i5 + 1;
            bArr[i5] = i >> 24;
            this.f += 4;
        }

        public final int zzcws() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }

        /* access modifiers changed from: package-private */
        public final void b(int i) {
            if (ph.f3437a) {
                long j = (long) this.e;
                while ((i & -128) != 0) {
                    byte[] bArr = this.c;
                    int i2 = this.e;
                    this.e = i2 + 1;
                    rx.a(bArr, (long) i2, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                byte[] bArr2 = this.c;
                int i3 = this.e;
                this.e = i3 + 1;
                rx.a(bArr2, (long) i3, (byte) i);
                this.f += (int) (((long) this.e) - j);
                return;
            }
            while ((i & -128) != 0) {
                byte[] bArr3 = this.c;
                int i4 = this.e;
                this.e = i4 + 1;
                bArr3[i4] = (byte) ((i & 127) | 128);
                this.f++;
                i >>>= 7;
            }
            byte[] bArr4 = this.c;
            int i5 = this.e;
            this.e = i5 + 1;
            bArr4[i5] = (byte) i;
            this.f++;
        }

        /* access modifiers changed from: package-private */
        public final void a(long j) {
            int i;
            if (ph.f3437a) {
                long j2 = (long) this.e;
                while ((j & -128) != 0) {
                    byte[] bArr = this.c;
                    int i2 = this.e;
                    this.e = i2 + 1;
                    rx.a(bArr, (long) i2, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr2 = this.c;
                int i3 = this.e;
                this.e = i3 + 1;
                rx.a(bArr2, (long) i3, (byte) ((int) j));
                i = this.f + ((int) (((long) this.e) - j2));
            } else {
                while ((j & -128) != 0) {
                    byte[] bArr3 = this.c;
                    int i4 = this.e;
                    this.e = i4 + 1;
                    bArr3[i4] = (byte) ((((int) j) & 127) | 128);
                    this.f++;
                    j >>>= 7;
                }
                byte[] bArr4 = this.c;
                int i5 = this.e;
                this.e = i5 + 1;
                bArr4[i5] = (byte) ((int) j);
                i = this.f + 1;
            }
            this.f = i;
        }
    }

    static class b extends ph {
        private final byte[] c;
        private final int d;
        private final int e;
        private int f;

        b(byte[] bArr, int i, int i2) {
            super((byte) 0);
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) >= 0) {
                    this.c = bArr;
                    this.d = i;
                    this.f = i;
                    this.e = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)}));
            }
            throw new NullPointerException("buffer");
        }

        public final void flush() {
        }

        public final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.c, this.f, i2);
                this.f += i2;
            } catch (IndexOutOfBoundsException e2) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f), Integer.valueOf(this.e), Integer.valueOf(i2)}), e2);
            }
        }

        public final void zza(int i, long j) throws IOException {
            zzz(i, 0);
            zzct(j);
        }

        public final void zza(int i, ou ouVar) throws IOException {
            zzz(i, 2);
            zzay(ouVar);
        }

        public final void zza(int i, qr qrVar) throws IOException {
            zzz(i, 2);
            zze(qrVar);
        }

        public final void zzaa(int i, int i2) throws IOException {
            zzz(i, 0);
            zzlc(i2);
        }

        public final void zzab(int i, int i2) throws IOException {
            zzz(i, 0);
            zzld(i2);
        }

        public final void zzac(int i, int i2) throws IOException {
            zzz(i, 5);
            zzlf(i2);
        }

        public final void zzay(ou ouVar) throws IOException {
            zzld(ouVar.size());
            ouVar.a((ot) this);
        }

        public final void zzb(byte b2) throws IOException {
            try {
                byte[] bArr = this.c;
                int i = this.f;
                this.f = i + 1;
                bArr[i] = b2;
            } catch (IndexOutOfBoundsException e2) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f), Integer.valueOf(this.e), 1}), e2);
            }
        }

        public final void zzb(int i, long j) throws IOException {
            zzz(i, 1);
            zzcv(j);
        }

        public final void zzb(int i, ou ouVar) throws IOException {
            zzz(1, 3);
            zzab(2, i);
            zza(3, ouVar);
            zzz(1, 4);
        }

        public final void zzb(int i, qr qrVar) throws IOException {
            zzz(1, 3);
            zzab(2, i);
            zza(3, qrVar);
            zzz(1, 4);
        }

        public final void zzcv(long j) throws IOException {
            try {
                byte[] bArr = this.c;
                int i = this.f;
                this.f = i + 1;
                bArr[i] = (byte) ((int) j);
                byte[] bArr2 = this.c;
                int i2 = this.f;
                this.f = i2 + 1;
                bArr2[i2] = (byte) ((int) (j >> 8));
                byte[] bArr3 = this.c;
                int i3 = this.f;
                this.f = i3 + 1;
                bArr3[i3] = (byte) ((int) (j >> 16));
                byte[] bArr4 = this.c;
                int i4 = this.f;
                this.f = i4 + 1;
                bArr4[i4] = (byte) ((int) (j >> 24));
                byte[] bArr5 = this.c;
                int i5 = this.f;
                this.f = i5 + 1;
                bArr5[i5] = (byte) ((int) (j >> 32));
                byte[] bArr6 = this.c;
                int i6 = this.f;
                this.f = i6 + 1;
                bArr6[i6] = (byte) ((int) (j >> 40));
                byte[] bArr7 = this.c;
                int i7 = this.f;
                this.f = i7 + 1;
                bArr7[i7] = (byte) ((int) (j >> 48));
                byte[] bArr8 = this.c;
                int i8 = this.f;
                this.f = i8 + 1;
                bArr8[i8] = (byte) ((int) (j >> 56));
            } catch (IndexOutOfBoundsException e2) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f), Integer.valueOf(this.e), 1}), e2);
            }
        }

        public final int zzcws() {
            return this.e - this.f;
        }

        public final void zzd(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        public final void zze(qr qrVar) throws IOException {
            zzld(qrVar.zzho());
            qrVar.zza(this);
        }

        public final void zzi(byte[] bArr, int i, int i2) throws IOException {
            zzld(i2);
            write(bArr, 0, i2);
        }

        public final void zzl(int i, boolean z) throws IOException {
            zzz(i, 0);
            zzb(z ? (byte) 1 : 0);
        }

        public final void zzlc(int i) throws IOException {
            if (i >= 0) {
                zzld(i);
            } else {
                zzct((long) i);
            }
        }

        public final void zzlf(int i) throws IOException {
            try {
                byte[] bArr = this.c;
                int i2 = this.f;
                this.f = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.c;
                int i3 = this.f;
                this.f = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.c;
                int i4 = this.f;
                this.f = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.c;
                int i5 = this.f;
                this.f = i5 + 1;
                bArr4[i5] = i >> 24;
            } catch (IndexOutOfBoundsException e2) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f), Integer.valueOf(this.e), 1}), e2);
            }
        }

        public final void zzn(int i, String str) throws IOException {
            zzz(i, 2);
            zzts(str);
        }

        public final void zzts(String str) throws IOException {
            int i = this.f;
            try {
                int zzli = zzli(str.length() * 3);
                int zzli2 = zzli(str.length());
                if (zzli2 == zzli) {
                    this.f = i + zzli2;
                    int a2 = rz.a(str, this.c, this.f, zzcws());
                    this.f = i;
                    zzld((a2 - i) - zzli2);
                    this.f = a2;
                    return;
                }
                zzld(rz.a((CharSequence) str));
                this.f = rz.a(str, this.c, this.f, zzcws());
            } catch (sc e2) {
                this.f = i;
                a(str, e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new c(e3);
            }
        }

        public final void zzz(int i, int i2) throws IOException {
            zzld((i << 3) | i2);
        }

        public final void zzld(int i) throws IOException {
            if (!ph.f3437a || zzcws() < 10) {
                while ((i & -128) != 0) {
                    byte[] bArr = this.c;
                    int i2 = this.f;
                    this.f = i2 + 1;
                    bArr[i2] = (byte) ((i & 127) | 128);
                    i >>>= 7;
                }
                try {
                    byte[] bArr2 = this.c;
                    int i3 = this.f;
                    this.f = i3 + 1;
                    bArr2[i3] = (byte) i;
                } catch (IndexOutOfBoundsException e2) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f), Integer.valueOf(this.e), 1}), e2);
                }
            } else {
                while ((i & -128) != 0) {
                    byte[] bArr3 = this.c;
                    int i4 = this.f;
                    this.f = i4 + 1;
                    rx.a(bArr3, (long) i4, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                byte[] bArr4 = this.c;
                int i5 = this.f;
                this.f = i5 + 1;
                rx.a(bArr4, (long) i5, (byte) i);
            }
        }

        public final void zzct(long j) throws IOException {
            if (!ph.f3437a || zzcws() < 10) {
                while ((j & -128) != 0) {
                    byte[] bArr = this.c;
                    int i = this.f;
                    this.f = i + 1;
                    bArr[i] = (byte) ((((int) j) & 127) | 128);
                    j >>>= 7;
                }
                try {
                    byte[] bArr2 = this.c;
                    int i2 = this.f;
                    this.f = i2 + 1;
                    bArr2[i2] = (byte) ((int) j);
                } catch (IndexOutOfBoundsException e2) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f), Integer.valueOf(this.e), 1}), e2);
                }
            } else {
                while ((j & -128) != 0) {
                    byte[] bArr3 = this.c;
                    int i3 = this.f;
                    this.f = i3 + 1;
                    rx.a(bArr3, (long) i3, (byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                }
                byte[] bArr4 = this.c;
                int i4 = this.f;
                this.f = i4 + 1;
                rx.a(bArr4, (long) i4, (byte) ((int) j));
            }
        }
    }

    public static class c extends IOException {
        c() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        c(java.lang.String r3, java.lang.Throwable r4) {
            /*
                r2 = this;
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r0 = r3.length()
                java.lang.String r1 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                if (r0 == 0) goto L_0x0011
                java.lang.String r3 = r1.concat(r3)
                goto L_0x0016
            L_0x0011:
                java.lang.String r3 = new java.lang.String
                r3.<init>(r1)
            L_0x0016:
                r2.<init>(r3, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ph.c.<init>(java.lang.String, java.lang.Throwable):void");
        }

        c(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    static final class d extends a {
        private final OutputStream g;

        d(OutputStream outputStream, int i) {
            super(i);
            if (outputStream != null) {
                this.g = outputStream;
                return;
            }
            throw new NullPointerException("out");
        }

        private final void a() throws IOException {
            this.g.write(this.c, 0, this.e);
            this.e = 0;
        }

        private final void d(int i) throws IOException {
            if (this.d - this.e < i) {
                a();
            }
        }

        public final void flush() throws IOException {
            if (this.e > 0) {
                a();
            }
        }

        public final void write(byte[] bArr, int i, int i2) throws IOException {
            if (this.d - this.e >= i2) {
                System.arraycopy(bArr, i, this.c, this.e, i2);
                this.e += i2;
            } else {
                int i3 = this.d - this.e;
                System.arraycopy(bArr, i, this.c, this.e, i3);
                int i4 = i + i3;
                i2 -= i3;
                this.e = this.d;
                this.f += i3;
                a();
                if (i2 <= this.d) {
                    System.arraycopy(bArr, i4, this.c, 0, i2);
                    this.e = i2;
                } else {
                    this.g.write(bArr, i4, i2);
                }
            }
            this.f += i2;
        }

        public final void zza(int i, long j) throws IOException {
            d(20);
            a(i, 0);
            a(j);
        }

        public final void zza(int i, ou ouVar) throws IOException {
            zzz(i, 2);
            zzay(ouVar);
        }

        public final void zza(int i, qr qrVar) throws IOException {
            zzz(i, 2);
            zze(qrVar);
        }

        public final void zzaa(int i, int i2) throws IOException {
            d(20);
            a(i, 0);
            if (i2 >= 0) {
                b(i2);
            } else {
                a((long) i2);
            }
        }

        public final void zzab(int i, int i2) throws IOException {
            d(20);
            a(i, 0);
            b(i2);
        }

        public final void zzac(int i, int i2) throws IOException {
            d(14);
            a(i, 5);
            c(i2);
        }

        public final void zzay(ou ouVar) throws IOException {
            zzld(ouVar.size());
            ouVar.a((ot) this);
        }

        public final void zzb(byte b2) throws IOException {
            if (this.e == this.d) {
                a();
            }
            a(b2);
        }

        public final void zzb(int i, long j) throws IOException {
            d(18);
            a(i, 1);
            b(j);
        }

        public final void zzb(int i, ou ouVar) throws IOException {
            zzz(1, 3);
            zzab(2, i);
            zza(3, ouVar);
            zzz(1, 4);
        }

        public final void zzb(int i, qr qrVar) throws IOException {
            zzz(1, 3);
            zzab(2, i);
            zza(3, qrVar);
            zzz(1, 4);
        }

        public final void zzct(long j) throws IOException {
            d(10);
            a(j);
        }

        public final void zzcv(long j) throws IOException {
            d(8);
            b(j);
        }

        public final void zzd(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        public final void zze(qr qrVar) throws IOException {
            zzld(qrVar.zzho());
            qrVar.zza(this);
        }

        public final void zzi(byte[] bArr, int i, int i2) throws IOException {
            zzld(i2);
            write(bArr, 0, i2);
        }

        public final void zzl(int i, boolean z) throws IOException {
            d(11);
            a(i, 0);
            a(z ? (byte) 1 : 0);
        }

        public final void zzlc(int i) throws IOException {
            if (i >= 0) {
                zzld(i);
            } else {
                zzct((long) i);
            }
        }

        public final void zzld(int i) throws IOException {
            d(10);
            b(i);
        }

        public final void zzlf(int i) throws IOException {
            d(4);
            c(i);
        }

        public final void zzn(int i, String str) throws IOException {
            zzz(i, 2);
            zzts(str);
        }

        public final void zzts(String str) throws IOException {
            int i;
            int i2;
            try {
                int length = str.length() * 3;
                int zzli = zzli(length);
                int i3 = zzli + length;
                if (i3 > this.d) {
                    byte[] bArr = new byte[length];
                    int a2 = rz.a(str, bArr, 0, length);
                    zzld(a2);
                    zzd(bArr, 0, a2);
                    return;
                }
                if (i3 > this.d - this.e) {
                    a();
                }
                int zzli2 = zzli(str.length());
                i = this.e;
                if (zzli2 == zzli) {
                    this.e = i + zzli2;
                    int a3 = rz.a(str, this.c, this.e, this.d - this.e);
                    this.e = i;
                    i2 = (a3 - i) - zzli2;
                    b(i2);
                    this.e = a3;
                } else {
                    i2 = rz.a((CharSequence) str);
                    b(i2);
                    this.e = rz.a(str, this.c, this.e, i2);
                }
                this.f += i2;
            } catch (sc e) {
                this.f -= this.e - i;
                this.e = i;
                throw e;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new c(e2);
            } catch (sc e3) {
                a(str, e3);
            }
        }

        public final void zzz(int i, int i2) throws IOException {
            zzld((i << 3) | i2);
        }
    }

    private ph() {
    }

    /* synthetic */ ph(byte b2) {
        this();
    }

    static int a(int i) {
        if (i > 4096) {
            return 4096;
        }
        return i;
    }

    private static long a(long j) {
        return (j >> 63) ^ (j << 1);
    }

    private static int b(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static int zza(int i, qd qdVar) {
        int zzlg = zzlg(i);
        int zzho = qdVar.zzho();
        return zzlg + zzli(zzho) + zzho;
    }

    public static int zza(qd qdVar) {
        int zzho = qdVar.zzho();
        return zzli(zzho) + zzho;
    }

    public static int zzad(int i, int i2) {
        return zzlg(i) + zzlh(i2);
    }

    public static int zzae(int i, int i2) {
        return zzlg(i) + zzli(i2);
    }

    public static int zzaf(int i, int i2) {
        return zzlg(i) + 4;
    }

    public static int zzag(int i, int i2) {
        return zzlg(i) + zzlh(i2);
    }

    public static int zzaz(ou ouVar) {
        int size = ouVar.size();
        return zzli(size) + size;
    }

    public static int zzb(int i, double d2) {
        return zzlg(i) + 8;
    }

    public static int zzb(int i, qd qdVar) {
        return (zzlg(1) << 1) + zzae(2, i) + zza(3, qdVar);
    }

    public static ph zzb(OutputStream outputStream, int i) {
        return new d(outputStream, i);
    }

    public static ph zzbc(byte[] bArr) {
        return zzh(bArr, 0, bArr.length);
    }

    public static int zzbd(byte[] bArr) {
        int length = bArr.length;
        return zzli(length) + length;
    }

    public static int zzc(int i, long j) {
        return zzlg(i) + zzcx(j);
    }

    public static int zzc(int i, ou ouVar) {
        int zzlg = zzlg(i);
        int size = ouVar.size();
        return zzlg + zzli(size) + size;
    }

    public static int zzc(int i, qr qrVar) {
        return zzlg(i) + zzf(qrVar);
    }

    public static int zzcw(long j) {
        return zzcx(j);
    }

    public static int zzcx(long j) {
        int i;
        if ((-128 & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if ((-34359738368L & j) != 0) {
            i = 6;
            j >>>= 28;
        } else {
            i = 2;
        }
        if ((-2097152 & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        if ((j & -16384) != 0) {
            i++;
        }
        return i;
    }

    public static int zzcy(long j) {
        return zzcx(a(j));
    }

    public static int zzcz(long j) {
        return 8;
    }

    public static int zzd(int i, long j) {
        return zzlg(i) + zzcx(j);
    }

    public static int zzd(int i, ou ouVar) {
        return (zzlg(1) << 1) + zzae(2, i) + zzc(3, ouVar);
    }

    public static int zzd(int i, qr qrVar) {
        return (zzlg(1) << 1) + zzae(2, i) + zzc(3, qrVar);
    }

    public static int zzda(long j) {
        return 8;
    }

    public static int zzde(boolean z) {
        return 1;
    }

    public static int zze(int i, long j) {
        return zzlg(i) + 8;
    }

    public static int zzf(qr qrVar) {
        int zzho = qrVar.zzho();
        return zzli(zzho) + zzho;
    }

    public static int zzg(float f) {
        return 4;
    }

    @Deprecated
    public static int zzg(qr qrVar) {
        return qrVar.zzho();
    }

    public static ph zzh(byte[] bArr, int i, int i2) {
        return new b(bArr, i, i2);
    }

    public static int zzlg(int i) {
        return zzli(i << 3);
    }

    public static int zzlh(int i) {
        if (i >= 0) {
            return zzli(i);
        }
        return 10;
    }

    public static int zzli(int i) {
        if ((i & -128) == 0) {
            return 1;
        }
        if ((i & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & i) == 0) {
            return 3;
        }
        return (i & -268435456) == 0 ? 4 : 5;
    }

    public static int zzlj(int i) {
        return zzli(b(i));
    }

    public static int zzlk(int i) {
        return 4;
    }

    public static int zzll(int i) {
        return 4;
    }

    public static int zzlm(int i) {
        return zzlh(i);
    }

    @Deprecated
    public static int zzlp(int i) {
        return zzli(i);
    }

    public static int zzm(int i, boolean z) {
        return zzlg(i) + 1;
    }

    public static int zzo(double d2) {
        return 8;
    }

    public static int zzo(int i, String str) {
        return zzlg(i) + zztt(str);
    }

    public static int zztt(String str) {
        int i;
        try {
            i = rz.a((CharSequence) str);
        } catch (sc unused) {
            i = str.getBytes(pu.f3459a).length;
        }
        return zzli(i) + i;
    }

    /* access modifiers changed from: package-private */
    public final void a(String str, sc scVar) throws IOException {
        c.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", scVar);
        byte[] bytes = str.getBytes(pu.f3459a);
        try {
            zzld(bytes.length);
            zzd(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e) {
            throw new c(e);
        } catch (c e2) {
            throw e2;
        }
    }

    public abstract void flush() throws IOException;

    public abstract void write(byte[] bArr, int i, int i2) throws IOException;

    public final void zza(int i, double d2) throws IOException {
        zzb(i, Double.doubleToRawLongBits(d2));
    }

    public abstract void zza(int i, long j) throws IOException;

    public abstract void zza(int i, ou ouVar) throws IOException;

    public abstract void zza(int i, qr qrVar) throws IOException;

    public abstract void zzaa(int i, int i2) throws IOException;

    public abstract void zzab(int i, int i2) throws IOException;

    public abstract void zzac(int i, int i2) throws IOException;

    public abstract void zzay(ou ouVar) throws IOException;

    public abstract void zzb(byte b2) throws IOException;

    public abstract void zzb(int i, long j) throws IOException;

    public abstract void zzb(int i, ou ouVar) throws IOException;

    public abstract void zzb(int i, qr qrVar) throws IOException;

    public abstract void zzct(long j) throws IOException;

    public final void zzcu(long j) throws IOException {
        zzct(a(j));
    }

    public abstract void zzcv(long j) throws IOException;

    public abstract int zzcws();

    public final void zzcwt() {
        if (zzcws() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzdd(boolean z) throws IOException {
        zzb(z ? (byte) 1 : 0);
    }

    @Deprecated
    public final void zze(int i, qr qrVar) throws IOException {
        zzz(i, 3);
        qrVar.zza(this);
        zzz(i, 4);
    }

    public abstract void zze(qr qrVar) throws IOException;

    public final void zzf(float f) throws IOException {
        zzlf(Float.floatToRawIntBits(f));
    }

    public abstract void zzl(int i, boolean z) throws IOException;

    public abstract void zzlc(int i) throws IOException;

    public abstract void zzld(int i) throws IOException;

    public final void zzle(int i) throws IOException {
        zzld(b(i));
    }

    public abstract void zzlf(int i) throws IOException;

    public final void zzn(double d2) throws IOException {
        zzcv(Double.doubleToRawLongBits(d2));
    }

    public abstract void zzn(int i, String str) throws IOException;

    public abstract void zzts(String str) throws IOException;

    public abstract void zzz(int i, int i2) throws IOException;
}
