package com.koushikdutta.async.http;

import com.koushikdutta.async.a.d;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.p;
import com.pusher.java_websocket.drafts.c;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

abstract class r {
    private static final List<Integer> v = Arrays.asList(new Integer[]{0, 1, 2, 8, 9, 10});
    private static final List<Integer> w = Arrays.asList(new Integer[]{0, 1, 2});

    /* renamed from: a  reason: collision with root package name */
    d f4766a = new d() {
        public final void onDataAvailable(n nVar, l lVar) {
            try {
                r.a(r.this, lVar.get());
            } catch (a e) {
                r.this.a((Exception) e);
                e.printStackTrace();
            }
            r.this.a();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    d f4767b = new d() {
        public final void onDataAvailable(n nVar, l lVar) {
            r.b(r.this, lVar.get());
            r.this.a();
        }
    };
    d c = new d() {
        public final void onDataAvailable(n nVar, l lVar) {
            byte[] bArr = new byte[r.this.m];
            lVar.get(bArr);
            try {
                r.a(r.this, bArr);
            } catch (a e) {
                r.this.a((Exception) e);
                e.printStackTrace();
            }
            r.this.a();
        }
    };
    d d = new d() {
        public final void onDataAvailable(n nVar, l lVar) {
            byte[] unused = r.this.p = new byte[4];
            lVar.get(r.this.p);
            int unused2 = r.this.h = 4;
            r.this.a();
        }
    };
    d e = new d() {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ boolean f4772a = (!r.class.desiredAssertionStatus());

        public final void onDataAvailable(n nVar, l lVar) {
            if (f4772a || lVar.remaining() == r.this.n) {
                r rVar = r.this;
                byte[] unused = rVar.q = new byte[rVar.n];
                lVar.get(r.this.q);
                try {
                    r.e(r.this);
                } catch (IOException e) {
                    r.this.a((Exception) e);
                    e.printStackTrace();
                }
                int unused2 = r.this.h = 0;
                r.this.a();
                return;
            }
            throw new AssertionError();
        }
    };
    private boolean f = true;
    private boolean g = false;
    /* access modifiers changed from: private */
    public int h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int l;
    /* access modifiers changed from: private */
    public int m;
    /* access modifiers changed from: private */
    public int n;
    private int o;
    /* access modifiers changed from: private */
    public byte[] p = new byte[0];
    /* access modifiers changed from: private */
    public byte[] q = new byte[0];
    private boolean r = false;
    private ByteArrayOutputStream s = new ByteArrayOutputStream();
    private Inflater t = new Inflater(true);
    private byte[] u = new byte[4096];
    private p x = new p();

    public static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }

    /* access modifiers changed from: protected */
    public abstract void a(Exception exc);

    /* access modifiers changed from: protected */
    public abstract void a(String str);

    /* access modifiers changed from: protected */
    public abstract void a(byte[] bArr);

    /* access modifiers changed from: protected */
    public abstract void b();

    /* access modifiers changed from: protected */
    public abstract void b(String str);

    /* access modifiers changed from: protected */
    public abstract void b(byte[] bArr);

    /* access modifiers changed from: protected */
    public abstract void c(String str);

    private static byte[] a(byte[] bArr, byte[] bArr2, int i2) {
        if (bArr2.length == 0) {
            return bArr;
        }
        for (int i3 = 0; i3 < bArr.length - i2; i3++) {
            int i4 = i2 + i3;
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i3 % 4]);
        }
        return bArr;
    }

    public void setMasking(boolean z) {
        this.f = z;
    }

    public void setDeflate(boolean z) {
        this.g = z;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        int i2 = this.h;
        if (i2 == 0) {
            this.x.read(1, this.f4766a);
        } else if (i2 == 1) {
            this.x.read(1, this.f4767b);
        } else if (i2 == 2) {
            this.x.read(this.m, this.c);
        } else if (i2 != 3) {
            if (i2 == 4) {
                this.x.read(this.n, this.e);
            }
        } else {
            this.x.read(4, this.d);
        }
    }

    public r(n nVar) {
        nVar.setDataCallback(this.x);
        a();
    }

    public byte[] frame(String str) {
        return a(1, str, -1);
    }

    public byte[] frame(byte[] bArr) {
        return a(2, bArr, -1);
    }

    public byte[] frame(byte[] bArr, int i2, int i3) {
        return a(2, bArr, -1, i2, i3);
    }

    public byte[] pingFrame(String str) {
        return a(9, str, -1);
    }

    public byte[] pongFrame(String str) {
        return a(10, str, -1);
    }

    private byte[] a(int i2, byte[] bArr, int i3) {
        return a(i2, bArr, i3, 0, bArr.length);
    }

    private byte[] a(int i2, String str, int i3) {
        return a(i2, d(str), i3);
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x00c4  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00df  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private byte[] a(int r22, byte[] r23, int r24, int r25, int r26) {
        /*
            r21 = this;
            r0 = r21
            r1 = r24
            r2 = r25
            boolean r3 = r0.r
            if (r3 == 0) goto L_0x000c
            r1 = 0
            return r1
        L_0x000c:
            r3 = 2
            r4 = 0
            if (r1 <= 0) goto L_0x0012
            r5 = 2
            goto L_0x0013
        L_0x0012:
            r5 = 0
        L_0x0013:
            int r6 = r26 + r5
            int r6 = r6 - r2
            r7 = 65535(0xffff, float:9.1834E-41)
            r8 = 125(0x7d, float:1.75E-43)
            r9 = 4
            if (r6 > r8) goto L_0x0020
            r10 = 2
            goto L_0x0026
        L_0x0020:
            if (r6 > r7) goto L_0x0024
            r10 = 4
            goto L_0x0026
        L_0x0024:
            r10 = 10
        L_0x0026:
            boolean r11 = r0.f
            if (r11 == 0) goto L_0x002c
            r11 = 4
            goto L_0x002d
        L_0x002c:
            r11 = 0
        L_0x002d:
            int r11 = r11 + r10
            boolean r12 = r0.f
            if (r12 == 0) goto L_0x0035
            r12 = 128(0x80, float:1.794E-43)
            goto L_0x0036
        L_0x0035:
            r12 = 0
        L_0x0036:
            int r13 = r6 + r11
            byte[] r13 = new byte[r13]
            r14 = r22
            byte r14 = (byte) r14
            r14 = r14 | -128(0xffffffffffffff80, float:NaN)
            byte r14 = (byte) r14
            r13[r4] = r14
            r14 = 3
            r15 = 1
            if (r6 > r8) goto L_0x004d
            r6 = r6 | r12
            byte r6 = (byte) r6
            r13[r15] = r6
        L_0x004a:
            r20 = r5
            goto L_0x00c2
        L_0x004d:
            if (r6 > r7) goto L_0x005f
            r7 = r12 | 126(0x7e, float:1.77E-43)
            byte r7 = (byte) r7
            r13[r15] = r7
            int r7 = r6 / 256
            byte r7 = (byte) r7
            r13[r3] = r7
            r6 = r6 & 255(0xff, float:3.57E-43)
            byte r6 = (byte) r6
            r13[r14] = r6
            goto L_0x004a
        L_0x005f:
            r7 = r12 | 127(0x7f, float:1.78E-43)
            byte r7 = (byte) r7
            r13[r15] = r7
            long r7 = (long) r6
            r16 = 72057594037927936(0x100000000000000, double:7.2911220195563975E-304)
            long r16 = r7 / r16
            r18 = 255(0xff, double:1.26E-321)
            r20 = r5
            long r4 = r16 & r18
            int r5 = (int) r4
            byte r4 = (byte) r5
            r13[r3] = r4
            r4 = 281474976710656(0x1000000000000, double:1.390671161567E-309)
            long r4 = r7 / r4
            long r4 = r4 & r18
            int r5 = (int) r4
            byte r4 = (byte) r5
            r13[r14] = r4
            r4 = 1099511627776(0x10000000000, double:5.43230922487E-312)
            long r4 = r7 / r4
            long r4 = r4 & r18
            int r5 = (int) r4
            byte r4 = (byte) r5
            r13[r9] = r4
            r4 = 5
            r16 = 4294967296(0x100000000, double:2.121995791E-314)
            long r16 = r7 / r16
            long r14 = r16 & r18
            int r15 = (int) r14
            byte r14 = (byte) r15
            r13[r4] = r14
            r4 = 6
            r14 = 16777216(0x1000000, double:8.289046E-317)
            long r14 = r7 / r14
            long r14 = r14 & r18
            int r15 = (int) r14
            byte r14 = (byte) r15
            r13[r4] = r14
            r4 = 7
            r14 = 65536(0x10000, double:3.2379E-319)
            long r14 = r7 / r14
            long r14 = r14 & r18
            int r15 = (int) r14
            byte r14 = (byte) r15
            r13[r4] = r14
            r4 = 8
            r14 = 256(0x100, double:1.265E-321)
            long r7 = r7 / r14
            long r7 = r7 & r18
            int r8 = (int) r7
            byte r7 = (byte) r8
            r13[r4] = r7
            r4 = 9
            r6 = r6 & 255(0xff, float:3.57E-43)
            byte r6 = (byte) r6
            r13[r4] = r6
        L_0x00c2:
            if (r1 <= 0) goto L_0x00d2
            int r4 = r1 / 256
            r4 = r4 & 255(0xff, float:3.57E-43)
            byte r4 = (byte) r4
            r13[r11] = r4
            int r4 = r11 + 1
            r1 = r1 & 255(0xff, float:3.57E-43)
            byte r1 = (byte) r1
            r13[r4] = r1
        L_0x00d2:
            int r1 = r11 + r20
            int r4 = r26 - r2
            r6 = r23
            java.lang.System.arraycopy(r6, r2, r13, r1, r4)
            boolean r1 = r0.f
            if (r1 == 0) goto L_0x0125
            byte[] r1 = new byte[r9]
            double r6 = java.lang.Math.random()
            r14 = 4643211215818981376(0x4070000000000000, double:256.0)
            double r6 = r6 * r14
            double r6 = java.lang.Math.floor(r6)
            int r2 = (int) r6
            byte r2 = (byte) r2
            r4 = 0
            r1[r4] = r2
            double r6 = java.lang.Math.random()
            double r6 = r6 * r14
            double r6 = java.lang.Math.floor(r6)
            int r2 = (int) r6
            byte r2 = (byte) r2
            r4 = 1
            r1[r4] = r2
            double r4 = java.lang.Math.random()
            double r4 = r4 * r14
            double r4 = java.lang.Math.floor(r4)
            int r2 = (int) r4
            byte r2 = (byte) r2
            r1[r3] = r2
            double r2 = java.lang.Math.random()
            double r2 = r2 * r14
            double r2 = java.lang.Math.floor(r2)
            int r2 = (int) r2
            byte r2 = (byte) r2
            r3 = 3
            r1[r3] = r2
            r2 = 0
            java.lang.System.arraycopy(r1, r2, r13, r10, r9)
            a((byte[]) r13, (byte[]) r1, (int) r11)
        L_0x0125:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.r.a(int, byte[], int, int, int):byte[]");
    }

    public void close(int i2, String str) {
        if (!this.r) {
            b(a(8, str, i2));
            this.r = true;
        }
    }

    private static String c(byte[] bArr) {
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static byte[] d(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        Inflater inflater = this.t;
        if (inflater != null) {
            try {
                inflater.end();
            } catch (Exception unused) {
            }
        }
        super.finalize();
    }

    static /* synthetic */ void a(r rVar, byte b2) throws a {
        boolean z = (b2 & 64) == 64;
        boolean z2 = (b2 & 32) == 32;
        boolean z3 = (b2 & 16) == 16;
        if ((rVar.g || !z) && !z2 && !z3) {
            rVar.i = (b2 & 128) == 128;
            rVar.l = b2 & 15;
            rVar.k = z;
            rVar.p = new byte[0];
            rVar.q = new byte[0];
            if (!v.contains(Integer.valueOf(rVar.l))) {
                throw new a("Bad opcode");
            } else if (w.contains(Integer.valueOf(rVar.l)) || rVar.i) {
                rVar.h = 1;
            } else {
                throw new a("Expected non-final packet");
            }
        } else {
            throw new a("RSV not zero");
        }
    }

    static /* synthetic */ void b(r rVar, byte b2) {
        rVar.j = (b2 & 128) == 128;
        rVar.n = b2 & Byte.MAX_VALUE;
        int i2 = rVar.n;
        if (i2 < 0 || i2 > 125) {
            rVar.m = rVar.n == 126 ? 2 : 8;
            rVar.h = 2;
            return;
        }
        rVar.h = rVar.j ? 3 : 4;
    }

    static /* synthetic */ void a(r rVar, byte[] bArr) throws a {
        int length = bArr.length;
        if (bArr.length >= length) {
            long j2 = 0;
            for (int i2 = 0; i2 < length; i2++) {
                j2 += (long) ((bArr[i2 + 0] & c.END_OF_FRAME) << (((length - 1) - i2) * 8));
            }
            if (j2 < 0 || j2 > 2147483647L) {
                throw new a("Bad integer: ".concat(String.valueOf(j2)));
            }
            rVar.n = (int) j2;
            rVar.h = rVar.j ? 3 : 4;
            return;
        }
        throw new IllegalArgumentException("length must be less than or equal to b.length");
    }

    static /* synthetic */ void e(r rVar) throws IOException {
        byte[] a2 = a(rVar.q, rVar.p, 0);
        if (rVar.k) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                rVar.t.setInput(a2);
                while (!rVar.t.needsInput()) {
                    byteArrayOutputStream.write(rVar.u, 0, rVar.t.inflate(rVar.u));
                }
                rVar.t.setInput(new byte[]{0, 0, -1, -1});
                while (!rVar.t.needsInput()) {
                    byteArrayOutputStream.write(rVar.u, 0, rVar.t.inflate(rVar.u));
                }
                a2 = byteArrayOutputStream.toByteArray();
            } catch (DataFormatException unused) {
                throw new IOException("Invalid deflated data");
            }
        }
        int i2 = rVar.l;
        if (i2 == 0) {
            if (rVar.o != 0) {
                rVar.s.write(a2);
                if (rVar.i) {
                    byte[] byteArray = rVar.s.toByteArray();
                    if (rVar.o == 1) {
                        rVar.a(c(byteArray));
                    } else {
                        rVar.a(byteArray);
                    }
                    rVar.o = 0;
                    rVar.s.reset();
                }
            } else {
                throw new a("Mode was not set.");
            }
        } else if (i2 == 1) {
            if (rVar.i) {
                rVar.a(c(a2));
                return;
            }
            rVar.o = 1;
            rVar.s.write(a2);
        } else if (i2 == 2) {
            if (rVar.i) {
                rVar.a(a2);
                return;
            }
            rVar.o = 2;
            rVar.s.write(a2);
        } else if (i2 == 8) {
            if (a2.length > 2) {
                byte[] bArr = new byte[(a2.length - 2)];
                System.arraycopy(a2, 2, bArr, 0, a2.length - 2);
                c(bArr);
            }
            rVar.b();
        } else if (i2 == 9) {
            if (a2.length <= 125) {
                String c2 = c(a2);
                rVar.b(rVar.a(10, a2, -1));
                rVar.c(c2);
                return;
            }
            throw new a("Ping payload too large");
        } else if (i2 == 10) {
            rVar.b(c(a2));
        }
    }
}
