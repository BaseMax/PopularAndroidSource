package com.bumptech.glide.b;

import android.graphics.Bitmap;
import com.bumptech.glide.b.a;
import com.pusher.java_websocket.drafts.c;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;

public class e implements a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f1995a = e.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private int[] f1996b;
    private final int[] c;
    private final a.C0033a d;
    private ByteBuffer e;
    private byte[] f;
    private d g;
    private short[] h;
    private byte[] i;
    private byte[] j;
    private byte[] k;
    private int[] l;
    private int m;
    private c n;
    private Bitmap o;
    private boolean p;
    private int q;
    private int r;
    private int s;
    private int t;
    private Boolean u;
    private Bitmap.Config v;

    public e(a.C0033a aVar, c cVar, ByteBuffer byteBuffer) {
        this(aVar, cVar, byteBuffer, 1);
    }

    public e(a.C0033a aVar, c cVar, ByteBuffer byteBuffer, int i2) {
        this(aVar);
        setData(cVar, byteBuffer, i2);
    }

    public e(a.C0033a aVar) {
        this.c = new int[256];
        this.v = Bitmap.Config.ARGB_8888;
        this.d = aVar;
        this.n = new c();
    }

    public int getWidth() {
        return this.n.f;
    }

    public int getHeight() {
        return this.n.g;
    }

    public ByteBuffer getData() {
        return this.e;
    }

    public int getStatus() {
        return this.q;
    }

    public void advance() {
        this.m = (this.m + 1) % this.n.c;
    }

    public int getDelay(int i2) {
        if (i2 < 0 || i2 >= this.n.c) {
            return -1;
        }
        return this.n.e.get(i2).i;
    }

    public int getNextDelay() {
        if (this.n.c > 0) {
            int i2 = this.m;
            if (i2 >= 0) {
                return getDelay(i2);
            }
        }
        return 0;
    }

    public int getFrameCount() {
        return this.n.c;
    }

    public int getCurrentFrameIndex() {
        return this.m;
    }

    public void resetFrameIndex() {
        this.m = -1;
    }

    @Deprecated
    public int getLoopCount() {
        if (this.n.m == -1) {
            return 1;
        }
        return this.n.m;
    }

    public int getNetscapeLoopCount() {
        return this.n.m;
    }

    public int getTotalIterationCount() {
        if (this.n.m == -1) {
            return 1;
        }
        if (this.n.m == 0) {
            return 0;
        }
        return this.n.m + 1;
    }

    public int getByteSize() {
        return this.e.limit() + this.k.length + (this.l.length * 4);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00c5, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized android.graphics.Bitmap getNextFrame() {
        /*
            r7 = this;
            monitor-enter(r7)
            com.bumptech.glide.b.c r0 = r7.n     // Catch:{ all -> 0x00c6 }
            int r0 = r0.c     // Catch:{ all -> 0x00c6 }
            r1 = 3
            r2 = 1
            if (r0 <= 0) goto L_0x000d
            int r0 = r7.m     // Catch:{ all -> 0x00c6 }
            if (r0 >= 0) goto L_0x002f
        L_0x000d:
            java.lang.String r0 = f1995a     // Catch:{ all -> 0x00c6 }
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch:{ all -> 0x00c6 }
            if (r0 == 0) goto L_0x002d
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00c6 }
            java.lang.String r3 = "Unable to decode frame, frameCount="
            r0.<init>(r3)     // Catch:{ all -> 0x00c6 }
            com.bumptech.glide.b.c r3 = r7.n     // Catch:{ all -> 0x00c6 }
            int r3 = r3.c     // Catch:{ all -> 0x00c6 }
            r0.append(r3)     // Catch:{ all -> 0x00c6 }
            java.lang.String r3 = ", framePointer="
            r0.append(r3)     // Catch:{ all -> 0x00c6 }
            int r3 = r7.m     // Catch:{ all -> 0x00c6 }
            r0.append(r3)     // Catch:{ all -> 0x00c6 }
        L_0x002d:
            r7.q = r2     // Catch:{ all -> 0x00c6 }
        L_0x002f:
            int r0 = r7.q     // Catch:{ all -> 0x00c6 }
            r3 = 0
            if (r0 == r2) goto L_0x00b0
            int r0 = r7.q     // Catch:{ all -> 0x00c6 }
            r4 = 2
            if (r0 != r4) goto L_0x003b
            goto L_0x00b0
        L_0x003b:
            r0 = 0
            r7.q = r0     // Catch:{ all -> 0x00c6 }
            byte[] r4 = r7.f     // Catch:{ all -> 0x00c6 }
            if (r4 != 0) goto L_0x004c
            com.bumptech.glide.b.a$a r4 = r7.d     // Catch:{ all -> 0x00c6 }
            r5 = 255(0xff, float:3.57E-43)
            byte[] r4 = r4.obtainByteArray(r5)     // Catch:{ all -> 0x00c6 }
            r7.f = r4     // Catch:{ all -> 0x00c6 }
        L_0x004c:
            com.bumptech.glide.b.c r4 = r7.n     // Catch:{ all -> 0x00c6 }
            java.util.List<com.bumptech.glide.b.b> r4 = r4.e     // Catch:{ all -> 0x00c6 }
            int r5 = r7.m     // Catch:{ all -> 0x00c6 }
            java.lang.Object r4 = r4.get(r5)     // Catch:{ all -> 0x00c6 }
            com.bumptech.glide.b.b r4 = (com.bumptech.glide.b.b) r4     // Catch:{ all -> 0x00c6 }
            int r5 = r7.m     // Catch:{ all -> 0x00c6 }
            int r5 = r5 - r2
            if (r5 < 0) goto L_0x0068
            com.bumptech.glide.b.c r6 = r7.n     // Catch:{ all -> 0x00c6 }
            java.util.List<com.bumptech.glide.b.b> r6 = r6.e     // Catch:{ all -> 0x00c6 }
            java.lang.Object r5 = r6.get(r5)     // Catch:{ all -> 0x00c6 }
            com.bumptech.glide.b.b r5 = (com.bumptech.glide.b.b) r5     // Catch:{ all -> 0x00c6 }
            goto L_0x0069
        L_0x0068:
            r5 = r3
        L_0x0069:
            int[] r6 = r4.k     // Catch:{ all -> 0x00c6 }
            if (r6 == 0) goto L_0x0070
            int[] r6 = r4.k     // Catch:{ all -> 0x00c6 }
            goto L_0x0074
        L_0x0070:
            com.bumptech.glide.b.c r6 = r7.n     // Catch:{ all -> 0x00c6 }
            int[] r6 = r6.f1991a     // Catch:{ all -> 0x00c6 }
        L_0x0074:
            r7.f1996b = r6     // Catch:{ all -> 0x00c6 }
            int[] r6 = r7.f1996b     // Catch:{ all -> 0x00c6 }
            if (r6 != 0) goto L_0x0092
            java.lang.String r0 = f1995a     // Catch:{ all -> 0x00c6 }
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch:{ all -> 0x00c6 }
            if (r0 == 0) goto L_0x008e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00c6 }
            java.lang.String r1 = "No valid color table found for frame #"
            r0.<init>(r1)     // Catch:{ all -> 0x00c6 }
            int r1 = r7.m     // Catch:{ all -> 0x00c6 }
            r0.append(r1)     // Catch:{ all -> 0x00c6 }
        L_0x008e:
            r7.q = r2     // Catch:{ all -> 0x00c6 }
            monitor-exit(r7)
            return r3
        L_0x0092:
            boolean r1 = r4.f     // Catch:{ all -> 0x00c6 }
            if (r1 == 0) goto L_0x00aa
            int[] r1 = r7.f1996b     // Catch:{ all -> 0x00c6 }
            int[] r2 = r7.c     // Catch:{ all -> 0x00c6 }
            int[] r3 = r7.f1996b     // Catch:{ all -> 0x00c6 }
            int r3 = r3.length     // Catch:{ all -> 0x00c6 }
            java.lang.System.arraycopy(r1, r0, r2, r0, r3)     // Catch:{ all -> 0x00c6 }
            int[] r1 = r7.c     // Catch:{ all -> 0x00c6 }
            r7.f1996b = r1     // Catch:{ all -> 0x00c6 }
            int[] r1 = r7.f1996b     // Catch:{ all -> 0x00c6 }
            int r2 = r4.h     // Catch:{ all -> 0x00c6 }
            r1[r2] = r0     // Catch:{ all -> 0x00c6 }
        L_0x00aa:
            android.graphics.Bitmap r0 = r7.a(r4, r5)     // Catch:{ all -> 0x00c6 }
            monitor-exit(r7)
            return r0
        L_0x00b0:
            java.lang.String r0 = f1995a     // Catch:{ all -> 0x00c6 }
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch:{ all -> 0x00c6 }
            if (r0 == 0) goto L_0x00c4
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x00c6 }
            java.lang.String r1 = "Unable to decode frame, status="
            r0.<init>(r1)     // Catch:{ all -> 0x00c6 }
            int r1 = r7.q     // Catch:{ all -> 0x00c6 }
            r0.append(r1)     // Catch:{ all -> 0x00c6 }
        L_0x00c4:
            monitor-exit(r7)
            return r3
        L_0x00c6:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.b.e.getNextFrame():android.graphics.Bitmap");
    }

    public int read(InputStream inputStream, int i2) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2 > 0 ? i2 + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = inputStream.read(bArr, 0, 16384);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException unused) {
            }
        } else {
            this.q = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
        }
        return this.q;
    }

    public void clear() {
        this.n = null;
        byte[] bArr = this.k;
        if (bArr != null) {
            this.d.release(bArr);
        }
        int[] iArr = this.l;
        if (iArr != null) {
            this.d.release(iArr);
        }
        Bitmap bitmap = this.o;
        if (bitmap != null) {
            this.d.release(bitmap);
        }
        this.o = null;
        this.e = null;
        this.u = null;
        byte[] bArr2 = this.f;
        if (bArr2 != null) {
            this.d.release(bArr2);
        }
    }

    public synchronized void setData(c cVar, byte[] bArr) {
        setData(cVar, ByteBuffer.wrap(bArr));
    }

    public synchronized void setData(c cVar, ByteBuffer byteBuffer) {
        setData(cVar, byteBuffer, 1);
    }

    public synchronized void setData(c cVar, ByteBuffer byteBuffer, int i2) {
        if (i2 > 0) {
            int highestOneBit = Integer.highestOneBit(i2);
            this.q = 0;
            this.n = cVar;
            this.m = -1;
            this.e = byteBuffer.asReadOnlyBuffer();
            this.e.position(0);
            this.e.order(ByteOrder.LITTLE_ENDIAN);
            this.p = false;
            Iterator<b> it = cVar.e.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().g == 3) {
                        this.p = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.r = highestOneBit;
            this.t = cVar.f / highestOneBit;
            this.s = cVar.g / highestOneBit;
            this.k = this.d.obtainByteArray(cVar.f * cVar.g);
            this.l = this.d.obtainIntArray(this.t * this.s);
        } else {
            throw new IllegalArgumentException("Sample size must be >=0, not: ".concat(String.valueOf(i2)));
        }
    }

    public void setDefaultBitmapConfig(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.v = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r21v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r21v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v22, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r9v23, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r21v9, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r21v10, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r27v12, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r21v12, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v19, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v32, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r8v33, resolved type: byte} */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0045, code lost:
        if (r0.n.j == r1.h) goto L_0x0050;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x006f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.graphics.Bitmap a(com.bumptech.glide.b.b r39, com.bumptech.glide.b.b r40) {
        /*
            r38 = this;
            r0 = r38
            r1 = r39
            r2 = r40
            int[] r10 = r0.l
            r11 = 0
            if (r2 != 0) goto L_0x001a
            android.graphics.Bitmap r3 = r0.o
            if (r3 == 0) goto L_0x0014
            com.bumptech.glide.b.a$a r4 = r0.d
            r4.release((android.graphics.Bitmap) r3)
        L_0x0014:
            r3 = 0
            r0.o = r3
            java.util.Arrays.fill(r10, r11)
        L_0x001a:
            r12 = 3
            if (r2 == 0) goto L_0x0028
            int r3 = r2.g
            if (r3 != r12) goto L_0x0028
            android.graphics.Bitmap r3 = r0.o
            if (r3 != 0) goto L_0x0028
            java.util.Arrays.fill(r10, r11)
        L_0x0028:
            r13 = 2
            if (r2 == 0) goto L_0x0091
            int r3 = r2.g
            if (r3 <= 0) goto L_0x0091
            int r3 = r2.g
            if (r3 != r13) goto L_0x007d
            boolean r3 = r1.f
            if (r3 != 0) goto L_0x0048
            com.bumptech.glide.b.c r3 = r0.n
            int r3 = r3.l
            int[] r4 = r1.k
            if (r4 == 0) goto L_0x0051
            com.bumptech.glide.b.c r4 = r0.n
            int r4 = r4.j
            int r5 = r1.h
            if (r4 != r5) goto L_0x0051
            goto L_0x0050
        L_0x0048:
            int r3 = r0.m
            if (r3 != 0) goto L_0x0050
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            r0.u = r3
        L_0x0050:
            r3 = 0
        L_0x0051:
            int r4 = r2.d
            int r5 = r0.r
            int r4 = r4 / r5
            int r5 = r2.f1990b
            int r6 = r0.r
            int r5 = r5 / r6
            int r6 = r2.c
            int r7 = r0.r
            int r6 = r6 / r7
            int r2 = r2.f1989a
            int r7 = r0.r
            int r2 = r2 / r7
            int r7 = r0.t
            int r5 = r5 * r7
            int r5 = r5 + r2
            int r4 = r4 * r7
            int r4 = r4 + r5
        L_0x006d:
            if (r5 >= r4) goto L_0x0091
            int r2 = r5 + r6
            r7 = r5
        L_0x0072:
            if (r7 >= r2) goto L_0x0079
            r10[r7] = r3
            int r7 = r7 + 1
            goto L_0x0072
        L_0x0079:
            int r2 = r0.t
            int r5 = r5 + r2
            goto L_0x006d
        L_0x007d:
            int r2 = r2.g
            if (r2 != r12) goto L_0x0091
            android.graphics.Bitmap r2 = r0.o
            if (r2 == 0) goto L_0x0091
            r4 = 0
            int r8 = r0.t
            r6 = 0
            r7 = 0
            int r9 = r0.s
            r3 = r10
            r5 = r8
            r2.getPixels(r3, r4, r5, r6, r7, r8, r9)
        L_0x0091:
            if (r1 == 0) goto L_0x009a
            java.nio.ByteBuffer r2 = r0.e
            int r3 = r1.j
            r2.position(r3)
        L_0x009a:
            if (r1 != 0) goto L_0x00a5
            com.bumptech.glide.b.c r2 = r0.n
            int r2 = r2.f
            com.bumptech.glide.b.c r3 = r0.n
            int r3 = r3.g
            goto L_0x00a9
        L_0x00a5:
            int r2 = r1.c
            int r3 = r1.d
        L_0x00a9:
            int r2 = r2 * r3
            byte[] r3 = r0.k
            if (r3 == 0) goto L_0x00b2
            int r3 = r3.length
            if (r3 >= r2) goto L_0x00ba
        L_0x00b2:
            com.bumptech.glide.b.a$a r3 = r0.d
            byte[] r3 = r3.obtainByteArray(r2)
            r0.k = r3
        L_0x00ba:
            byte[] r3 = r0.k
            short[] r4 = r0.h
            r5 = 4096(0x1000, float:5.74E-42)
            if (r4 != 0) goto L_0x00c6
            short[] r4 = new short[r5]
            r0.h = r4
        L_0x00c6:
            short[] r4 = r0.h
            byte[] r6 = r0.i
            if (r6 != 0) goto L_0x00d0
            byte[] r6 = new byte[r5]
            r0.i = r6
        L_0x00d0:
            byte[] r6 = r0.i
            byte[] r7 = r0.j
            if (r7 != 0) goto L_0x00dc
            r7 = 4097(0x1001, float:5.741E-42)
            byte[] r7 = new byte[r7]
            r0.j = r7
        L_0x00dc:
            byte[] r7 = r0.j
            int r8 = r38.a()
            r9 = 1
            int r14 = r9 << r8
            int r15 = r14 + 1
            int r16 = r14 + 2
            int r8 = r8 + r9
            int r17 = r9 << r8
            int r17 = r17 + -1
            r13 = 0
        L_0x00ef:
            if (r13 >= r14) goto L_0x00fb
            r4[r13] = r11
            byte r5 = (byte) r13
            r6[r13] = r5
            int r13 = r13 + 1
            r5 = 4096(0x1000, float:5.74E-42)
            goto L_0x00ef
        L_0x00fb:
            byte[] r5 = r0.f
            r27 = r8
            r25 = r16
            r26 = r17
            r13 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r23 = 0
            r24 = 0
            r28 = -1
            r29 = 0
            r30 = 0
        L_0x0114:
            r31 = 8
            if (r13 >= r2) goto L_0x0212
            if (r20 != 0) goto L_0x0145
            int r9 = r38.a()
            if (r9 > 0) goto L_0x0125
            r33 = r8
            r34 = r13
            goto L_0x0139
        L_0x0125:
            java.nio.ByteBuffer r12 = r0.e
            byte[] r11 = r0.f
            r33 = r8
            int r8 = r12.remaining()
            int r8 = java.lang.Math.min(r9, r8)
            r34 = r13
            r13 = 0
            r12.get(r11, r13, r8)
        L_0x0139:
            if (r9 > 0) goto L_0x0140
            r8 = 3
            r0.q = r8
            goto L_0x0212
        L_0x0140:
            r20 = r9
            r23 = 0
            goto L_0x0149
        L_0x0145:
            r33 = r8
            r34 = r13
        L_0x0149:
            byte r8 = r5[r23]
            r8 = r8 & 255(0xff, float:3.57E-43)
            int r8 = r8 << r21
            int r22 = r22 + r8
            int r21 = r21 + 8
            r8 = 1
            int r23 = r23 + 1
            r8 = -1
            int r20 = r20 + -1
            r9 = r21
            r35 = r25
            r11 = r27
            r12 = r28
            r36 = r29
            r13 = r34
        L_0x0165:
            if (r9 < r11) goto L_0x01f9
            r8 = r22 & r26
            int r22 = r22 >> r11
            int r9 = r9 - r11
            if (r8 != r14) goto L_0x0177
            r35 = r16
            r26 = r17
            r11 = r33
            r8 = -1
            r12 = -1
            goto L_0x0165
        L_0x0177:
            r21 = r5
            if (r8 == r15) goto L_0x01e0
            r5 = -1
            if (r12 != r5) goto L_0x018d
            byte r5 = r6[r8]
            r3[r24] = r5
            int r24 = r24 + 1
            int r13 = r13 + 1
            r12 = r8
            r36 = r12
            r5 = r21
        L_0x018b:
            r8 = -1
            goto L_0x0165
        L_0x018d:
            r5 = r35
            r25 = r8
            if (r8 < r5) goto L_0x019b
            r8 = r36
            byte r8 = (byte) r8
            r7[r30] = r8
            int r30 = r30 + 1
            r8 = r12
        L_0x019b:
            if (r8 < r14) goto L_0x01a6
            byte r27 = r6[r8]
            r7[r30] = r27
            int r30 = r30 + 1
            short r8 = r4[r8]
            goto L_0x019b
        L_0x01a6:
            byte r8 = r6[r8]
            r8 = r8 & 255(0xff, float:3.57E-43)
            r27 = r9
            byte r9 = (byte) r8
            r3[r24] = r9
        L_0x01af:
            int r24 = r24 + 1
            int r13 = r13 + 1
            if (r30 <= 0) goto L_0x01bc
            int r30 = r30 + -1
            byte r28 = r7[r30]
            r3[r24] = r28
            goto L_0x01af
        L_0x01bc:
            r28 = r7
            r7 = 4096(0x1000, float:5.74E-42)
            if (r5 >= r7) goto L_0x01d3
            short r12 = (short) r12
            r4[r5] = r12
            r6[r5] = r9
            int r5 = r5 + 1
            r9 = r5 & r26
            if (r9 != 0) goto L_0x01d3
            if (r5 >= r7) goto L_0x01d3
            int r11 = r11 + 1
            int r26 = r26 + r5
        L_0x01d3:
            r35 = r5
            r36 = r8
            r5 = r21
            r12 = r25
            r9 = r27
            r7 = r28
            goto L_0x018b
        L_0x01e0:
            r27 = r9
            r5 = r35
            r8 = r36
            r25 = r5
            r29 = r8
            r28 = r12
            r5 = r21
            r21 = r27
            r8 = r33
            r9 = 1
            r12 = 3
            r27 = r11
            r11 = 0
            goto L_0x0114
        L_0x01f9:
            r21 = r5
            r5 = r35
            r8 = r36
            r25 = r5
            r29 = r8
            r27 = r11
            r28 = r12
            r5 = r21
            r8 = r33
            r11 = 0
            r12 = 3
            r21 = r9
            r9 = 1
            goto L_0x0114
        L_0x0212:
            r11 = r24
            r13 = 0
            java.util.Arrays.fill(r3, r11, r2, r13)
            boolean r2 = r1.e
            if (r2 != 0) goto L_0x0293
            int r2 = r0.r
            r3 = 1
            if (r2 == r3) goto L_0x0223
            goto L_0x0293
        L_0x0223:
            int[] r2 = r0.l
            int r3 = r1.d
            int r4 = r1.f1990b
            int r5 = r1.c
            int r6 = r1.f1989a
            int r7 = r0.m
            if (r7 != 0) goto L_0x0233
            r7 = 1
            goto L_0x0234
        L_0x0233:
            r7 = 0
        L_0x0234:
            int r8 = r0.t
            byte[] r9 = r0.k
            int[] r11 = r0.f1996b
            r12 = 0
            r14 = -1
        L_0x023c:
            if (r12 >= r3) goto L_0x027b
            int r15 = r12 + r4
            int r15 = r15 * r8
            int r16 = r15 + r6
            int r13 = r16 + r5
            int r15 = r15 + r8
            if (r15 >= r13) goto L_0x024a
            r13 = r15
        L_0x024a:
            int r15 = r1.c
            int r15 = r15 * r12
            r37 = r15
            r15 = r14
            r14 = r16
            r16 = r37
        L_0x0255:
            if (r14 >= r13) goto L_0x0272
            r17 = r3
            byte r3 = r9[r16]
            r18 = r4
            r4 = r3 & 255(0xff, float:3.57E-43)
            if (r4 == r15) goto L_0x0269
            r4 = r11[r4]
            if (r4 == 0) goto L_0x0268
            r2[r14] = r4
            goto L_0x0269
        L_0x0268:
            r15 = r3
        L_0x0269:
            int r16 = r16 + 1
            int r14 = r14 + 1
            r3 = r17
            r4 = r18
            goto L_0x0255
        L_0x0272:
            r17 = r3
            r18 = r4
            int r12 = r12 + 1
            r14 = r15
            r13 = 0
            goto L_0x023c
        L_0x027b:
            java.lang.Boolean r2 = r0.u
            if (r2 != 0) goto L_0x0287
            if (r7 == 0) goto L_0x0287
            r2 = -1
            if (r14 == r2) goto L_0x0287
            r32 = 1
            goto L_0x0289
        L_0x0287:
            r32 = 0
        L_0x0289:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r32)
            r0.u = r2
            r16 = r10
            goto L_0x0438
        L_0x0293:
            int[] r2 = r0.l
            int r3 = r1.d
            int r4 = r0.r
            int r3 = r3 / r4
            int r4 = r1.f1990b
            int r5 = r0.r
            int r4 = r4 / r5
            int r5 = r1.c
            int r6 = r0.r
            int r5 = r5 / r6
            int r6 = r1.f1989a
            int r7 = r0.r
            int r6 = r6 / r7
            int r7 = r0.m
            if (r7 != 0) goto L_0x02af
            r7 = 1
            goto L_0x02b0
        L_0x02af:
            r7 = 0
        L_0x02b0:
            int r8 = r0.r
            int r9 = r0.t
            int r11 = r0.s
            byte[] r12 = r0.k
            int[] r13 = r0.f1996b
            java.lang.Boolean r14 = r0.u
            r16 = r10
            r15 = r14
            r10 = 0
            r14 = 0
            r17 = 1
            r19 = 8
        L_0x02c5:
            if (r14 >= r3) goto L_0x0421
            r40 = r15
            boolean r15 = r1.e
            if (r15 == 0) goto L_0x02f2
            if (r10 < r3) goto L_0x02e9
            int r15 = r17 + 1
            r21 = r3
            r3 = 2
            if (r15 == r3) goto L_0x02e6
            r3 = 3
            if (r15 == r3) goto L_0x02e1
            r3 = 4
            if (r15 == r3) goto L_0x02dd
            goto L_0x02ed
        L_0x02dd:
            r10 = 1
            r19 = 2
            goto L_0x02ed
        L_0x02e1:
            r3 = 4
            r10 = 2
            r19 = 4
            goto L_0x02ed
        L_0x02e6:
            r3 = 4
            r10 = 4
            goto L_0x02ed
        L_0x02e9:
            r21 = r3
            r15 = r17
        L_0x02ed:
            int r3 = r10 + r19
            r17 = r15
            goto L_0x02f6
        L_0x02f2:
            r21 = r3
            r3 = r10
            r10 = r14
        L_0x02f6:
            int r10 = r10 + r4
            r15 = 1
            if (r8 != r15) goto L_0x02fc
            r15 = 1
            goto L_0x02fd
        L_0x02fc:
            r15 = 0
        L_0x02fd:
            if (r10 >= r11) goto L_0x0401
            int r10 = r10 * r9
            int r20 = r10 + r6
            r22 = r3
            int r3 = r20 + r5
            int r10 = r10 + r9
            if (r10 >= r3) goto L_0x030b
            r3 = r10
        L_0x030b:
            int r10 = r14 * r8
            r23 = r4
            int r4 = r1.c
            int r10 = r10 * r4
            if (r15 == 0) goto L_0x033f
            r15 = r40
            r4 = r20
        L_0x0319:
            if (r4 >= r3) goto L_0x0335
            r24 = r5
            byte r5 = r12[r10]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r5 = r13[r5]
            if (r5 == 0) goto L_0x0328
            r2[r4] = r5
            goto L_0x032f
        L_0x0328:
            if (r7 == 0) goto L_0x032f
            if (r15 != 0) goto L_0x032f
            java.lang.Boolean r5 = java.lang.Boolean.TRUE
            r15 = r5
        L_0x032f:
            int r10 = r10 + r8
            int r4 = r4 + 1
            r5 = r24
            goto L_0x0319
        L_0x0335:
            r24 = r5
            r25 = r6
            r33 = r9
            r34 = r11
            goto L_0x040f
        L_0x033f:
            r24 = r5
            int r4 = r3 - r20
            int r4 = r4 * r8
            int r4 = r4 + r10
            r15 = r10
            r5 = r20
            r10 = r40
        L_0x034b:
            if (r5 >= r3) goto L_0x03f9
            r20 = r3
            int r3 = r1.c
            r25 = r6
            r33 = r9
            r6 = r15
            r26 = 0
            r27 = 0
            r28 = 0
            r29 = 0
            r30 = 0
        L_0x0360:
            int r9 = r0.r
            int r9 = r9 + r15
            if (r6 >= r9) goto L_0x0395
            byte[] r9 = r0.k
            r34 = r11
            int r11 = r9.length
            if (r6 >= r11) goto L_0x0397
            if (r6 >= r4) goto L_0x0397
            byte r9 = r9[r6]
            r9 = r9 & 255(0xff, float:3.57E-43)
            int[] r11 = r0.f1996b
            r9 = r11[r9]
            if (r9 == 0) goto L_0x0390
            int r11 = r9 >> 24
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r26 = r26 + r11
            int r11 = r9 >> 16
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r27 = r27 + r11
            int r11 = r9 >> 8
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r28 = r28 + r11
            r9 = r9 & 255(0xff, float:3.57E-43)
            int r29 = r29 + r9
            int r30 = r30 + 1
        L_0x0390:
            int r6 = r6 + 1
            r11 = r34
            goto L_0x0360
        L_0x0395:
            r34 = r11
        L_0x0397:
            int r3 = r3 + r15
            r6 = r3
        L_0x0399:
            int r9 = r0.r
            int r9 = r9 + r3
            if (r6 >= r9) goto L_0x03ca
            byte[] r9 = r0.k
            int r11 = r9.length
            if (r6 >= r11) goto L_0x03ca
            if (r6 >= r4) goto L_0x03ca
            byte r9 = r9[r6]
            r9 = r9 & 255(0xff, float:3.57E-43)
            int[] r11 = r0.f1996b
            r9 = r11[r9]
            if (r9 == 0) goto L_0x03c7
            int r11 = r9 >> 24
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r26 = r26 + r11
            int r11 = r9 >> 16
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r27 = r27 + r11
            int r11 = r9 >> 8
            r11 = r11 & 255(0xff, float:3.57E-43)
            int r28 = r28 + r11
            r9 = r9 & 255(0xff, float:3.57E-43)
            int r29 = r29 + r9
            int r30 = r30 + 1
        L_0x03c7:
            int r6 = r6 + 1
            goto L_0x0399
        L_0x03ca:
            if (r30 != 0) goto L_0x03ce
            r11 = 0
            goto L_0x03e0
        L_0x03ce:
            int r26 = r26 / r30
            int r3 = r26 << 24
            int r27 = r27 / r30
            int r6 = r27 << 16
            r3 = r3 | r6
            int r28 = r28 / r30
            int r6 = r28 << 8
            r3 = r3 | r6
            int r29 = r29 / r30
            r11 = r3 | r29
        L_0x03e0:
            if (r11 == 0) goto L_0x03e5
            r2[r5] = r11
            goto L_0x03ec
        L_0x03e5:
            if (r7 == 0) goto L_0x03ec
            if (r10 != 0) goto L_0x03ec
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            r10 = r3
        L_0x03ec:
            int r15 = r15 + r8
            int r5 = r5 + 1
            r3 = r20
            r6 = r25
            r9 = r33
            r11 = r34
            goto L_0x034b
        L_0x03f9:
            r25 = r6
            r33 = r9
            r34 = r11
            r15 = r10
            goto L_0x040f
        L_0x0401:
            r22 = r3
            r23 = r4
            r24 = r5
            r25 = r6
            r33 = r9
            r34 = r11
            r15 = r40
        L_0x040f:
            int r14 = r14 + 1
            r3 = r21
            r10 = r22
            r4 = r23
            r5 = r24
            r6 = r25
            r9 = r33
            r11 = r34
            goto L_0x02c5
        L_0x0421:
            r40 = r15
            java.lang.Boolean r2 = r0.u
            if (r2 != 0) goto L_0x0438
            if (r40 != 0) goto L_0x042c
            r32 = 0
            goto L_0x0432
        L_0x042c:
            boolean r11 = r40.booleanValue()
            r32 = r11
        L_0x0432:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r32)
            r0.u = r2
        L_0x0438:
            boolean r2 = r0.p
            if (r2 == 0) goto L_0x045e
            int r2 = r1.g
            if (r2 == 0) goto L_0x0445
            int r1 = r1.g
            r2 = 1
            if (r1 != r2) goto L_0x045e
        L_0x0445:
            android.graphics.Bitmap r1 = r0.o
            if (r1 != 0) goto L_0x044f
            android.graphics.Bitmap r1 = r38.b()
            r0.o = r1
        L_0x044f:
            android.graphics.Bitmap r1 = r0.o
            r3 = 0
            int r7 = r0.t
            r5 = 0
            r6 = 0
            int r8 = r0.s
            r2 = r16
            r4 = r7
            r1.setPixels(r2, r3, r4, r5, r6, r7, r8)
        L_0x045e:
            android.graphics.Bitmap r9 = r38.b()
            r3 = 0
            int r7 = r0.t
            r5 = 0
            r6 = 0
            int r8 = r0.s
            r1 = r9
            r2 = r16
            r4 = r7
            r1.setPixels(r2, r3, r4, r5, r6, r7, r8)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.b.e.a(com.bumptech.glide.b.b, com.bumptech.glide.b.b):android.graphics.Bitmap");
    }

    private int a() {
        return this.e.get() & c.END_OF_FRAME;
    }

    private Bitmap b() {
        Boolean bool = this.u;
        Bitmap obtain = this.d.obtain(this.t, this.s, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.v);
        obtain.setHasAlpha(true);
        return obtain;
    }

    public synchronized int read(byte[] bArr) {
        if (this.g == null) {
            this.g = new d();
        }
        this.n = this.g.setData(bArr).parseHeader();
        if (bArr != null) {
            setData(this.n, bArr);
        }
        return this.q;
    }
}
