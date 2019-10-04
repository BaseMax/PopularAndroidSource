package com.google.android.gms.internal.measurement;

import c.e.a.b.g.f.Ab;
import c.e.a.b.g.f.C0829hc;
import c.e.a.b.g.f.C0864qb;
import c.e.a.b.g.f.Ca;
import c.e.a.b.g.f.Fc;
import c.e.a.b.g.f.Hc;
import c.e.a.b.g.f.Ka;
import c.e.a.b.g.f.Oc;
import c.e.a.b.g.f.Sb;
import c.e.a.b.g.f.Za;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class zzeg extends Ka {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f13174a = Logger.getLogger(zzeg.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f13175b = Fc.b();

    /* renamed from: c  reason: collision with root package name */
    public Za f13176c;

    static class a extends zzeg {

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f13177d;

        /* renamed from: e  reason: collision with root package name */
        public final int f13178e;

        /* renamed from: f  reason: collision with root package name */
        public final int f13179f;

        /* renamed from: g  reason: collision with root package name */
        public int f13180g;

        public a(byte[] bArr, int i2, int i3) {
            super();
            if (bArr != null) {
                int i4 = i2 + i3;
                if ((i2 | i3 | (bArr.length - i4)) >= 0) {
                    this.f13177d = bArr;
                    this.f13178e = i2;
                    this.f13180g = i2;
                    this.f13179f = i4;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)}));
            }
            throw new NullPointerException("buffer");
        }

        public void a() {
        }

        public final void a(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        public final void b(int i2, int i3) {
            a(i2, 0);
            a(i3);
        }

        public final void c(int i2, int i3) {
            a(i2, 0);
            b(i3);
        }

        public final void d(int i2) {
            try {
                byte[] bArr = this.f13177d;
                int i3 = this.f13180g;
                this.f13180g = i3 + 1;
                bArr[i3] = (byte) i2;
                byte[] bArr2 = this.f13177d;
                int i4 = this.f13180g;
                this.f13180g = i4 + 1;
                bArr2[i4] = (byte) (i2 >> 8);
                byte[] bArr3 = this.f13177d;
                int i5 = this.f13180g;
                this.f13180g = i5 + 1;
                bArr3[i5] = (byte) (i2 >> 16);
                byte[] bArr4 = this.f13177d;
                int i6 = this.f13180g;
                this.f13180g = i6 + 1;
                bArr4[i6] = (byte) (i2 >>> 24);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f13180g), Integer.valueOf(this.f13179f), 1}), e2);
            }
        }

        public final void e(int i2, int i3) {
            a(i2, 5);
            d(i3);
        }

        public final void a(int i2, long j2) {
            a(i2, 0);
            a(j2);
        }

        public final void b(zzdp zzdp) {
            b(zzdp.size());
            zzdp.a((Ka) this);
        }

        public final void c(int i2, long j2) {
            a(i2, 1);
            c(j2);
        }

        public final int e() {
            return this.f13180g - this.f13178e;
        }

        public final void a(int i2, boolean z) {
            a(i2, 0);
            a(z ? (byte) 1 : 0);
        }

        public final void b(int i2, Sb sb) {
            a(1, 3);
            c(2, i2);
            a(3, sb);
            a(1, 4);
        }

        public final void c(Sb sb) {
            b(sb.d());
            sb.a(this);
        }

        public final void a(int i2, String str) {
            a(i2, 2);
            b(str);
        }

        public final void c(long j2) {
            try {
                byte[] bArr = this.f13177d;
                int i2 = this.f13180g;
                this.f13180g = i2 + 1;
                bArr[i2] = (byte) ((int) j2);
                byte[] bArr2 = this.f13177d;
                int i3 = this.f13180g;
                this.f13180g = i3 + 1;
                bArr2[i3] = (byte) ((int) (j2 >> 8));
                byte[] bArr3 = this.f13177d;
                int i4 = this.f13180g;
                this.f13180g = i4 + 1;
                bArr3[i4] = (byte) ((int) (j2 >> 16));
                byte[] bArr4 = this.f13177d;
                int i5 = this.f13180g;
                this.f13180g = i5 + 1;
                bArr4[i5] = (byte) ((int) (j2 >> 24));
                byte[] bArr5 = this.f13177d;
                int i6 = this.f13180g;
                this.f13180g = i6 + 1;
                bArr5[i6] = (byte) ((int) (j2 >> 32));
                byte[] bArr6 = this.f13177d;
                int i7 = this.f13180g;
                this.f13180g = i7 + 1;
                bArr6[i7] = (byte) ((int) (j2 >> 40));
                byte[] bArr7 = this.f13177d;
                int i8 = this.f13180g;
                this.f13180g = i8 + 1;
                bArr7[i8] = (byte) ((int) (j2 >> 48));
                byte[] bArr8 = this.f13177d;
                int i9 = this.f13180g;
                this.f13180g = i9 + 1;
                bArr8[i9] = (byte) ((int) (j2 >> 56));
            } catch (IndexOutOfBoundsException e2) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f13180g), Integer.valueOf(this.f13179f), 1}), e2);
            }
        }

        public final void a(int i2, zzdp zzdp) {
            a(i2, 2);
            b(zzdp);
        }

        public final void b(int i2, zzdp zzdp) {
            a(1, 3);
            c(2, i2);
            a(3, zzdp);
            a(1, 4);
        }

        public final void a(int i2, Sb sb) {
            a(i2, 2);
            c(sb);
        }

        public final void a(int i2, Sb sb, C0829hc hcVar) {
            a(i2, 2);
            Ca ca = (Ca) sb;
            int h2 = ca.h();
            if (h2 == -1) {
                h2 = hcVar.b(ca);
                ca.a(h2);
            }
            b(h2);
            hcVar.a(sb, (Oc) this.f13176c);
        }

        public final void b(int i2) {
            if (!zzeg.f13175b || b() < 10) {
                while ((i2 & -128) != 0) {
                    byte[] bArr = this.f13177d;
                    int i3 = this.f13180g;
                    this.f13180g = i3 + 1;
                    bArr[i3] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                }
                try {
                    byte[] bArr2 = this.f13177d;
                    int i4 = this.f13180g;
                    this.f13180g = i4 + 1;
                    bArr2[i4] = (byte) i2;
                } catch (IndexOutOfBoundsException e2) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f13180g), Integer.valueOf(this.f13179f), 1}), e2);
                }
            } else {
                while ((i2 & -128) != 0) {
                    byte[] bArr3 = this.f13177d;
                    int i5 = this.f13180g;
                    this.f13180g = i5 + 1;
                    Fc.a(bArr3, (long) i5, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
                byte[] bArr4 = this.f13177d;
                int i6 = this.f13180g;
                this.f13180g = i6 + 1;
                Fc.a(bArr4, (long) i6, (byte) i2);
            }
        }

        public final void a(byte b2) {
            try {
                byte[] bArr = this.f13177d;
                int i2 = this.f13180g;
                this.f13180g = i2 + 1;
                bArr[i2] = b2;
            } catch (IndexOutOfBoundsException e2) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f13180g), Integer.valueOf(this.f13179f), 1}), e2);
            }
        }

        public final void b(byte[] bArr, int i2, int i3) {
            try {
                System.arraycopy(bArr, i2, this.f13177d, this.f13180g, i3);
                this.f13180g += i3;
            } catch (IndexOutOfBoundsException e2) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f13180g), Integer.valueOf(this.f13179f), Integer.valueOf(i3)}), e2);
            }
        }

        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a((long) i2);
            }
        }

        public final void a(long j2) {
            if (!zzeg.f13175b || b() < 10) {
                while ((j2 & -128) != 0) {
                    byte[] bArr = this.f13177d;
                    int i2 = this.f13180g;
                    this.f13180g = i2 + 1;
                    bArr[i2] = (byte) ((((int) j2) & 127) | 128);
                    j2 >>>= 7;
                }
                try {
                    byte[] bArr2 = this.f13177d;
                    int i3 = this.f13180g;
                    this.f13180g = i3 + 1;
                    bArr2[i3] = (byte) ((int) j2);
                } catch (IndexOutOfBoundsException e2) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Integer.valueOf(this.f13180g), Integer.valueOf(this.f13179f), 1}), e2);
                }
            } else {
                while ((j2 & -128) != 0) {
                    byte[] bArr3 = this.f13177d;
                    int i4 = this.f13180g;
                    this.f13180g = i4 + 1;
                    Fc.a(bArr3, (long) i4, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
                byte[] bArr4 = this.f13177d;
                int i5 = this.f13180g;
                this.f13180g = i5 + 1;
                Fc.a(bArr4, (long) i5, (byte) ((int) j2));
            }
        }

        public final void b(String str) {
            int i2 = this.f13180g;
            try {
                int g2 = zzeg.g(str.length() * 3);
                int g3 = zzeg.g(str.length());
                if (g3 == g2) {
                    this.f13180g = i2 + g3;
                    int a2 = Hc.a(str, this.f13177d, this.f13180g, b());
                    this.f13180g = i2;
                    b((a2 - i2) - g3);
                    this.f13180g = a2;
                    return;
                }
                b(Hc.a((CharSequence) str));
                this.f13180g = Hc.a(str, this.f13177d, this.f13180g, b());
            } catch (zzic e2) {
                this.f13180g = i2;
                a(str, e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new zzc((Throwable) e3);
            }
        }

        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        public final int b() {
            return this.f13179f - this.f13180g;
        }
    }

    static final class b extends a {

        /* renamed from: h  reason: collision with root package name */
        public final ByteBuffer f13181h;

        /* renamed from: i  reason: collision with root package name */
        public int f13182i;

        public b(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f13181h = byteBuffer;
            this.f13182i = byteBuffer.position();
        }

        public final void a() {
            this.f13181h.position(this.f13182i + e());
        }
    }

    static final class c extends zzeg {

        /* renamed from: d  reason: collision with root package name */
        public final ByteBuffer f13183d;

        /* renamed from: e  reason: collision with root package name */
        public final ByteBuffer f13184e;

        /* renamed from: f  reason: collision with root package name */
        public final int f13185f;

        public c(ByteBuffer byteBuffer) {
            super();
            this.f13183d = byteBuffer;
            this.f13184e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f13185f = byteBuffer.position();
        }

        public final void a(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        public final void b(int i2, int i3) {
            a(i2, 0);
            a(i3);
        }

        public final void c(int i2, int i3) {
            a(i2, 0);
            b(i3);
        }

        public final void d(int i2) {
            try {
                this.f13184e.putInt(i2);
            } catch (BufferOverflowException e2) {
                throw new zzc((Throwable) e2);
            }
        }

        public final void e(int i2, int i3) {
            a(i2, 5);
            d(i3);
        }

        public final void a(int i2, long j2) {
            a(i2, 0);
            a(j2);
        }

        public final void b(int i2, Sb sb) {
            a(1, 3);
            c(2, i2);
            a(3, sb);
            a(1, 4);
        }

        public final void c(int i2, long j2) {
            a(i2, 1);
            c(j2);
        }

        public final void a(int i2, boolean z) {
            a(i2, 0);
            a(z ? (byte) 1 : 0);
        }

        public final void c(Sb sb) {
            b(sb.d());
            sb.a(this);
        }

        public final void a(int i2, String str) {
            a(i2, 2);
            b(str);
        }

        public final void b(int i2, zzdp zzdp) {
            a(1, 3);
            c(2, i2);
            a(3, zzdp);
            a(1, 4);
        }

        public final void c(long j2) {
            try {
                this.f13184e.putLong(j2);
            } catch (BufferOverflowException e2) {
                throw new zzc((Throwable) e2);
            }
        }

        public final void a(int i2, zzdp zzdp) {
            a(i2, 2);
            b(zzdp);
        }

        public final void c(String str) {
            try {
                Hc.a((CharSequence) str, this.f13184e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzc((Throwable) e2);
            }
        }

        public final void a(int i2, Sb sb) {
            a(i2, 2);
            c(sb);
        }

        public final void b(Sb sb, C0829hc hcVar) {
            Ca ca = (Ca) sb;
            int h2 = ca.h();
            if (h2 == -1) {
                h2 = hcVar.b(ca);
                ca.a(h2);
            }
            b(h2);
            hcVar.a(sb, (Oc) this.f13176c);
        }

        public final void a(int i2, Sb sb, C0829hc hcVar) {
            a(i2, 2);
            b(sb, hcVar);
        }

        public final void a(byte b2) {
            try {
                this.f13184e.put(b2);
            } catch (BufferOverflowException e2) {
                throw new zzc((Throwable) e2);
            }
        }

        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a((long) i2);
            }
        }

        public final void b(zzdp zzdp) {
            b(zzdp.size());
            zzdp.a((Ka) this);
        }

        public final void a(long j2) {
            while ((-128 & j2) != 0) {
                this.f13184e.put((byte) ((((int) j2) & 127) | 128));
                j2 >>>= 7;
            }
            try {
                this.f13184e.put((byte) ((int) j2));
            } catch (BufferOverflowException e2) {
                throw new zzc((Throwable) e2);
            }
        }

        public final void b(int i2) {
            while ((i2 & -128) != 0) {
                this.f13184e.put((byte) ((i2 & 127) | 128));
                i2 >>>= 7;
            }
            try {
                this.f13184e.put((byte) i2);
            } catch (BufferOverflowException e2) {
                throw new zzc((Throwable) e2);
            }
        }

        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        public final void a() {
            this.f13183d.position(this.f13184e.position());
        }

        public final void b(byte[] bArr, int i2, int i3) {
            try {
                this.f13184e.put(bArr, i2, i3);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzc((Throwable) e2);
            } catch (BufferOverflowException e3) {
                throw new zzc((Throwable) e3);
            }
        }

        public final void b(String str) {
            int position = this.f13184e.position();
            try {
                int g2 = zzeg.g(str.length() * 3);
                int g3 = zzeg.g(str.length());
                if (g3 == g2) {
                    int position2 = this.f13184e.position() + g3;
                    this.f13184e.position(position2);
                    c(str);
                    int position3 = this.f13184e.position();
                    this.f13184e.position(position);
                    b(position3 - position2);
                    this.f13184e.position(position3);
                    return;
                }
                b(Hc.a((CharSequence) str));
                c(str);
            } catch (zzic e2) {
                this.f13184e.position(position);
                a(str, e2);
            } catch (IllegalArgumentException e3) {
                throw new zzc((Throwable) e3);
            }
        }

        public final int b() {
            return this.f13184e.remaining();
        }
    }

    static final class d extends zzeg {

        /* renamed from: d  reason: collision with root package name */
        public final ByteBuffer f13186d;

        /* renamed from: e  reason: collision with root package name */
        public final ByteBuffer f13187e;

        /* renamed from: f  reason: collision with root package name */
        public final long f13188f;

        /* renamed from: g  reason: collision with root package name */
        public final long f13189g;

        /* renamed from: h  reason: collision with root package name */
        public final long f13190h;

        /* renamed from: i  reason: collision with root package name */
        public final long f13191i = (this.f13190h - 10);

        /* renamed from: j  reason: collision with root package name */
        public long f13192j = this.f13189g;

        public d(ByteBuffer byteBuffer) {
            super();
            this.f13186d = byteBuffer;
            this.f13187e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f13188f = Fc.a(byteBuffer);
            this.f13189g = this.f13188f + ((long) byteBuffer.position());
            this.f13190h = this.f13188f + ((long) byteBuffer.limit());
        }

        public final void a(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        public final void b(int i2, int i3) {
            a(i2, 0);
            a(i3);
        }

        public final void c(int i2, int i3) {
            a(i2, 0);
            b(i3);
        }

        public final void d(int i2) {
            this.f13187e.putInt((int) (this.f13192j - this.f13188f), i2);
            this.f13192j += 4;
        }

        public final void e(int i2, int i3) {
            a(i2, 5);
            d(i3);
        }

        public final void j(long j2) {
            this.f13187e.position((int) (j2 - this.f13188f));
        }

        public final void a(int i2, long j2) {
            a(i2, 0);
            a(j2);
        }

        public final void b(int i2, Sb sb) {
            a(1, 3);
            c(2, i2);
            a(3, sb);
            a(1, 4);
        }

        public final void c(int i2, long j2) {
            a(i2, 1);
            c(j2);
        }

        public final void a(int i2, boolean z) {
            a(i2, 0);
            a(z ? (byte) 1 : 0);
        }

        public final void c(Sb sb) {
            b(sb.d());
            sb.a(this);
        }

        public final void a(int i2, String str) {
            a(i2, 2);
            b(str);
        }

        public final void b(int i2, zzdp zzdp) {
            a(1, 3);
            c(2, i2);
            a(3, zzdp);
            a(1, 4);
        }

        public final void c(long j2) {
            this.f13187e.putLong((int) (this.f13192j - this.f13188f), j2);
            this.f13192j += 8;
        }

        public final void a(int i2, zzdp zzdp) {
            a(i2, 2);
            b(zzdp);
        }

        public final void a(int i2, Sb sb) {
            a(i2, 2);
            c(sb);
        }

        public final void b(Sb sb, C0829hc hcVar) {
            Ca ca = (Ca) sb;
            int h2 = ca.h();
            if (h2 == -1) {
                h2 = hcVar.b(ca);
                ca.a(h2);
            }
            b(h2);
            hcVar.a(sb, (Oc) this.f13176c);
        }

        public final void a(int i2, Sb sb, C0829hc hcVar) {
            a(i2, 2);
            b(sb, hcVar);
        }

        public final void a(byte b2) {
            long j2 = this.f13192j;
            if (j2 < this.f13190h) {
                this.f13192j = 1 + j2;
                Fc.a(j2, b2);
                return;
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Long.valueOf(j2), Long.valueOf(this.f13190h), 1}));
        }

        public final void b(zzdp zzdp) {
            b(zzdp.size());
            zzdp.a((Ka) this);
        }

        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a((long) i2);
            }
        }

        public final void b(int i2) {
            if (this.f13192j <= this.f13191i) {
                while ((i2 & -128) != 0) {
                    long j2 = this.f13192j;
                    this.f13192j = j2 + 1;
                    Fc.a(j2, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
                long j3 = this.f13192j;
                this.f13192j = 1 + j3;
                Fc.a(j3, (byte) i2);
                return;
            }
            while (true) {
                long j4 = this.f13192j;
                if (j4 >= this.f13190h) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Long.valueOf(j4), Long.valueOf(this.f13190h), 1}));
                } else if ((i2 & -128) == 0) {
                    this.f13192j = 1 + j4;
                    Fc.a(j4, (byte) i2);
                    return;
                } else {
                    this.f13192j = j4 + 1;
                    Fc.a(j4, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
            }
        }

        public final void a(long j2) {
            if (this.f13192j <= this.f13191i) {
                while ((j2 & -128) != 0) {
                    long j3 = this.f13192j;
                    this.f13192j = j3 + 1;
                    Fc.a(j3, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
                long j4 = this.f13192j;
                this.f13192j = 1 + j4;
                Fc.a(j4, (byte) ((int) j2));
                return;
            }
            while (true) {
                long j5 = this.f13192j;
                if (j5 >= this.f13190h) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Long.valueOf(j5), Long.valueOf(this.f13190h), 1}));
                } else if ((j2 & -128) == 0) {
                    this.f13192j = 1 + j5;
                    Fc.a(j5, (byte) ((int) j2));
                    return;
                } else {
                    this.f13192j = j5 + 1;
                    Fc.a(j5, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
            }
        }

        public final void b(byte[] bArr, int i2, int i3) {
            if (bArr != null && i2 >= 0 && i3 >= 0 && bArr.length - i3 >= i2) {
                long j2 = (long) i3;
                long j3 = this.f13192j;
                if (this.f13190h - j2 >= j3) {
                    Fc.a(bArr, (long) i2, j3, j2);
                    this.f13192j += j2;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException("value");
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", new Object[]{Long.valueOf(this.f13192j), Long.valueOf(this.f13190h), Integer.valueOf(i3)}));
        }

        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        public final void a() {
            this.f13186d.position((int) (this.f13192j - this.f13188f));
        }

        public final void b(String str) {
            long j2 = this.f13192j;
            try {
                int g2 = zzeg.g(str.length() * 3);
                int g3 = zzeg.g(str.length());
                if (g3 == g2) {
                    int i2 = ((int) (this.f13192j - this.f13188f)) + g3;
                    this.f13187e.position(i2);
                    Hc.a((CharSequence) str, this.f13187e);
                    int position = this.f13187e.position() - i2;
                    b(position);
                    this.f13192j += (long) position;
                    return;
                }
                int a2 = Hc.a((CharSequence) str);
                b(a2);
                j(this.f13192j);
                Hc.a((CharSequence) str, this.f13187e);
                this.f13192j += (long) a2;
            } catch (zzic e2) {
                this.f13192j = j2;
                j(this.f13192j);
                a(str, e2);
            } catch (IllegalArgumentException e3) {
                throw new zzc((Throwable) e3);
            } catch (IndexOutOfBoundsException e4) {
                throw new zzc((Throwable) e4);
            }
        }

        public final int b() {
            return (int) (this.f13190h - this.f13192j);
        }
    }

    public static class zzc extends IOException {
        public zzc() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public zzc(java.lang.String r3) {
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
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzeg.zzc.<init>(java.lang.String):void");
        }

        public zzc(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public zzc(java.lang.String r3, java.lang.Throwable r4) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzeg.zzc.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    public zzeg() {
    }

    public static zzeg a(byte[] bArr) {
        return new a(bArr, 0, bArr.length);
    }

    public static int b(double d2) {
        return 8;
    }

    public static int b(float f2) {
        return 4;
    }

    public static int b(boolean z) {
        return 1;
    }

    public static int e(int i2, long j2) {
        return e(i2) + e(j2);
    }

    public static int e(long j2) {
        int i2;
        if ((-128 & j2) == 0) {
            return 1;
        }
        if (j2 < 0) {
            return 10;
        }
        if ((-34359738368L & j2) != 0) {
            i2 = 6;
            j2 >>>= 28;
        } else {
            i2 = 2;
        }
        if ((-2097152 & j2) != 0) {
            i2 += 2;
            j2 >>>= 14;
        }
        if ((j2 & -16384) != 0) {
            i2++;
        }
        return i2;
    }

    public static int f(int i2, int i3) {
        return e(i2) + f(i3);
    }

    public static int g(int i2) {
        if ((i2 & -128) == 0) {
            return 1;
        }
        if ((i2 & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & i2) == 0) {
            return 3;
        }
        return (i2 & -268435456) == 0 ? 4 : 5;
    }

    public static int g(int i2, int i3) {
        return e(i2) + g(i3);
    }

    public static int g(long j2) {
        return 8;
    }

    public static int h(int i2, int i3) {
        return e(i2) + g(l(i3));
    }

    public static int h(long j2) {
        return 8;
    }

    public static int i(int i2) {
        return 4;
    }

    public static int i(int i2, int i3) {
        return e(i2) + 4;
    }

    public static long i(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    public static int j(int i2) {
        return 4;
    }

    public static int j(int i2, int i3) {
        return e(i2) + 4;
    }

    public static int k(int i2, int i3) {
        return e(i2) + f(i3);
    }

    public static int l(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    @Deprecated
    public static int m(int i2) {
        return g(i2);
    }

    public abstract void a();

    public abstract void a(byte b2);

    public abstract void a(int i2);

    public abstract void a(int i2, int i3);

    public abstract void a(int i2, long j2);

    public abstract void a(int i2, Sb sb);

    public abstract void a(int i2, Sb sb, C0829hc hcVar);

    public abstract void a(int i2, zzdp zzdp);

    public abstract void a(int i2, String str);

    public abstract void a(int i2, boolean z);

    public abstract void a(long j2);

    public abstract int b();

    public abstract void b(int i2);

    public abstract void b(int i2, int i3);

    public final void b(int i2, long j2) {
        a(i2, i(j2));
    }

    public abstract void b(int i2, Sb sb);

    public abstract void b(int i2, zzdp zzdp);

    public abstract void b(byte[] bArr, int i2, int i3);

    public final void c(int i2) {
        b(l(i2));
    }

    public abstract void c(int i2, int i3);

    public abstract void c(int i2, long j2);

    public abstract void c(long j2);

    public abstract void d(int i2);

    public final void d(int i2, int i3) {
        c(i2, l(i3));
    }

    public abstract void e(int i2, int i3);

    public static int c(int i2, zzdp zzdp) {
        int e2 = e(i2);
        int size = zzdp.size();
        return e2 + g(size) + size;
    }

    public static int d(int i2, long j2) {
        return e(i2) + e(j2);
    }

    public static int e(int i2) {
        return g(i2 << 3);
    }

    public static int f(int i2, long j2) {
        return e(i2) + e(i(j2));
    }

    public static int g(int i2, long j2) {
        return e(i2) + 8;
    }

    public final void b(long j2) {
        a(i(j2));
    }

    public static zzeg a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new b(byteBuffer);
        }
        if (!byteBuffer.isDirect() || byteBuffer.isReadOnly()) {
            throw new IllegalArgumentException("ByteBuffer is read-only");
        } else if (Fc.c()) {
            return new d(byteBuffer);
        } else {
            return new c(byteBuffer);
        }
    }

    public static int b(int i2, float f2) {
        return e(i2) + 4;
    }

    public static int h(int i2, long j2) {
        return e(i2) + 8;
    }

    public static int k(int i2) {
        return f(i2);
    }

    public static int b(int i2, double d2) {
        return e(i2) + 8;
    }

    public static int d(int i2, Sb sb) {
        return (e(1) << 1) + g(2, i2) + c(3, sb);
    }

    public static int f(int i2) {
        if (i2 >= 0) {
            return g(i2);
        }
        return 10;
    }

    public static int h(int i2) {
        return g(l(i2));
    }

    public static int b(int i2, boolean z) {
        return e(i2) + 1;
    }

    public static int c(int i2, Sb sb) {
        return e(i2) + a(sb);
    }

    public static int f(long j2) {
        return e(i(j2));
    }

    public static int b(int i2, String str) {
        return e(i2) + a(str);
    }

    public final void c() {
        if (b() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public static int b(int i2, Sb sb, C0829hc hcVar) {
        return e(i2) + a(sb, hcVar);
    }

    public static int d(int i2, zzdp zzdp) {
        return (e(1) << 1) + g(2, i2) + c(3, zzdp);
    }

    public static int b(int i2, Ab ab) {
        return (e(1) << 1) + g(2, i2) + a(3, ab);
    }

    @Deprecated
    public static int c(int i2, Sb sb, C0829hc hcVar) {
        int e2 = e(i2) << 1;
        Ca ca = (Ca) sb;
        int h2 = ca.h();
        if (h2 == -1) {
            h2 = hcVar.b(ca);
            ca.a(h2);
        }
        return e2 + h2;
    }

    public static int d(long j2) {
        return e(j2);
    }

    public final void a(int i2, float f2) {
        e(i2, Float.floatToRawIntBits(f2));
    }

    public static int b(byte[] bArr) {
        int length = bArr.length;
        return g(length) + length;
    }

    public final void a(int i2, double d2) {
        c(i2, Double.doubleToRawLongBits(d2));
    }

    public final void a(float f2) {
        d(Float.floatToRawIntBits(f2));
    }

    @Deprecated
    public static int b(Sb sb) {
        return sb.d();
    }

    public final void a(double d2) {
        c(Double.doubleToRawLongBits(d2));
    }

    public final void a(boolean z) {
        a(z ? (byte) 1 : 0);
    }

    public static int a(int i2, Ab ab) {
        int e2 = e(i2);
        int b2 = ab.b();
        return e2 + g(b2) + b2;
    }

    public static int a(String str) {
        int i2;
        try {
            i2 = Hc.a((CharSequence) str);
        } catch (zzic unused) {
            i2 = str.getBytes(C0864qb.f10508a).length;
        }
        return g(i2) + i2;
    }

    public static int a(Ab ab) {
        int b2 = ab.b();
        return g(b2) + b2;
    }

    public static int a(zzdp zzdp) {
        int size = zzdp.size();
        return g(size) + size;
    }

    public static int a(Sb sb) {
        int d2 = sb.d();
        return g(d2) + d2;
    }

    public static int a(Sb sb, C0829hc hcVar) {
        Ca ca = (Ca) sb;
        int h2 = ca.h();
        if (h2 == -1) {
            h2 = hcVar.b(ca);
            ca.a(h2);
        }
        return g(h2) + h2;
    }

    public final void a(String str, zzic zzic) {
        f13174a.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", zzic);
        byte[] bytes = str.getBytes(C0864qb.f10508a);
        try {
            b(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzc((Throwable) e2);
        } catch (zzc e3) {
            throw e3;
        }
    }
}
