package com.squareup.picasso;

import android.graphics.Bitmap;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.r;
import com.squareup.picasso.y;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

final class c implements Runnable {
    private static final Object t = new Object();
    private static final ThreadLocal<StringBuilder> u = new ThreadLocal<StringBuilder>() {
        /* access modifiers changed from: protected */
        public final /* synthetic */ Object initialValue() {
            return new StringBuilder("Picasso-");
        }
    };
    private static final AtomicInteger v = new AtomicInteger();
    private static final y w = new y() {
        public final boolean canHandleRequest(w wVar) {
            return true;
        }

        public final y.a load(w wVar, int i) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: ".concat(String.valueOf(wVar)));
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final int f5266a = v.incrementAndGet();

    /* renamed from: b  reason: collision with root package name */
    final Picasso f5267b;
    final i c;
    final d d;
    final aa e;
    final String f;
    final w g;
    final int h;
    int i;
    final y j;
    a k;
    List<a> l;
    Bitmap m;
    Future<?> n;
    Picasso.LoadedFrom o;
    Exception p;
    int q;
    int r;
    Picasso.Priority s;

    private static boolean a(boolean z, int i2, int i3, int i4, int i5) {
        return !z || (i4 != 0 && i2 > i4) || (i5 != 0 && i3 > i5);
    }

    private c(Picasso picasso, i iVar, d dVar, aa aaVar, a aVar, y yVar) {
        this.f5267b = picasso;
        this.c = iVar;
        this.d = dVar;
        this.e = aaVar;
        this.k = aVar;
        this.f = aVar.i;
        this.g = aVar.f5255b;
        this.s = aVar.f5255b.priority;
        this.h = aVar.e;
        this.i = aVar.f;
        this.j = yVar;
        this.r = yVar.a();
    }

    public final void run() {
        String str;
        try {
            w wVar = this.g;
            if (wVar.uri != null) {
                str = String.valueOf(wVar.uri.getPath());
            } else {
                str = Integer.toHexString(wVar.resourceId);
            }
            StringBuilder sb = u.get();
            sb.ensureCapacity(str.length() + 8);
            sb.replace(8, sb.length(), str);
            Thread.currentThread().setName(sb.toString());
            if (this.f5267b.n) {
                af.a("Hunter", "executing", af.a(this));
            }
            this.m = a();
            if (this.m == null) {
                this.c.a(this);
            } else {
                i iVar = this.c;
                iVar.i.sendMessage(iVar.i.obtainMessage(4, this));
            }
        } catch (r.b e2) {
            if (!NetworkPolicy.isOfflineOnly(e2.f5297b) || e2.f5296a != 504) {
                this.p = e2;
            }
            this.c.a(this);
        } catch (IOException e3) {
            this.p = e3;
            i iVar2 = this.c;
            iVar2.i.sendMessageDelayed(iVar2.i.obtainMessage(5, this), 500);
        } catch (OutOfMemoryError e4) {
            StringWriter stringWriter = new StringWriter();
            this.e.b().dump(new PrintWriter(stringWriter));
            this.p = new RuntimeException(stringWriter.toString(), e4);
            this.c.a(this);
        } catch (Exception e5) {
            this.p = e5;
            this.c.a(this);
        } catch (Throwable th) {
            Thread.currentThread().setName("Picasso-Idle");
            throw th;
        }
        Thread.currentThread().setName("Picasso-Idle");
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:172:0x031e A[Catch:{ all -> 0x02d3, all -> 0x045b }] */
    /* JADX WARNING: Removed duplicated region for block: B:205:0x03ab A[Catch:{ all -> 0x02d3, all -> 0x045b }] */
    /* JADX WARNING: Removed duplicated region for block: B:241:0x0410 A[Catch:{ all -> 0x02d3, all -> 0x045b }] */
    /* JADX WARNING: Removed duplicated region for block: B:243:0x0416  */
    /* JADX WARNING: Removed duplicated region for block: B:247:0x041f A[Catch:{ all -> 0x0465 }] */
    /* JADX WARNING: Removed duplicated region for block: B:250:0x0434 A[Catch:{ all -> 0x0465 }] */
    /* JADX WARNING: Removed duplicated region for block: B:255:0x0454  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.graphics.Bitmap a() throws java.io.IOException {
        /*
            r32 = this;
            r1 = r32
            int r0 = r1.h
            boolean r0 = com.squareup.picasso.MemoryPolicy.a(r0)
            r2 = 0
            if (r0 == 0) goto L_0x0034
            com.squareup.picasso.d r0 = r1.d
            java.lang.String r3 = r1.f
            android.graphics.Bitmap r0 = r0.get(r3)
            if (r0 == 0) goto L_0x0035
            com.squareup.picasso.aa r2 = r1.e
            r2.a()
            com.squareup.picasso.Picasso$LoadedFrom r2 = com.squareup.picasso.Picasso.LoadedFrom.MEMORY
            r1.o = r2
            com.squareup.picasso.Picasso r2 = r1.f5267b
            boolean r2 = r2.n
            if (r2 == 0) goto L_0x0033
            com.squareup.picasso.w r2 = r1.g
            java.lang.String r2 = r2.a()
            java.lang.String r3 = "Hunter"
            java.lang.String r4 = "decoded"
            java.lang.String r5 = "from cache"
            com.squareup.picasso.af.a(r3, r4, r2, r5)
        L_0x0033:
            return r0
        L_0x0034:
            r0 = r2
        L_0x0035:
            int r3 = r1.r
            if (r3 != 0) goto L_0x003e
            com.squareup.picasso.NetworkPolicy r3 = com.squareup.picasso.NetworkPolicy.OFFLINE
            int r3 = r3.f5243a
            goto L_0x0040
        L_0x003e:
            int r3 = r1.i
        L_0x0040:
            r1.i = r3
            com.squareup.picasso.y r3 = r1.j
            com.squareup.picasso.w r4 = r1.g
            int r5 = r1.i
            com.squareup.picasso.y$a r3 = r3.load(r4, r5)
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L_0x00dd
            com.squareup.picasso.Picasso$LoadedFrom r0 = r3.getLoadedFrom()
            r1.o = r0
            int r0 = r3.f5311a
            r1.q = r0
            android.graphics.Bitmap r0 = r3.getBitmap()
            if (r0 != 0) goto L_0x00dd
            b.v r3 = r3.getSource()
            com.squareup.picasso.w r0 = r1.g     // Catch:{ all -> 0x00d8 }
            b.e r6 = b.n.buffer((b.v) r3)     // Catch:{ all -> 0x00d8 }
            boolean r7 = com.squareup.picasso.af.a((b.e) r6)     // Catch:{ all -> 0x00d8 }
            boolean r8 = r0.purgeable     // Catch:{ all -> 0x00d8 }
            if (r8 == 0) goto L_0x007a
            int r8 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x00d8 }
            r9 = 21
            if (r8 >= r9) goto L_0x007a
            r8 = 1
            goto L_0x007b
        L_0x007a:
            r8 = 0
        L_0x007b:
            android.graphics.BitmapFactory$Options r9 = com.squareup.picasso.y.b(r0)     // Catch:{ all -> 0x00d8 }
            boolean r10 = com.squareup.picasso.y.a((android.graphics.BitmapFactory.Options) r9)     // Catch:{ all -> 0x00d8 }
            if (r7 != 0) goto L_0x00bc
            if (r8 == 0) goto L_0x0088
            goto L_0x00bc
        L_0x0088:
            java.io.InputStream r6 = r6.inputStream()     // Catch:{ all -> 0x00d8 }
            if (r10 == 0) goto L_0x00ad
            com.squareup.picasso.p r7 = new com.squareup.picasso.p     // Catch:{ all -> 0x00d8 }
            r7.<init>(r6)     // Catch:{ all -> 0x00d8 }
            r7.allowMarksToExpire(r5)     // Catch:{ all -> 0x00d8 }
            r6 = 1024(0x400, float:1.435E-42)
            long r10 = r7.savePosition(r6)     // Catch:{ all -> 0x00d8 }
            android.graphics.BitmapFactory.decodeStream(r7, r2, r9)     // Catch:{ all -> 0x00d8 }
            int r6 = r0.targetWidth     // Catch:{ all -> 0x00d8 }
            int r8 = r0.targetHeight     // Catch:{ all -> 0x00d8 }
            com.squareup.picasso.y.a(r6, r8, r9, r0)     // Catch:{ all -> 0x00d8 }
            r7.reset(r10)     // Catch:{ all -> 0x00d8 }
            r7.allowMarksToExpire(r4)     // Catch:{ all -> 0x00d8 }
            r6 = r7
        L_0x00ad:
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r6, r2, r9)     // Catch:{ all -> 0x00d8 }
            if (r0 == 0) goto L_0x00b4
            goto L_0x00d2
        L_0x00b4:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x00d8 }
            java.lang.String r2 = "Failed to decode stream."
            r0.<init>(r2)     // Catch:{ all -> 0x00d8 }
            throw r0     // Catch:{ all -> 0x00d8 }
        L_0x00bc:
            byte[] r2 = r6.readByteArray()     // Catch:{ all -> 0x00d8 }
            if (r10 == 0) goto L_0x00cd
            int r6 = r2.length     // Catch:{ all -> 0x00d8 }
            android.graphics.BitmapFactory.decodeByteArray(r2, r5, r6, r9)     // Catch:{ all -> 0x00d8 }
            int r6 = r0.targetWidth     // Catch:{ all -> 0x00d8 }
            int r7 = r0.targetHeight     // Catch:{ all -> 0x00d8 }
            com.squareup.picasso.y.a(r6, r7, r9, r0)     // Catch:{ all -> 0x00d8 }
        L_0x00cd:
            int r0 = r2.length     // Catch:{ all -> 0x00d8 }
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeByteArray(r2, r5, r0, r9)     // Catch:{ all -> 0x00d8 }
        L_0x00d2:
            r3.close()     // Catch:{ IOException -> 0x00d6 }
            goto L_0x00dd
        L_0x00d6:
            goto L_0x00dd
        L_0x00d8:
            r0 = move-exception
            r3.close()     // Catch:{ IOException -> 0x00dc }
        L_0x00dc:
            throw r0
        L_0x00dd:
            if (r0 == 0) goto L_0x0467
            com.squareup.picasso.Picasso r2 = r1.f5267b
            boolean r2 = r2.n
            if (r2 == 0) goto L_0x00f2
            com.squareup.picasso.w r2 = r1.g
            java.lang.String r2 = r2.a()
            java.lang.String r3 = "Hunter"
            java.lang.String r6 = "decoded"
            com.squareup.picasso.af.a(r3, r6, r2)
        L_0x00f2:
            com.squareup.picasso.aa r2 = r1.e
            r3 = 2
            r2.a(r0, r3)
            com.squareup.picasso.w r2 = r1.g
            boolean r6 = r2.c()
            if (r6 != 0) goto L_0x0109
            boolean r2 = r2.d()
            if (r2 == 0) goto L_0x0107
            goto L_0x0109
        L_0x0107:
            r2 = 0
            goto L_0x010a
        L_0x0109:
            r2 = 1
        L_0x010a:
            if (r2 != 0) goto L_0x0110
            int r2 = r1.q
            if (r2 == 0) goto L_0x0467
        L_0x0110:
            java.lang.Object r2 = t
            monitor-enter(r2)
            com.squareup.picasso.w r6 = r1.g     // Catch:{ all -> 0x045f }
            boolean r6 = r6.c()     // Catch:{ all -> 0x045f }
            if (r6 != 0) goto L_0x0125
            int r6 = r1.q     // Catch:{ all -> 0x045f }
            if (r6 == 0) goto L_0x0120
            goto L_0x0125
        L_0x0120:
            r20 = r2
            r2 = r1
            goto L_0x042c
        L_0x0125:
            com.squareup.picasso.w r6 = r1.g     // Catch:{ all -> 0x045f }
            int r7 = r1.q     // Catch:{ all -> 0x045f }
            int r8 = r0.getWidth()     // Catch:{ all -> 0x045f }
            int r9 = r0.getHeight()     // Catch:{ all -> 0x045f }
            boolean r10 = r6.onlyScaleDown     // Catch:{ all -> 0x045f }
            android.graphics.Matrix r12 = new android.graphics.Matrix     // Catch:{ all -> 0x045f }
            r12.<init>()     // Catch:{ all -> 0x045f }
            boolean r13 = r6.c()     // Catch:{ all -> 0x045f }
            if (r13 != 0) goto L_0x014a
            if (r7 == 0) goto L_0x0141
            goto L_0x014a
        L_0x0141:
            r28 = r0
            r20 = r2
            r4 = r8
            r5 = r9
            r0 = r12
            goto L_0x0400
        L_0x014a:
            int r13 = r6.targetWidth     // Catch:{ all -> 0x045f }
            int r14 = r6.targetHeight     // Catch:{ all -> 0x045f }
            float r15 = r6.rotationDegrees     // Catch:{ all -> 0x045f }
            r16 = 0
            int r16 = (r15 > r16 ? 1 : (r15 == r16 ? 0 : -1))
            if (r16 == 0) goto L_0x02d8
            double r13 = (double) r15
            double r16 = java.lang.Math.toRadians(r13)     // Catch:{ all -> 0x02d3 }
            double r16 = java.lang.Math.cos(r16)     // Catch:{ all -> 0x02d3 }
            double r13 = java.lang.Math.toRadians(r13)     // Catch:{ all -> 0x02d3 }
            double r13 = java.lang.Math.sin(r13)     // Catch:{ all -> 0x02d3 }
            boolean r5 = r6.hasRotationPivot     // Catch:{ all -> 0x02d3 }
            if (r5 == 0) goto L_0x023c
            float r5 = r6.rotationPivotX     // Catch:{ all -> 0x02d3 }
            float r11 = r6.rotationPivotY     // Catch:{ all -> 0x02d3 }
            r12.setRotate(r15, r5, r11)     // Catch:{ all -> 0x02d3 }
            float r5 = r6.rotationPivotX     // Catch:{ all -> 0x02d3 }
            double r4 = (double) r5
            r19 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r19 = r19 - r16
            java.lang.Double.isNaN(r4)
            double r4 = r4 * r19
            float r15 = r6.rotationPivotY     // Catch:{ all -> 0x02d3 }
            r21 = r12
            double r11 = (double) r15
            java.lang.Double.isNaN(r11)
            double r11 = r11 * r13
            double r4 = r4 + r11
            float r11 = r6.rotationPivotY     // Catch:{ all -> 0x02d3 }
            double r11 = (double) r11
            java.lang.Double.isNaN(r11)
            double r11 = r11 * r19
            float r15 = r6.rotationPivotX     // Catch:{ all -> 0x02d3 }
            r22 = r4
            double r3 = (double) r15
            java.lang.Double.isNaN(r3)
            double r3 = r3 * r13
            double r11 = r11 - r3
            int r3 = r6.targetWidth     // Catch:{ all -> 0x02d3 }
            double r3 = (double) r3
            java.lang.Double.isNaN(r3)
            double r3 = r3 * r16
            double r4 = r22 + r3
            int r3 = r6.targetWidth     // Catch:{ all -> 0x02d3 }
            r20 = r2
            double r1 = (double) r3
            java.lang.Double.isNaN(r1)
            double r1 = r1 * r13
            double r1 = r1 + r11
            int r3 = r6.targetWidth     // Catch:{ all -> 0x045b }
            r24 = r9
            r25 = r10
            double r9 = (double) r3
            java.lang.Double.isNaN(r9)
            double r9 = r9 * r16
            double r9 = r22 + r9
            int r3 = r6.targetHeight     // Catch:{ all -> 0x045b }
            r26 = r7
            r27 = r8
            double r7 = (double) r3
            java.lang.Double.isNaN(r7)
            double r7 = r7 * r13
            double r9 = r9 - r7
            int r3 = r6.targetWidth     // Catch:{ all -> 0x045b }
            double r7 = (double) r3
            java.lang.Double.isNaN(r7)
            double r7 = r7 * r13
            double r7 = r7 + r11
            int r3 = r6.targetHeight     // Catch:{ all -> 0x045b }
            r28 = r0
            r29 = r1
            double r0 = (double) r3
            java.lang.Double.isNaN(r0)
            double r0 = r0 * r16
            double r7 = r7 + r0
            int r0 = r6.targetHeight     // Catch:{ all -> 0x045b }
            double r0 = (double) r0
            java.lang.Double.isNaN(r0)
            double r0 = r0 * r13
            double r0 = r22 - r0
            int r2 = r6.targetHeight     // Catch:{ all -> 0x045b }
            double r2 = (double) r2
            java.lang.Double.isNaN(r2)
            double r2 = r2 * r16
            double r2 = r2 + r11
            r15 = r2
            r13 = r22
            double r2 = java.lang.Math.max(r13, r4)     // Catch:{ all -> 0x045b }
            double r2 = java.lang.Math.max(r9, r2)     // Catch:{ all -> 0x045b }
            double r2 = java.lang.Math.max(r0, r2)     // Catch:{ all -> 0x045b }
            double r4 = java.lang.Math.min(r13, r4)     // Catch:{ all -> 0x045b }
            double r4 = java.lang.Math.min(r9, r4)     // Catch:{ all -> 0x045b }
            double r0 = java.lang.Math.min(r0, r4)     // Catch:{ all -> 0x045b }
            r4 = r29
            double r9 = java.lang.Math.max(r11, r4)     // Catch:{ all -> 0x045b }
            double r9 = java.lang.Math.max(r7, r9)     // Catch:{ all -> 0x045b }
            r13 = r15
            double r9 = java.lang.Math.max(r13, r9)     // Catch:{ all -> 0x045b }
            double r4 = java.lang.Math.min(r11, r4)     // Catch:{ all -> 0x045b }
            double r4 = java.lang.Math.min(r7, r4)     // Catch:{ all -> 0x045b }
            double r4 = java.lang.Math.min(r13, r4)     // Catch:{ all -> 0x045b }
            double r2 = r2 - r0
            double r0 = java.lang.Math.floor(r2)     // Catch:{ all -> 0x045b }
            int r13 = (int) r0     // Catch:{ all -> 0x045b }
            double r9 = r9 - r4
            double r0 = java.lang.Math.floor(r9)     // Catch:{ all -> 0x045b }
            int r14 = (int) r0     // Catch:{ all -> 0x045b }
            r15 = r6
            r0 = r21
            goto L_0x02e6
        L_0x023c:
            r28 = r0
            r20 = r2
            r26 = r7
            r27 = r8
            r24 = r9
            r25 = r10
            r0 = r12
            r0.setRotate(r15)     // Catch:{ all -> 0x045b }
            int r1 = r6.targetWidth     // Catch:{ all -> 0x045b }
            double r1 = (double) r1
            java.lang.Double.isNaN(r1)
            double r1 = r1 * r16
            int r3 = r6.targetWidth     // Catch:{ all -> 0x045b }
            double r3 = (double) r3
            java.lang.Double.isNaN(r3)
            double r3 = r3 * r13
            int r5 = r6.targetWidth     // Catch:{ all -> 0x045b }
            double r7 = (double) r5
            java.lang.Double.isNaN(r7)
            double r7 = r7 * r16
            int r5 = r6.targetHeight     // Catch:{ all -> 0x045b }
            double r9 = (double) r5
            java.lang.Double.isNaN(r9)
            double r9 = r9 * r13
            double r7 = r7 - r9
            int r5 = r6.targetWidth     // Catch:{ all -> 0x045b }
            double r9 = (double) r5
            java.lang.Double.isNaN(r9)
            double r9 = r9 * r13
            int r5 = r6.targetHeight     // Catch:{ all -> 0x045b }
            double r11 = (double) r5
            java.lang.Double.isNaN(r11)
            double r11 = r11 * r16
            double r9 = r9 + r11
            int r5 = r6.targetHeight     // Catch:{ all -> 0x045b }
            double r11 = (double) r5
            java.lang.Double.isNaN(r11)
            double r11 = r11 * r13
            double r11 = -r11
            int r5 = r6.targetHeight     // Catch:{ all -> 0x045b }
            double r13 = (double) r5
            java.lang.Double.isNaN(r13)
            double r13 = r13 * r16
            r15 = r6
            r5 = 0
            r16 = r13
            double r13 = java.lang.Math.max(r5, r1)     // Catch:{ all -> 0x045b }
            double r13 = java.lang.Math.max(r7, r13)     // Catch:{ all -> 0x045b }
            double r13 = java.lang.Math.max(r11, r13)     // Catch:{ all -> 0x045b }
            double r1 = java.lang.Math.min(r5, r1)     // Catch:{ all -> 0x045b }
            double r1 = java.lang.Math.min(r7, r1)     // Catch:{ all -> 0x045b }
            double r1 = java.lang.Math.min(r11, r1)     // Catch:{ all -> 0x045b }
            double r7 = java.lang.Math.max(r5, r3)     // Catch:{ all -> 0x045b }
            double r7 = java.lang.Math.max(r9, r7)     // Catch:{ all -> 0x045b }
            r11 = r16
            double r7 = java.lang.Math.max(r11, r7)     // Catch:{ all -> 0x045b }
            double r3 = java.lang.Math.min(r5, r3)     // Catch:{ all -> 0x045b }
            double r3 = java.lang.Math.min(r9, r3)     // Catch:{ all -> 0x045b }
            double r3 = java.lang.Math.min(r11, r3)     // Catch:{ all -> 0x045b }
            double r13 = r13 - r1
            double r1 = java.lang.Math.floor(r13)     // Catch:{ all -> 0x045b }
            int r13 = (int) r1     // Catch:{ all -> 0x045b }
            double r7 = r7 - r3
            double r1 = java.lang.Math.floor(r7)     // Catch:{ all -> 0x045b }
            int r14 = (int) r1     // Catch:{ all -> 0x045b }
            goto L_0x02e6
        L_0x02d3:
            r0 = move-exception
            r20 = r2
            goto L_0x045c
        L_0x02d8:
            r28 = r0
            r20 = r2
            r15 = r6
            r26 = r7
            r27 = r8
            r24 = r9
            r25 = r10
            r0 = r12
        L_0x02e6:
            r1 = 5
            if (r26 == 0) goto L_0x0324
            r5 = 270(0x10e, float:3.78E-43)
            r2 = 90
            switch(r26) {
                case 3: goto L_0x02f8;
                case 4: goto L_0x02f8;
                case 5: goto L_0x02f5;
                case 6: goto L_0x02f5;
                case 7: goto L_0x02f2;
                case 8: goto L_0x02f2;
                default: goto L_0x02f0;
            }     // Catch:{ all -> 0x045b }
        L_0x02f0:
            r3 = 0
            goto L_0x02fa
        L_0x02f2:
            r3 = 270(0x10e, float:3.78E-43)
            goto L_0x02fa
        L_0x02f5:
            r3 = 90
            goto L_0x02fa
        L_0x02f8:
            r3 = 180(0xb4, float:2.52E-43)
        L_0x02fa:
            r4 = r26
            r6 = 2
            if (r4 == r6) goto L_0x0309
            r6 = 7
            if (r4 == r6) goto L_0x0309
            r6 = 4
            if (r4 == r6) goto L_0x0309
            if (r4 == r1) goto L_0x0309
            r4 = 1
            goto L_0x030a
        L_0x0309:
            r4 = -1
        L_0x030a:
            if (r3 == 0) goto L_0x031b
            float r6 = (float) r3     // Catch:{ all -> 0x045b }
            r0.preRotate(r6)     // Catch:{ all -> 0x045b }
            if (r3 == r2) goto L_0x0314
            if (r3 != r5) goto L_0x031b
        L_0x0314:
            r2 = 1
            r31 = r14
            r14 = r13
            r13 = r31
            goto L_0x031c
        L_0x031b:
            r2 = 1
        L_0x031c:
            if (r4 == r2) goto L_0x0324
            float r2 = (float) r4     // Catch:{ all -> 0x045b }
            r3 = 1065353216(0x3f800000, float:1.0)
            r0.postScale(r2, r3)     // Catch:{ all -> 0x045b }
        L_0x0324:
            r2 = r15
            boolean r3 = r2.centerCrop     // Catch:{ all -> 0x045b }
            if (r3 == 0) goto L_0x03b4
            if (r13 == 0) goto L_0x0333
            float r3 = (float) r13     // Catch:{ all -> 0x045b }
            r4 = r27
            float r5 = (float) r4     // Catch:{ all -> 0x045b }
            float r3 = r3 / r5
            r5 = r24
            goto L_0x033a
        L_0x0333:
            r4 = r27
            float r3 = (float) r14     // Catch:{ all -> 0x045b }
            r5 = r24
            float r6 = (float) r5     // Catch:{ all -> 0x045b }
            float r3 = r3 / r6
        L_0x033a:
            if (r14 == 0) goto L_0x033f
            float r6 = (float) r14     // Catch:{ all -> 0x045b }
            float r7 = (float) r5     // Catch:{ all -> 0x045b }
            goto L_0x0341
        L_0x033f:
            float r6 = (float) r13     // Catch:{ all -> 0x045b }
            float r7 = (float) r4     // Catch:{ all -> 0x045b }
        L_0x0341:
            float r6 = r6 / r7
            int r7 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r7 <= 0) goto L_0x0370
            float r1 = (float) r5     // Catch:{ all -> 0x045b }
            float r6 = r6 / r3
            float r1 = r1 * r6
            double r6 = (double) r1     // Catch:{ all -> 0x045b }
            double r6 = java.lang.Math.ceil(r6)     // Catch:{ all -> 0x045b }
            int r9 = (int) r6     // Catch:{ all -> 0x045b }
            int r1 = r2.centerCropGravity     // Catch:{ all -> 0x045b }
            r6 = 48
            r1 = r1 & r6
            if (r1 != r6) goto L_0x0359
            r1 = 0
            goto L_0x0367
        L_0x0359:
            int r1 = r2.centerCropGravity     // Catch:{ all -> 0x045b }
            r2 = 80
            r1 = r1 & r2
            if (r1 != r2) goto L_0x0363
            int r1 = r5 - r9
            goto L_0x0367
        L_0x0363:
            int r1 = r5 - r9
            r2 = 2
            int r1 = r1 / r2
        L_0x0367:
            float r2 = (float) r14     // Catch:{ all -> 0x045b }
            float r6 = (float) r9     // Catch:{ all -> 0x045b }
            float r6 = r2 / r6
            r2 = r1
            r8 = r4
            r1 = r25
            goto L_0x03a3
        L_0x0370:
            int r7 = (r3 > r6 ? 1 : (r3 == r6 ? 0 : -1))
            if (r7 >= 0) goto L_0x039d
            float r7 = (float) r4     // Catch:{ all -> 0x045b }
            float r3 = r3 / r6
            float r7 = r7 * r3
            double r7 = (double) r7     // Catch:{ all -> 0x045b }
            double r7 = java.lang.Math.ceil(r7)     // Catch:{ all -> 0x045b }
            int r8 = (int) r7     // Catch:{ all -> 0x045b }
            int r3 = r2.centerCropGravity     // Catch:{ all -> 0x045b }
            r7 = 3
            r3 = r3 & r7
            if (r3 != r7) goto L_0x0386
            r1 = 0
            goto L_0x0392
        L_0x0386:
            int r2 = r2.centerCropGravity     // Catch:{ all -> 0x045b }
            r2 = r2 & r1
            if (r2 != r1) goto L_0x038e
            int r1 = r4 - r8
            goto L_0x0392
        L_0x038e:
            int r1 = r4 - r8
            r2 = 2
            int r1 = r1 / r2
        L_0x0392:
            float r2 = (float) r13     // Catch:{ all -> 0x045b }
            float r3 = (float) r8     // Catch:{ all -> 0x045b }
            float r3 = r2 / r3
            r18 = r1
            r9 = r5
            r1 = r25
            r2 = 0
            goto L_0x03a5
        L_0x039d:
            r8 = r4
            r9 = r5
            r3 = r6
            r1 = r25
            r2 = 0
        L_0x03a3:
            r18 = 0
        L_0x03a5:
            boolean r1 = a((boolean) r1, (int) r4, (int) r5, (int) r13, (int) r14)     // Catch:{ all -> 0x045b }
            if (r1 == 0) goto L_0x03ae
            r0.preScale(r3, r6)     // Catch:{ all -> 0x045b }
        L_0x03ae:
            r6 = r2
            r7 = r8
            r8 = r9
            r5 = r18
            goto L_0x0404
        L_0x03b4:
            r5 = r24
            r1 = r25
            r4 = r27
            boolean r2 = r2.centerInside     // Catch:{ all -> 0x045b }
            if (r2 == 0) goto L_0x03de
            if (r13 == 0) goto L_0x03c3
            float r2 = (float) r13     // Catch:{ all -> 0x045b }
            float r3 = (float) r4     // Catch:{ all -> 0x045b }
            goto L_0x03c5
        L_0x03c3:
            float r2 = (float) r14     // Catch:{ all -> 0x045b }
            float r3 = (float) r5     // Catch:{ all -> 0x045b }
        L_0x03c5:
            float r2 = r2 / r3
            if (r14 == 0) goto L_0x03cb
            float r3 = (float) r14     // Catch:{ all -> 0x045b }
            float r6 = (float) r5     // Catch:{ all -> 0x045b }
            goto L_0x03cd
        L_0x03cb:
            float r3 = (float) r13     // Catch:{ all -> 0x045b }
            float r6 = (float) r4     // Catch:{ all -> 0x045b }
        L_0x03cd:
            float r3 = r3 / r6
            int r6 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r6 >= 0) goto L_0x03d3
            goto L_0x03d4
        L_0x03d3:
            r2 = r3
        L_0x03d4:
            boolean r1 = a((boolean) r1, (int) r4, (int) r5, (int) r13, (int) r14)     // Catch:{ all -> 0x045b }
            if (r1 == 0) goto L_0x0400
            r0.preScale(r2, r2)     // Catch:{ all -> 0x045b }
            goto L_0x0400
        L_0x03de:
            if (r13 != 0) goto L_0x03e2
            if (r14 == 0) goto L_0x0400
        L_0x03e2:
            if (r13 != r4) goto L_0x03e6
            if (r14 == r5) goto L_0x0400
        L_0x03e6:
            if (r13 == 0) goto L_0x03eb
            float r2 = (float) r13     // Catch:{ all -> 0x045b }
            float r3 = (float) r4     // Catch:{ all -> 0x045b }
            goto L_0x03ed
        L_0x03eb:
            float r2 = (float) r14     // Catch:{ all -> 0x045b }
            float r3 = (float) r5     // Catch:{ all -> 0x045b }
        L_0x03ed:
            float r2 = r2 / r3
            if (r14 == 0) goto L_0x03f4
            float r3 = (float) r14     // Catch:{ all -> 0x045b }
            float r6 = (float) r5     // Catch:{ all -> 0x045b }
        L_0x03f2:
            float r3 = r3 / r6
            goto L_0x03f7
        L_0x03f4:
            float r3 = (float) r13     // Catch:{ all -> 0x045b }
            float r6 = (float) r4     // Catch:{ all -> 0x045b }
            goto L_0x03f2
        L_0x03f7:
            boolean r1 = a((boolean) r1, (int) r4, (int) r5, (int) r13, (int) r14)     // Catch:{ all -> 0x045b }
            if (r1 == 0) goto L_0x0400
            r0.preScale(r2, r3)     // Catch:{ all -> 0x045b }
        L_0x0400:
            r7 = r4
            r8 = r5
            r5 = 0
            r6 = 0
        L_0x0404:
            r10 = 1
            r4 = r28
            r9 = r0
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r4, r5, r6, r7, r8, r9, r10)     // Catch:{ all -> 0x045b }
            r1 = r28
            if (r0 == r1) goto L_0x0416
            r1.recycle()     // Catch:{ all -> 0x045b }
            r2 = r32
            goto L_0x0419
        L_0x0416:
            r2 = r32
            r0 = r1
        L_0x0419:
            com.squareup.picasso.Picasso r1 = r2.f5267b     // Catch:{ all -> 0x0465 }
            boolean r1 = r1.n     // Catch:{ all -> 0x0465 }
            if (r1 == 0) goto L_0x042c
            java.lang.String r1 = "Hunter"
            java.lang.String r3 = "transformed"
            com.squareup.picasso.w r4 = r2.g     // Catch:{ all -> 0x0465 }
            java.lang.String r4 = r4.a()     // Catch:{ all -> 0x0465 }
            com.squareup.picasso.af.a(r1, r3, r4)     // Catch:{ all -> 0x0465 }
        L_0x042c:
            com.squareup.picasso.w r1 = r2.g     // Catch:{ all -> 0x0465 }
            boolean r1 = r1.d()     // Catch:{ all -> 0x0465 }
            if (r1 == 0) goto L_0x0451
            com.squareup.picasso.w r1 = r2.g     // Catch:{ all -> 0x0465 }
            java.util.List<com.squareup.picasso.ae> r1 = r1.transformations     // Catch:{ all -> 0x0465 }
            android.graphics.Bitmap r0 = a(r1, r0)     // Catch:{ all -> 0x0465 }
            com.squareup.picasso.Picasso r1 = r2.f5267b     // Catch:{ all -> 0x0465 }
            boolean r1 = r1.n     // Catch:{ all -> 0x0465 }
            if (r1 == 0) goto L_0x0451
            java.lang.String r1 = "Hunter"
            java.lang.String r3 = "transformed"
            com.squareup.picasso.w r4 = r2.g     // Catch:{ all -> 0x0465 }
            java.lang.String r4 = r4.a()     // Catch:{ all -> 0x0465 }
            java.lang.String r5 = "from custom transformations"
            com.squareup.picasso.af.a(r1, r3, r4, r5)     // Catch:{ all -> 0x0465 }
        L_0x0451:
            monitor-exit(r20)     // Catch:{ all -> 0x0465 }
            if (r0 == 0) goto L_0x046a
            com.squareup.picasso.aa r1 = r2.e
            r3 = 3
            r1.a(r0, r3)
            goto L_0x046a
        L_0x045b:
            r0 = move-exception
        L_0x045c:
            r2 = r32
            goto L_0x0463
        L_0x045f:
            r0 = move-exception
            r20 = r2
            r2 = r1
        L_0x0463:
            monitor-exit(r20)     // Catch:{ all -> 0x0465 }
            throw r0
        L_0x0465:
            r0 = move-exception
            goto L_0x0463
        L_0x0467:
            r2 = r1
            r1 = r0
            r0 = r1
        L_0x046a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.c.a():android.graphics.Bitmap");
    }

    /* access modifiers changed from: package-private */
    public final void a(a aVar) {
        boolean z;
        boolean z2 = true;
        if (this.k == aVar) {
            this.k = null;
            z = true;
        } else {
            List<a> list = this.l;
            if (list != null) {
                z = list.remove(aVar);
            } else {
                z = false;
            }
        }
        if (z && aVar.f5255b.priority == this.s) {
            Picasso.Priority priority = Picasso.Priority.LOW;
            List<a> list2 = this.l;
            boolean z3 = list2 != null && !list2.isEmpty();
            if (this.k == null && !z3) {
                z2 = false;
            }
            if (z2) {
                a aVar2 = this.k;
                if (aVar2 != null) {
                    priority = aVar2.f5255b.priority;
                }
                if (z3) {
                    int size = this.l.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        Picasso.Priority priority2 = this.l.get(i2).f5255b.priority;
                        if (priority2.ordinal() > priority.ordinal()) {
                            priority = priority2;
                        }
                    }
                }
            }
            this.s = priority;
        }
        if (this.f5267b.n) {
            af.a("Hunter", "removed", aVar.f5255b.a(), af.a(this, "from "));
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean b() {
        if (this.k == null) {
            List<a> list = this.l;
            if (list == null || list.isEmpty()) {
                Future<?> future = this.n;
                if (future != null && future.cancel(false)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean c() {
        Future<?> future = this.n;
        return future != null && future.isCancelled();
    }

    private static Bitmap a(List<ae> list, Bitmap bitmap) {
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            final ae aeVar = list.get(i2);
            try {
                Bitmap transform = aeVar.transform(bitmap);
                if (transform == null) {
                    final StringBuilder sb = new StringBuilder("Transformation ");
                    sb.append(aeVar.key());
                    sb.append(" returned null after ");
                    sb.append(i2);
                    sb.append(" previous transformation(s).\n\nTransformation list:\n");
                    for (ae key : list) {
                        sb.append(key.key());
                        sb.append(10);
                    }
                    Picasso.f5244a.post(new Runnable() {
                        public final void run() {
                            throw new NullPointerException(sb.toString());
                        }
                    });
                    return null;
                } else if (transform == bitmap && bitmap.isRecycled()) {
                    Picasso.f5244a.post(new Runnable() {
                        public final void run() {
                            throw new IllegalStateException("Transformation " + aeVar.key() + " returned input Bitmap but recycled it.");
                        }
                    });
                    return null;
                } else if (transform == bitmap || bitmap.isRecycled()) {
                    i2++;
                    bitmap = transform;
                } else {
                    Picasso.f5244a.post(new Runnable() {
                        public final void run() {
                            throw new IllegalStateException("Transformation " + aeVar.key() + " mutated input Bitmap but failed to recycle the original.");
                        }
                    });
                    return null;
                }
            } catch (RuntimeException e2) {
                Picasso.f5244a.post(new Runnable() {
                    public final void run() {
                        throw new RuntimeException("Transformation " + aeVar.key() + " crashed with exception.", e2);
                    }
                });
                return null;
            }
        }
        return bitmap;
    }

    static c a(Picasso picasso, i iVar, d dVar, aa aaVar, a aVar) {
        w wVar = aVar.f5255b;
        List<y> list = picasso.d;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            y yVar = list.get(i2);
            if (yVar.canHandleRequest(wVar)) {
                c cVar = new c(picasso, iVar, dVar, aaVar, aVar, yVar);
                return cVar;
            }
        }
        c cVar2 = new c(picasso, iVar, dVar, aaVar, aVar, w);
        return cVar2;
    }
}
