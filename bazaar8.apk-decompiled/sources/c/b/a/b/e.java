package c.b.a.b;

import android.graphics.Bitmap;
import c.b.a.b.a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* compiled from: StandardGifDecoder */
public class e implements a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f3754a = "e";

    /* renamed from: b  reason: collision with root package name */
    public int[] f3755b;

    /* renamed from: c  reason: collision with root package name */
    public final int[] f3756c;

    /* renamed from: d  reason: collision with root package name */
    public final a.C0053a f3757d;

    /* renamed from: e  reason: collision with root package name */
    public ByteBuffer f3758e;

    /* renamed from: f  reason: collision with root package name */
    public byte[] f3759f;

    /* renamed from: g  reason: collision with root package name */
    public short[] f3760g;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f3761h;

    /* renamed from: i  reason: collision with root package name */
    public byte[] f3762i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f3763j;

    /* renamed from: k  reason: collision with root package name */
    public int[] f3764k;

    /* renamed from: l  reason: collision with root package name */
    public int f3765l;
    public c m;
    public Bitmap n;
    public boolean o;
    public int p;
    public int q;
    public int r;
    public int s;
    public Boolean t;
    public Bitmap.Config u;

    public e(a.C0053a aVar, c cVar, ByteBuffer byteBuffer, int i2) {
        this(aVar);
        a(cVar, byteBuffer, i2);
    }

    public int a(int i2) {
        if (i2 >= 0) {
            c cVar = this.m;
            if (i2 < cVar.f3740c) {
                return cVar.f3742e.get(i2).f3735i;
            }
        }
        return -1;
    }

    public void advance() {
        this.f3765l = (this.f3765l + 1) % this.m.f3740c;
    }

    public int b() {
        return this.m.f3740c;
    }

    public int c() {
        if (this.m.f3740c > 0) {
            int i2 = this.f3765l;
            if (i2 >= 0) {
                return a(i2);
            }
        }
        return 0;
    }

    public void clear() {
        this.m = null;
        byte[] bArr = this.f3763j;
        if (bArr != null) {
            this.f3757d.a(bArr);
        }
        int[] iArr = this.f3764k;
        if (iArr != null) {
            this.f3757d.a(iArr);
        }
        Bitmap bitmap = this.n;
        if (bitmap != null) {
            this.f3757d.a(bitmap);
        }
        this.n = null;
        this.f3758e = null;
        this.t = null;
        byte[] bArr2 = this.f3759f;
        if (bArr2 != null) {
            this.f3757d.a(bArr2);
        }
    }

    public void d() {
        this.f3765l = -1;
    }

    public int e() {
        return this.f3765l;
    }

    public int f() {
        return this.f3758e.limit() + this.f3763j.length + (this.f3764k.length * 4);
    }

    public final Bitmap g() {
        Boolean bool = this.t;
        Bitmap a2 = this.f3757d.a(this.s, this.r, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.u);
        a2.setHasAlpha(true);
        return a2;
    }

    public ByteBuffer getData() {
        return this.f3758e;
    }

    public final int h() {
        int i2 = i();
        if (i2 <= 0) {
            return i2;
        }
        ByteBuffer byteBuffer = this.f3758e;
        byteBuffer.get(this.f3759f, 0, Math.min(i2, byteBuffer.remaining()));
        return i2;
    }

    public final int i() {
        return this.f3758e.get() & 255;
    }

    public final void b(b bVar) {
        b bVar2 = bVar;
        int[] iArr = this.f3764k;
        int i2 = bVar2.f3730d;
        int i3 = bVar2.f3728b;
        int i4 = bVar2.f3729c;
        int i5 = bVar2.f3727a;
        boolean z = this.f3765l == 0;
        int i6 = this.s;
        byte[] bArr = this.f3763j;
        int[] iArr2 = this.f3755b;
        int i7 = 0;
        byte b2 = -1;
        while (i7 < i2) {
            int i8 = (i7 + i3) * i6;
            int i9 = i8 + i5;
            int i10 = i9 + i4;
            int i11 = i8 + i6;
            if (i11 < i10) {
                i10 = i11;
            }
            int i12 = bVar2.f3729c * i7;
            int i13 = i9;
            while (i13 < i10) {
                byte b3 = bArr[i12];
                byte b4 = b3 & 255;
                if (b4 != b2) {
                    int i14 = iArr2[b4];
                    if (i14 != 0) {
                        iArr[i13] = i14;
                    } else {
                        b2 = b3;
                    }
                }
                i12++;
                i13++;
                b bVar3 = bVar;
            }
            i7++;
            bVar2 = bVar;
        }
        this.t = Boolean.valueOf(this.t == null && z && b2 != -1);
    }

    public e(a.C0053a aVar) {
        this.f3756c = new int[256];
        this.u = Bitmap.Config.ARGB_8888;
        this.f3757d = aVar;
        this.m = new c();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00e9, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized android.graphics.Bitmap a() {
        /*
            r7 = this;
            monitor-enter(r7)
            c.b.a.b.c r0 = r7.m     // Catch:{ all -> 0x00ea }
            int r0 = r0.f3740c     // Catch:{ all -> 0x00ea }
            r1 = 3
            r2 = 1
            if (r0 <= 0) goto L_0x000d
            int r0 = r7.f3765l     // Catch:{ all -> 0x00ea }
            if (r0 >= 0) goto L_0x003b
        L_0x000d:
            java.lang.String r0 = f3754a     // Catch:{ all -> 0x00ea }
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch:{ all -> 0x00ea }
            if (r0 == 0) goto L_0x0039
            java.lang.String r0 = f3754a     // Catch:{ all -> 0x00ea }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ea }
            r3.<init>()     // Catch:{ all -> 0x00ea }
            java.lang.String r4 = "Unable to decode frame, frameCount="
            r3.append(r4)     // Catch:{ all -> 0x00ea }
            c.b.a.b.c r4 = r7.m     // Catch:{ all -> 0x00ea }
            int r4 = r4.f3740c     // Catch:{ all -> 0x00ea }
            r3.append(r4)     // Catch:{ all -> 0x00ea }
            java.lang.String r4 = ", framePointer="
            r3.append(r4)     // Catch:{ all -> 0x00ea }
            int r4 = r7.f3765l     // Catch:{ all -> 0x00ea }
            r3.append(r4)     // Catch:{ all -> 0x00ea }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x00ea }
            android.util.Log.d(r0, r3)     // Catch:{ all -> 0x00ea }
        L_0x0039:
            r7.p = r2     // Catch:{ all -> 0x00ea }
        L_0x003b:
            int r0 = r7.p     // Catch:{ all -> 0x00ea }
            r3 = 0
            if (r0 == r2) goto L_0x00c8
            int r0 = r7.p     // Catch:{ all -> 0x00ea }
            r4 = 2
            if (r0 != r4) goto L_0x0047
            goto L_0x00c8
        L_0x0047:
            r0 = 0
            r7.p = r0     // Catch:{ all -> 0x00ea }
            byte[] r4 = r7.f3759f     // Catch:{ all -> 0x00ea }
            if (r4 != 0) goto L_0x0058
            c.b.a.b.a$a r4 = r7.f3757d     // Catch:{ all -> 0x00ea }
            r5 = 255(0xff, float:3.57E-43)
            byte[] r4 = r4.b(r5)     // Catch:{ all -> 0x00ea }
            r7.f3759f = r4     // Catch:{ all -> 0x00ea }
        L_0x0058:
            c.b.a.b.c r4 = r7.m     // Catch:{ all -> 0x00ea }
            java.util.List<c.b.a.b.b> r4 = r4.f3742e     // Catch:{ all -> 0x00ea }
            int r5 = r7.f3765l     // Catch:{ all -> 0x00ea }
            java.lang.Object r4 = r4.get(r5)     // Catch:{ all -> 0x00ea }
            c.b.a.b.b r4 = (c.b.a.b.b) r4     // Catch:{ all -> 0x00ea }
            int r5 = r7.f3765l     // Catch:{ all -> 0x00ea }
            int r5 = r5 - r2
            if (r5 < 0) goto L_0x0074
            c.b.a.b.c r6 = r7.m     // Catch:{ all -> 0x00ea }
            java.util.List<c.b.a.b.b> r6 = r6.f3742e     // Catch:{ all -> 0x00ea }
            java.lang.Object r5 = r6.get(r5)     // Catch:{ all -> 0x00ea }
            c.b.a.b.b r5 = (c.b.a.b.b) r5     // Catch:{ all -> 0x00ea }
            goto L_0x0075
        L_0x0074:
            r5 = r3
        L_0x0075:
            int[] r6 = r4.f3737k     // Catch:{ all -> 0x00ea }
            if (r6 == 0) goto L_0x007c
            int[] r6 = r4.f3737k     // Catch:{ all -> 0x00ea }
            goto L_0x0080
        L_0x007c:
            c.b.a.b.c r6 = r7.m     // Catch:{ all -> 0x00ea }
            int[] r6 = r6.f3738a     // Catch:{ all -> 0x00ea }
        L_0x0080:
            r7.f3755b = r6     // Catch:{ all -> 0x00ea }
            int[] r6 = r7.f3755b     // Catch:{ all -> 0x00ea }
            if (r6 != 0) goto L_0x00aa
            java.lang.String r0 = f3754a     // Catch:{ all -> 0x00ea }
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch:{ all -> 0x00ea }
            if (r0 == 0) goto L_0x00a6
            java.lang.String r0 = f3754a     // Catch:{ all -> 0x00ea }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ea }
            r1.<init>()     // Catch:{ all -> 0x00ea }
            java.lang.String r4 = "No valid color table found for frame #"
            r1.append(r4)     // Catch:{ all -> 0x00ea }
            int r4 = r7.f3765l     // Catch:{ all -> 0x00ea }
            r1.append(r4)     // Catch:{ all -> 0x00ea }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x00ea }
            android.util.Log.d(r0, r1)     // Catch:{ all -> 0x00ea }
        L_0x00a6:
            r7.p = r2     // Catch:{ all -> 0x00ea }
            monitor-exit(r7)
            return r3
        L_0x00aa:
            boolean r1 = r4.f3732f     // Catch:{ all -> 0x00ea }
            if (r1 == 0) goto L_0x00c2
            int[] r1 = r7.f3755b     // Catch:{ all -> 0x00ea }
            int[] r2 = r7.f3756c     // Catch:{ all -> 0x00ea }
            int[] r3 = r7.f3755b     // Catch:{ all -> 0x00ea }
            int r3 = r3.length     // Catch:{ all -> 0x00ea }
            java.lang.System.arraycopy(r1, r0, r2, r0, r3)     // Catch:{ all -> 0x00ea }
            int[] r1 = r7.f3756c     // Catch:{ all -> 0x00ea }
            r7.f3755b = r1     // Catch:{ all -> 0x00ea }
            int[] r1 = r7.f3755b     // Catch:{ all -> 0x00ea }
            int r2 = r4.f3734h     // Catch:{ all -> 0x00ea }
            r1[r2] = r0     // Catch:{ all -> 0x00ea }
        L_0x00c2:
            android.graphics.Bitmap r0 = r7.a(r4, r5)     // Catch:{ all -> 0x00ea }
            monitor-exit(r7)
            return r0
        L_0x00c8:
            java.lang.String r0 = f3754a     // Catch:{ all -> 0x00ea }
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch:{ all -> 0x00ea }
            if (r0 == 0) goto L_0x00e8
            java.lang.String r0 = f3754a     // Catch:{ all -> 0x00ea }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ea }
            r1.<init>()     // Catch:{ all -> 0x00ea }
            java.lang.String r2 = "Unable to decode frame, status="
            r1.append(r2)     // Catch:{ all -> 0x00ea }
            int r2 = r7.p     // Catch:{ all -> 0x00ea }
            r1.append(r2)     // Catch:{ all -> 0x00ea }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x00ea }
            android.util.Log.d(r0, r1)     // Catch:{ all -> 0x00ea }
        L_0x00e8:
            monitor-exit(r7)
            return r3
        L_0x00ea:
            r0 = move-exception
            monitor-exit(r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.e.a():android.graphics.Bitmap");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v0, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v1, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v4, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v5, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r24v2, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v4, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r17v5, resolved type: byte} */
    /* JADX WARNING: Incorrect type for immutable var: ssa=short, code=int, for r4v16, types: [short] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void c(c.b.a.b.b r30) {
        /*
            r29 = this;
            r0 = r29
            r1 = r30
            if (r1 == 0) goto L_0x000d
            java.nio.ByteBuffer r2 = r0.f3758e
            int r3 = r1.f3736j
            r2.position(r3)
        L_0x000d:
            if (r1 != 0) goto L_0x0016
            c.b.a.b.c r1 = r0.m
            int r2 = r1.f3743f
            int r1 = r1.f3744g
            goto L_0x001a
        L_0x0016:
            int r2 = r1.f3729c
            int r1 = r1.f3730d
        L_0x001a:
            int r2 = r2 * r1
            byte[] r1 = r0.f3763j
            if (r1 == 0) goto L_0x0023
            int r1 = r1.length
            if (r1 >= r2) goto L_0x002b
        L_0x0023:
            c.b.a.b.a$a r1 = r0.f3757d
            byte[] r1 = r1.b(r2)
            r0.f3763j = r1
        L_0x002b:
            byte[] r1 = r0.f3763j
            short[] r3 = r0.f3760g
            r4 = 4096(0x1000, float:5.74E-42)
            if (r3 != 0) goto L_0x0037
            short[] r3 = new short[r4]
            r0.f3760g = r3
        L_0x0037:
            short[] r3 = r0.f3760g
            byte[] r5 = r0.f3761h
            if (r5 != 0) goto L_0x0041
            byte[] r5 = new byte[r4]
            r0.f3761h = r5
        L_0x0041:
            byte[] r5 = r0.f3761h
            byte[] r6 = r0.f3762i
            if (r6 != 0) goto L_0x004d
            r6 = 4097(0x1001, float:5.741E-42)
            byte[] r6 = new byte[r6]
            r0.f3762i = r6
        L_0x004d:
            byte[] r6 = r0.f3762i
            int r7 = r29.i()
            r8 = 1
            int r9 = r8 << r7
            int r10 = r9 + 1
            int r11 = r9 + 2
            int r7 = r7 + r8
            int r12 = r8 << r7
            int r12 = r12 - r8
            r13 = 0
            r14 = 0
        L_0x0060:
            if (r14 >= r9) goto L_0x006a
            r3[r14] = r13
            byte r15 = (byte) r14
            r5[r14] = r15
            int r14 = r14 + 1
            goto L_0x0060
        L_0x006a:
            byte[] r14 = r0.f3759f
            r15 = -1
            r26 = r7
            r24 = r11
            r25 = r12
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = -1
            r22 = 0
            r23 = 0
        L_0x0083:
            if (r13 >= r2) goto L_0x015b
            if (r16 != 0) goto L_0x0094
            int r16 = r29.h()
            if (r16 > 0) goto L_0x0092
            r3 = 3
            r0.p = r3
            goto L_0x015b
        L_0x0092:
            r19 = 0
        L_0x0094:
            byte r4 = r14[r19]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << r17
            int r18 = r18 + r4
            int r17 = r17 + 8
            int r19 = r19 + 1
            int r16 = r16 + -1
            r4 = r17
            r8 = r21
            r28 = r22
            r27 = r24
            r21 = r20
            r20 = r13
            r13 = r26
        L_0x00b0:
            if (r4 < r13) goto L_0x013f
            r15 = r18 & r25
            int r18 = r18 >> r13
            int r4 = r4 - r13
            if (r15 != r9) goto L_0x00c1
            r13 = r7
            r27 = r11
            r25 = r12
            r8 = -1
        L_0x00bf:
            r15 = -1
            goto L_0x00b0
        L_0x00c1:
            if (r15 != r10) goto L_0x00d6
            r17 = r4
            r26 = r13
            r13 = r20
            r20 = r21
            r24 = r27
            r22 = r28
            r4 = 4096(0x1000, float:5.74E-42)
            r15 = -1
            r21 = r8
            r8 = 1
            goto L_0x0083
        L_0x00d6:
            r0 = -1
            if (r8 != r0) goto L_0x00e7
            byte r8 = r5[r15]
            r1[r21] = r8
            int r21 = r21 + 1
            int r20 = r20 + 1
            r0 = r29
            r8 = r15
            r28 = r8
            goto L_0x00bf
        L_0x00e7:
            r0 = r27
            if (r15 < r0) goto L_0x00f6
            r24 = r4
            r4 = r28
            byte r4 = (byte) r4
            r6[r23] = r4
            int r23 = r23 + 1
            r4 = r8
            goto L_0x00f9
        L_0x00f6:
            r24 = r4
            r4 = r15
        L_0x00f9:
            if (r4 < r9) goto L_0x0104
            byte r26 = r5[r4]
            r6[r23] = r26
            int r23 = r23 + 1
            short r4 = r3[r4]
            goto L_0x00f9
        L_0x0104:
            byte r4 = r5[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r26 = r7
            byte r7 = (byte) r4
            r1[r21] = r7
        L_0x010d:
            int r21 = r21 + 1
            int r20 = r20 + 1
            if (r23 <= 0) goto L_0x011a
            int r23 = r23 + -1
            byte r27 = r6[r23]
            r1[r21] = r27
            goto L_0x010d
        L_0x011a:
            r27 = r4
            r4 = 4096(0x1000, float:5.74E-42)
            if (r0 >= r4) goto L_0x0131
            short r8 = (short) r8
            r3[r0] = r8
            r5[r0] = r7
            int r0 = r0 + 1
            r7 = r0 & r25
            if (r7 != 0) goto L_0x0131
            if (r0 >= r4) goto L_0x0131
            int r13 = r13 + 1
            int r25 = r25 + r0
        L_0x0131:
            r8 = r15
            r4 = r24
            r7 = r26
            r28 = r27
            r15 = -1
            r27 = r0
            r0 = r29
            goto L_0x00b0
        L_0x013f:
            r24 = r4
            r0 = r27
            r15 = r28
            r4 = 4096(0x1000, float:5.74E-42)
            r26 = r13
            r22 = r15
            r13 = r20
            r20 = r21
            r17 = r24
            r15 = -1
            r24 = r0
            r21 = r8
            r8 = 1
            r0 = r29
            goto L_0x0083
        L_0x015b:
            r13 = r20
            r0 = 0
            java.util.Arrays.fill(r1, r13, r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.e.c(c.b.a.b.b):void");
    }

    public synchronized void a(c cVar, ByteBuffer byteBuffer, int i2) {
        if (i2 > 0) {
            int highestOneBit = Integer.highestOneBit(i2);
            this.p = 0;
            this.m = cVar;
            this.f3765l = -1;
            this.f3758e = byteBuffer.asReadOnlyBuffer();
            this.f3758e.position(0);
            this.f3758e.order(ByteOrder.LITTLE_ENDIAN);
            this.o = false;
            Iterator<b> it = cVar.f3742e.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().f3733g == 3) {
                        this.o = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.q = highestOneBit;
            this.s = cVar.f3743f / highestOneBit;
            this.r = cVar.f3744g / highestOneBit;
            this.f3763j = this.f3757d.b(cVar.f3743f * cVar.f3744g);
            this.f3764k = this.f3757d.a(this.s * this.r);
        } else {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i2);
        }
    }

    public void a(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.u = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    public final Bitmap a(b bVar, b bVar2) {
        int[] iArr = this.f3764k;
        int i2 = 0;
        if (bVar2 == null) {
            Bitmap bitmap = this.n;
            if (bitmap != null) {
                this.f3757d.a(bitmap);
            }
            this.n = null;
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && bVar2.f3733g == 3 && this.n == null) {
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null) {
            int i3 = bVar2.f3733g;
            if (i3 > 0) {
                if (i3 == 2) {
                    if (!bVar.f3732f) {
                        c cVar = this.m;
                        int i4 = cVar.f3749l;
                        if (bVar.f3737k == null || cVar.f3747j != bVar.f3734h) {
                            i2 = i4;
                        }
                    } else if (this.f3765l == 0) {
                        this.t = true;
                    }
                    int i5 = bVar2.f3730d;
                    int i6 = this.q;
                    int i7 = i5 / i6;
                    int i8 = bVar2.f3728b / i6;
                    int i9 = bVar2.f3729c / i6;
                    int i10 = bVar2.f3727a / i6;
                    int i11 = this.s;
                    int i12 = (i8 * i11) + i10;
                    int i13 = (i7 * i11) + i12;
                    while (i12 < i13) {
                        int i14 = i12 + i9;
                        for (int i15 = i12; i15 < i14; i15++) {
                            iArr[i15] = i2;
                        }
                        i12 += this.s;
                    }
                } else if (i3 == 3) {
                    Bitmap bitmap2 = this.n;
                    if (bitmap2 != null) {
                        int i16 = this.s;
                        bitmap2.getPixels(iArr, 0, i16, 0, 0, i16, this.r);
                    }
                }
            }
        }
        c(bVar);
        if (bVar.f3731e || this.q != 1) {
            a(bVar);
        } else {
            b(bVar);
        }
        if (this.o) {
            int i17 = bVar.f3733g;
            if (i17 == 0 || i17 == 1) {
                if (this.n == null) {
                    this.n = g();
                }
                Bitmap bitmap3 = this.n;
                int i18 = this.s;
                bitmap3.setPixels(iArr, 0, i18, 0, 0, i18, this.r);
            }
        }
        Bitmap g2 = g();
        int i19 = this.s;
        g2.setPixels(iArr, 0, i19, 0, 0, i19, this.r);
        return g2;
    }

    public final void a(b bVar) {
        boolean z;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        b bVar2 = bVar;
        int[] iArr = this.f3764k;
        int i7 = bVar2.f3730d;
        int i8 = this.q;
        int i9 = i7 / i8;
        int i10 = bVar2.f3728b / i8;
        int i11 = bVar2.f3729c / i8;
        int i12 = bVar2.f3727a / i8;
        boolean z2 = true;
        boolean z3 = this.f3765l == 0;
        int i13 = this.q;
        int i14 = this.s;
        int i15 = this.r;
        byte[] bArr = this.f3763j;
        int[] iArr2 = this.f3755b;
        Boolean bool = this.t;
        int i16 = 0;
        int i17 = 0;
        int i18 = 1;
        int i19 = 8;
        while (i16 < i9) {
            Boolean bool2 = z2;
            if (bVar2.f3731e) {
                if (i17 >= i9) {
                    i2 = i9;
                    i6 = i18 + 1;
                    if (i6 == 2) {
                        i17 = 4;
                    } else if (i6 == 3) {
                        i17 = 2;
                        i19 = 4;
                    } else if (i6 == 4) {
                        i17 = 1;
                        i19 = 2;
                    }
                } else {
                    i2 = i9;
                    i6 = i18;
                }
                i3 = i17 + i19;
                i18 = i6;
            } else {
                i2 = i9;
                i3 = i17;
                i17 = i16;
            }
            int i20 = i17 + i10;
            boolean z4 = i13 == 1;
            if (i20 < i15) {
                int i21 = i20 * i14;
                int i22 = i21 + i12;
                int i23 = i22 + i11;
                int i24 = i21 + i14;
                if (i24 < i23) {
                    i23 = i24;
                }
                i4 = i10;
                int i25 = i16 * i13 * bVar2.f3729c;
                if (z4) {
                    int i26 = i22;
                    while (i26 < i23) {
                        int i27 = i11;
                        int i28 = iArr2[bArr[i25] & 255];
                        if (i28 != 0) {
                            iArr[i26] = i28;
                        } else if (z3 && bool == null) {
                            bool = bool2;
                        }
                        i25 += i13;
                        i26++;
                        i11 = i27;
                    }
                } else {
                    i5 = i11;
                    int i29 = ((i23 - i22) * i13) + i25;
                    int i30 = i22;
                    while (i30 < i23) {
                        int i31 = i23;
                        int a2 = a(i25, i29, bVar2.f3729c);
                        if (a2 != 0) {
                            iArr[i30] = a2;
                        } else if (z3 && bool == null) {
                            bool = bool2;
                        }
                        i25 += i13;
                        i30++;
                        i23 = i31;
                    }
                    i16++;
                    i17 = i3;
                    i11 = i5;
                    z2 = bool2;
                    i9 = i2;
                    i10 = i4;
                }
            } else {
                i4 = i10;
            }
            i5 = i11;
            i16++;
            i17 = i3;
            i11 = i5;
            z2 = bool2;
            i9 = i2;
            i10 = i4;
        }
        if (this.t == null) {
            if (bool == null) {
                z = false;
            } else {
                z = bool.booleanValue();
            }
            this.t = Boolean.valueOf(z);
        }
    }

    public final int a(int i2, int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = i2; i10 < this.q + i2; i10++) {
            byte[] bArr = this.f3763j;
            if (i10 >= bArr.length || i10 >= i3) {
                break;
            }
            int i11 = this.f3755b[bArr[i10] & 255];
            if (i11 != 0) {
                i5 += (i11 >> 24) & 255;
                i6 += (i11 >> 16) & 255;
                i7 += (i11 >> 8) & 255;
                i8 += i11 & 255;
                i9++;
            }
        }
        int i12 = i2 + i4;
        for (int i13 = i12; i13 < this.q + i12; i13++) {
            byte[] bArr2 = this.f3763j;
            if (i13 >= bArr2.length || i13 >= i3) {
                break;
            }
            int i14 = this.f3755b[bArr2[i13] & 255];
            if (i14 != 0) {
                i5 += (i14 >> 24) & 255;
                i6 += (i14 >> 16) & 255;
                i7 += (i14 >> 8) & 255;
                i8 += i14 & 255;
                i9++;
            }
        }
        if (i9 == 0) {
            return 0;
        }
        return ((i5 / i9) << 24) | ((i6 / i9) << 16) | ((i7 / i9) << 8) | (i8 / i9);
    }
}
