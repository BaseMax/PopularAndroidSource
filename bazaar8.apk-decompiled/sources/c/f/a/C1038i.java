package c.f.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import android.os.Build;
import c.f.a.I;
import com.squareup.picasso.MemoryPolicy;
import com.squareup.picasso.NetworkPolicy;
import com.squareup.picasso.NetworkRequestHandler;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import k.i;
import k.s;
import k.z;

/* renamed from: c.f.a.i  reason: case insensitive filesystem */
/* compiled from: BitmapHunter */
public class C1038i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f11981a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static final ThreadLocal<StringBuilder> f11982b = new C1032c();

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicInteger f11983c = new AtomicInteger();

    /* renamed from: d  reason: collision with root package name */
    public static final I f11984d = new C1033d();

    /* renamed from: e  reason: collision with root package name */
    public final int f11985e = f11983c.incrementAndGet();

    /* renamed from: f  reason: collision with root package name */
    public final Picasso f11986f;

    /* renamed from: g  reason: collision with root package name */
    public final q f11987g;

    /* renamed from: h  reason: collision with root package name */
    public final C1040k f11988h;

    /* renamed from: i  reason: collision with root package name */
    public final L f11989i;

    /* renamed from: j  reason: collision with root package name */
    public final String f11990j;

    /* renamed from: k  reason: collision with root package name */
    public final G f11991k;

    /* renamed from: l  reason: collision with root package name */
    public final int f11992l;
    public int m;
    public final I n;
    public C1030a o;
    public List<C1030a> p;
    public Bitmap q;
    public Future<?> r;
    public Picasso.LoadedFrom s;
    public Exception t;
    public int u;
    public int v;
    public Picasso.Priority w;

    public C1038i(Picasso picasso, q qVar, C1040k kVar, L l2, C1030a aVar, I i2) {
        this.f11986f = picasso;
        this.f11987g = qVar;
        this.f11988h = kVar;
        this.f11989i = l2;
        this.o = aVar;
        this.f11990j = aVar.b();
        this.f11991k = aVar.g();
        this.w = aVar.f();
        this.f11992l = aVar.c();
        this.m = aVar.d();
        this.n = i2;
        this.v = i2.a();
    }

    public static int a(int i2) {
        switch (i2) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    public static Bitmap a(z zVar, G g2) {
        i a2 = s.a(zVar);
        boolean a3 = P.a(a2);
        boolean z = g2.s && Build.VERSION.SDK_INT < 21;
        BitmapFactory.Options b2 = I.b(g2);
        boolean a4 = I.a(b2);
        if (a3 || z) {
            byte[] c2 = a2.c();
            if (a4) {
                BitmapFactory.decodeByteArray(c2, 0, c2.length, b2);
                I.a(g2.f11896i, g2.f11897j, b2, g2);
            }
            return BitmapFactory.decodeByteArray(c2, 0, c2.length, b2);
        }
        InputStream k2 = a2.k();
        if (a4) {
            y yVar = new y(k2);
            yVar.a(false);
            long b3 = yVar.b(1024);
            BitmapFactory.decodeStream(yVar, null, b2);
            I.a(g2.f11896i, g2.f11897j, b2, g2);
            yVar.h(b3);
            yVar.a(true);
            k2 = yVar;
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(k2, null, b2);
        if (decodeStream != null) {
            return decodeStream;
        }
        throw new IOException("Failed to decode stream.");
    }

    public static boolean a(boolean z, int i2, int i3, int i4, int i5) {
        return !z || (i4 != 0 && i2 > i4) || (i5 != 0 && i3 > i5);
    }

    public static int b(int i2) {
        return (i2 == 2 || i2 == 7 || i2 == 4 || i2 == 5) ? -1 : 1;
    }

    public void b(C1030a aVar) {
        boolean z;
        if (this.o == aVar) {
            this.o = null;
            z = true;
        } else {
            List<C1030a> list = this.p;
            z = list != null ? list.remove(aVar) : false;
        }
        if (z && aVar.f() == this.w) {
            this.w = b();
        }
        if (this.f11986f.p) {
            P.a("Hunter", "removed", aVar.f11960b.d(), P.a(this, "from "));
        }
    }

    public C1030a c() {
        return this.o;
    }

    public List<C1030a> d() {
        return this.p;
    }

    public G e() {
        return this.f11991k;
    }

    public Exception f() {
        return this.t;
    }

    public String g() {
        return this.f11990j;
    }

    public Picasso.LoadedFrom h() {
        return this.s;
    }

    public int i() {
        return this.f11992l;
    }

    public Picasso j() {
        return this.f11986f;
    }

    public Picasso.Priority k() {
        return this.w;
    }

    public Bitmap l() {
        return this.q;
    }

    public Bitmap m() {
        Bitmap bitmap;
        if (MemoryPolicy.a(this.f11992l)) {
            bitmap = this.f11988h.a(this.f11990j);
            if (bitmap != null) {
                this.f11989i.b();
                this.s = Picasso.LoadedFrom.MEMORY;
                if (this.f11986f.p) {
                    P.a("Hunter", "decoded", this.f11991k.d(), "from cache");
                }
                return bitmap;
            }
        } else {
            bitmap = null;
        }
        this.m = this.v == 0 ? NetworkPolicy.OFFLINE.index : this.m;
        I.a a2 = this.n.a(this.f11991k, this.m);
        if (a2 != null) {
            this.s = a2.c();
            this.u = a2.b();
            bitmap = a2.a();
            if (bitmap == null) {
                z d2 = a2.d();
                try {
                    bitmap = a(d2, this.f11991k);
                } finally {
                    try {
                        d2.close();
                    } catch (IOException unused) {
                    }
                }
            }
        }
        if (bitmap != null) {
            if (this.f11986f.p) {
                P.a("Hunter", "decoded", this.f11991k.d());
            }
            this.f11989i.a(bitmap);
            if (this.f11991k.f() || this.u != 0) {
                synchronized (f11981a) {
                    if (this.f11991k.e() || this.u != 0) {
                        bitmap = a(this.f11991k, bitmap, this.u);
                        if (this.f11986f.p) {
                            P.a("Hunter", "transformed", this.f11991k.d());
                        }
                    }
                    if (this.f11991k.b()) {
                        bitmap = a(this.f11991k.f11895h, bitmap);
                        if (this.f11986f.p) {
                            P.a("Hunter", "transformed", this.f11991k.d(), "from custom transformations");
                        }
                    }
                }
                if (bitmap != null) {
                    this.f11989i.b(bitmap);
                }
            }
        }
        return bitmap;
    }

    public boolean n() {
        Future<?> future = this.r;
        return future != null && future.isCancelled();
    }

    public boolean o() {
        return this.n.b();
    }

    public void run() {
        try {
            a(this.f11991k);
            if (this.f11986f.p) {
                P.a("Hunter", "executing", P.a(this));
            }
            this.q = m();
            if (this.q == null) {
                this.f11987g.c(this);
            } else {
                this.f11987g.b(this);
            }
        } catch (NetworkRequestHandler.ResponseException e2) {
            if (!NetworkPolicy.a(e2.networkPolicy) || e2.code != 504) {
                this.t = e2;
            }
            this.f11987g.c(this);
        } catch (IOException e3) {
            this.t = e3;
            this.f11987g.d(this);
        } catch (OutOfMemoryError e4) {
            StringWriter stringWriter = new StringWriter();
            this.f11989i.a().a(new PrintWriter(stringWriter));
            this.t = new RuntimeException(stringWriter.toString(), e4);
            this.f11987g.c(this);
        } catch (Exception e5) {
            this.t = e5;
            this.f11987g.c(this);
        } catch (Throwable th) {
            Thread.currentThread().setName("Picasso-Idle");
            throw th;
        }
        Thread.currentThread().setName("Picasso-Idle");
    }

    public final Picasso.Priority b() {
        Picasso.Priority priority = Picasso.Priority.LOW;
        List<C1030a> list = this.p;
        boolean z = true;
        boolean z2 = list != null && !list.isEmpty();
        if (this.o == null && !z2) {
            z = false;
        }
        if (!z) {
            return priority;
        }
        C1030a aVar = this.o;
        if (aVar != null) {
            priority = aVar.f();
        }
        if (z2) {
            int size = this.p.size();
            for (int i2 = 0; i2 < size; i2++) {
                Picasso.Priority f2 = this.p.get(i2).f();
                if (f2.ordinal() > priority.ordinal()) {
                    priority = f2;
                }
            }
        }
        return priority;
    }

    public void a(C1030a aVar) {
        boolean z = this.f11986f.p;
        G g2 = aVar.f11960b;
        if (this.o == null) {
            this.o = aVar;
            if (z) {
                List<C1030a> list = this.p;
                if (list == null || list.isEmpty()) {
                    P.a("Hunter", "joined", g2.d(), "to empty hunter");
                } else {
                    P.a("Hunter", "joined", g2.d(), P.a(this, "to "));
                }
            }
            return;
        }
        if (this.p == null) {
            this.p = new ArrayList(3);
        }
        this.p.add(aVar);
        if (z) {
            P.a("Hunter", "joined", g2.d(), P.a(this, "to "));
        }
        Picasso.Priority f2 = aVar.f();
        if (f2.ordinal() > this.w.ordinal()) {
            this.w = f2;
        }
    }

    public boolean a() {
        if (this.o != null) {
            return false;
        }
        List<C1030a> list = this.p;
        if (list != null && !list.isEmpty()) {
            return false;
        }
        Future<?> future = this.r;
        if (future == null || !future.cancel(false)) {
            return false;
        }
        return true;
    }

    public boolean a(boolean z, NetworkInfo networkInfo) {
        if (!(this.v > 0)) {
            return false;
        }
        this.v--;
        return this.n.a(z, networkInfo);
    }

    public static void a(G g2) {
        String a2 = g2.a();
        StringBuilder sb = f11982b.get();
        sb.ensureCapacity(a2.length() + 8);
        sb.replace(8, sb.length(), a2);
        Thread.currentThread().setName(sb.toString());
    }

    public static C1038i a(Picasso picasso, q qVar, C1040k kVar, L l2, C1030a aVar) {
        G g2 = aVar.g();
        List<I> a2 = picasso.a();
        int size = a2.size();
        for (int i2 = 0; i2 < size; i2++) {
            I i3 = a2.get(i2);
            if (i3.a(g2)) {
                C1038i iVar = new C1038i(picasso, qVar, kVar, l2, aVar, i3);
                return iVar;
            }
        }
        C1038i iVar2 = new C1038i(picasso, qVar, kVar, l2, aVar, f11984d);
        return iVar2;
    }

    public static Bitmap a(List<N> list, Bitmap bitmap) {
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            N n2 = list.get(i2);
            try {
                Bitmap a2 = n2.a(bitmap);
                if (a2 == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Transformation ");
                    sb.append(n2.a());
                    sb.append(" returned null after ");
                    sb.append(i2);
                    sb.append(" previous transformation(s).\n\nTransformation list:\n");
                    for (N a3 : list) {
                        sb.append(a3.a());
                        sb.append(10);
                    }
                    Picasso.f13602a.post(new C1035f(sb));
                    return null;
                } else if (a2 == bitmap && bitmap.isRecycled()) {
                    Picasso.f13602a.post(new C1036g(n2));
                    return null;
                } else if (a2 == bitmap || bitmap.isRecycled()) {
                    i2++;
                    bitmap = a2;
                } else {
                    Picasso.f13602a.post(new C1037h(n2));
                    return null;
                }
            } catch (RuntimeException e2) {
                Picasso.f13602a.post(new C1034e(n2, e2));
                return null;
            }
        }
        return bitmap;
    }

    /* JADX WARNING: Removed duplicated region for block: B:87:0x029e  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x02a2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Bitmap a(c.f.a.G r26, android.graphics.Bitmap r27, int r28) {
        /*
            r0 = r26
            int r1 = r27.getWidth()
            int r2 = r27.getHeight()
            boolean r3 = r0.n
            android.graphics.Matrix r9 = new android.graphics.Matrix
            r9.<init>()
            boolean r4 = r26.e()
            if (r4 != 0) goto L_0x001f
            if (r28 == 0) goto L_0x001a
            goto L_0x001f
        L_0x001a:
            r3 = r1
            r5 = r2
            r0 = r9
            goto L_0x028e
        L_0x001f:
            int r4 = r0.f11896i
            int r6 = r0.f11897j
            float r7 = r0.o
            r8 = 0
            int r8 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r8 == 0) goto L_0x017f
            double r10 = (double) r7
            double r12 = java.lang.Math.toRadians(r10)
            double r12 = java.lang.Math.cos(r12)
            double r10 = java.lang.Math.toRadians(r10)
            double r10 = java.lang.Math.sin(r10)
            boolean r4 = r0.r
            if (r4 == 0) goto L_0x00f8
            float r4 = r0.p
            float r6 = r0.q
            r9.setRotate(r7, r4, r6)
            float r4 = r0.p
            double r6 = (double) r4
            r14 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r14 = r14 - r12
            java.lang.Double.isNaN(r6)
            double r6 = r6 * r14
            float r8 = r0.q
            r17 = r6
            double r5 = (double) r8
            java.lang.Double.isNaN(r5)
            double r5 = r5 * r10
            double r6 = r17 + r5
            r5 = r2
            r17 = r3
            double r2 = (double) r8
            java.lang.Double.isNaN(r2)
            double r2 = r2 * r14
            double r14 = (double) r4
            java.lang.Double.isNaN(r14)
            double r14 = r14 * r10
            double r2 = r2 - r14
            int r4 = r0.f11896i
            double r14 = (double) r4
            java.lang.Double.isNaN(r14)
            double r14 = r14 * r12
            double r14 = r14 + r6
            r18 = r9
            double r8 = (double) r4
            java.lang.Double.isNaN(r8)
            double r8 = r8 * r10
            double r8 = r8 + r2
            r19 = r8
            double r8 = (double) r4
            java.lang.Double.isNaN(r8)
            double r8 = r8 * r12
            double r8 = r8 + r6
            r21 = r5
            int r5 = r0.f11897j
            r22 = r1
            double r0 = (double) r5
            java.lang.Double.isNaN(r0)
            double r0 = r0 * r10
            double r8 = r8 - r0
            double r0 = (double) r4
            java.lang.Double.isNaN(r0)
            double r0 = r0 * r10
            double r0 = r0 + r2
            r23 = r8
            double r8 = (double) r5
            java.lang.Double.isNaN(r8)
            double r8 = r8 * r12
            double r0 = r0 + r8
            double r8 = (double) r5
            java.lang.Double.isNaN(r8)
            double r8 = r8 * r10
            double r8 = r6 - r8
            double r4 = (double) r5
            java.lang.Double.isNaN(r4)
            double r4 = r4 * r12
            double r4 = r4 + r2
            double r10 = java.lang.Math.max(r6, r14)
            r12 = r23
            double r10 = java.lang.Math.max(r12, r10)
            double r10 = java.lang.Math.max(r8, r10)
            double r6 = java.lang.Math.min(r6, r14)
            double r6 = java.lang.Math.min(r12, r6)
            double r6 = java.lang.Math.min(r8, r6)
            r8 = r19
            double r12 = java.lang.Math.max(r2, r8)
            double r12 = java.lang.Math.max(r0, r12)
            double r12 = java.lang.Math.max(r4, r12)
            double r2 = java.lang.Math.min(r2, r8)
            double r0 = java.lang.Math.min(r0, r2)
            double r0 = java.lang.Math.min(r4, r0)
            double r10 = r10 - r6
            double r2 = java.lang.Math.floor(r10)
            int r4 = (int) r2
            double r12 = r12 - r0
            double r0 = java.lang.Math.floor(r12)
            int r6 = (int) r0
            r0 = r18
            goto L_0x0186
        L_0x00f8:
            r22 = r1
            r21 = r2
            r17 = r3
            r0 = r9
            r0.setRotate(r7)
            r1 = r26
            int r2 = r1.f11896i
            double r3 = (double) r2
            java.lang.Double.isNaN(r3)
            double r3 = r3 * r12
            double r5 = (double) r2
            java.lang.Double.isNaN(r5)
            double r5 = r5 * r10
            double r7 = (double) r2
            java.lang.Double.isNaN(r7)
            double r7 = r7 * r12
            int r9 = r1.f11897j
            double r14 = (double) r9
            java.lang.Double.isNaN(r14)
            double r14 = r14 * r10
            double r7 = r7 - r14
            double r14 = (double) r2
            java.lang.Double.isNaN(r14)
            double r14 = r14 * r10
            double r1 = (double) r9
            java.lang.Double.isNaN(r1)
            double r1 = r1 * r12
            double r14 = r14 + r1
            double r1 = (double) r9
            java.lang.Double.isNaN(r1)
            double r1 = r1 * r10
            double r1 = -r1
            double r9 = (double) r9
            java.lang.Double.isNaN(r9)
            double r9 = r9 * r12
            r11 = 0
            r18 = r9
            double r9 = java.lang.Math.max(r11, r3)
            double r9 = java.lang.Math.max(r7, r9)
            double r9 = java.lang.Math.max(r1, r9)
            double r3 = java.lang.Math.min(r11, r3)
            double r3 = java.lang.Math.min(r7, r3)
            double r1 = java.lang.Math.min(r1, r3)
            double r3 = java.lang.Math.max(r11, r5)
            double r3 = java.lang.Math.max(r14, r3)
            r7 = r18
            double r3 = java.lang.Math.max(r7, r3)
            double r5 = java.lang.Math.min(r11, r5)
            double r5 = java.lang.Math.min(r14, r5)
            double r5 = java.lang.Math.min(r7, r5)
            double r9 = r9 - r1
            double r1 = java.lang.Math.floor(r9)
            int r1 = (int) r1
            double r3 = r3 - r5
            double r2 = java.lang.Math.floor(r3)
            int r6 = (int) r2
            r4 = r1
            goto L_0x0186
        L_0x017f:
            r22 = r1
            r21 = r2
            r17 = r3
            r0 = r9
        L_0x0186:
            if (r28 == 0) goto L_0x01ac
            int r1 = a((int) r28)
            int r2 = b((int) r28)
            if (r1 == 0) goto L_0x01a3
            float r3 = (float) r1
            r0.preRotate(r3)
            r3 = 90
            if (r1 == r3) goto L_0x019e
            r3 = 270(0x10e, float:3.78E-43)
            if (r1 != r3) goto L_0x01a3
        L_0x019e:
            r25 = r6
            r6 = r4
            r4 = r25
        L_0x01a3:
            r1 = 1
            if (r2 == r1) goto L_0x01ac
            float r1 = (float) r2
            r2 = 1065353216(0x3f800000, float:1.0)
            r0.postScale(r1, r2)
        L_0x01ac:
            r1 = r26
            boolean r2 = r1.f11898k
            if (r2 == 0) goto L_0x0243
            if (r4 == 0) goto L_0x01bc
            float r2 = (float) r4
            r3 = r22
            float r5 = (float) r3
            float r2 = r2 / r5
            r5 = r21
            goto L_0x01c3
        L_0x01bc:
            r3 = r22
            float r2 = (float) r6
            r5 = r21
            float r7 = (float) r5
            float r2 = r2 / r7
        L_0x01c3:
            if (r6 == 0) goto L_0x01c8
            float r7 = (float) r6
            float r8 = (float) r5
            goto L_0x01ca
        L_0x01c8:
            float r7 = (float) r4
            float r8 = (float) r3
        L_0x01ca:
            float r7 = r7 / r8
            int r8 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r8 <= 0) goto L_0x01fa
            float r8 = (float) r5
            float r7 = r7 / r2
            float r8 = r8 * r7
            double r7 = (double) r8
            double r7 = java.lang.Math.ceil(r7)
            int r7 = (int) r7
            int r1 = r1.f11899l
            r8 = r1 & 48
            r9 = 48
            if (r8 != r9) goto L_0x01e3
            r1 = 0
            goto L_0x01ef
        L_0x01e3:
            r8 = 80
            r1 = r1 & r8
            if (r1 != r8) goto L_0x01eb
            int r1 = r5 - r7
            goto L_0x01ef
        L_0x01eb:
            int r1 = r5 - r7
            int r1 = r1 / 2
        L_0x01ef:
            float r8 = (float) r6
            float r9 = (float) r7
            float r8 = r8 / r9
            r9 = r3
            r10 = r7
            r16 = 0
            r7 = r2
            r2 = r17
            goto L_0x0234
        L_0x01fa:
            int r8 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r8 >= 0) goto L_0x022c
            float r8 = (float) r3
            float r2 = r2 / r7
            float r8 = r8 * r2
            double r8 = (double) r8
            double r8 = java.lang.Math.ceil(r8)
            int r2 = (int) r8
            int r1 = r1.f11899l
            r8 = r1 & 3
            r9 = 3
            if (r8 != r9) goto L_0x0211
            r1 = 0
            goto L_0x021c
        L_0x0211:
            r8 = 5
            r1 = r1 & r8
            if (r1 != r8) goto L_0x0218
            int r1 = r3 - r2
            goto L_0x021c
        L_0x0218:
            int r1 = r3 - r2
            int r1 = r1 / 2
        L_0x021c:
            float r8 = (float) r4
            float r9 = (float) r2
            float r8 = r8 / r9
            r16 = r1
            r9 = r2
            r10 = r5
            r2 = r17
            r1 = 0
            r25 = r8
            r8 = r7
            r7 = r25
            goto L_0x0234
        L_0x022c:
            r9 = r3
            r10 = r5
            r8 = r7
            r2 = r17
            r1 = 0
            r16 = 0
        L_0x0234:
            boolean r2 = a((boolean) r2, (int) r3, (int) r5, (int) r4, (int) r6)
            if (r2 == 0) goto L_0x023d
            r0.preScale(r7, r8)
        L_0x023d:
            r6 = r1
            r7 = r9
            r8 = r10
            r5 = r16
            goto L_0x0292
        L_0x0243:
            r2 = r17
            r5 = r21
            r3 = r22
            boolean r1 = r1.m
            if (r1 == 0) goto L_0x026d
            if (r4 == 0) goto L_0x0252
            float r1 = (float) r4
            float r7 = (float) r3
            goto L_0x0254
        L_0x0252:
            float r1 = (float) r6
            float r7 = (float) r5
        L_0x0254:
            float r1 = r1 / r7
            if (r6 == 0) goto L_0x025a
            float r7 = (float) r6
            float r8 = (float) r5
            goto L_0x025c
        L_0x025a:
            float r7 = (float) r4
            float r8 = (float) r3
        L_0x025c:
            float r7 = r7 / r8
            int r8 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r8 >= 0) goto L_0x0262
            goto L_0x0263
        L_0x0262:
            r1 = r7
        L_0x0263:
            boolean r2 = a((boolean) r2, (int) r3, (int) r5, (int) r4, (int) r6)
            if (r2 == 0) goto L_0x028e
            r0.preScale(r1, r1)
            goto L_0x028e
        L_0x026d:
            if (r4 != 0) goto L_0x0271
            if (r6 == 0) goto L_0x028e
        L_0x0271:
            if (r4 != r3) goto L_0x0275
            if (r6 == r5) goto L_0x028e
        L_0x0275:
            if (r4 == 0) goto L_0x027a
            float r1 = (float) r4
            float r7 = (float) r3
            goto L_0x027c
        L_0x027a:
            float r1 = (float) r6
            float r7 = (float) r5
        L_0x027c:
            float r1 = r1 / r7
            if (r6 == 0) goto L_0x0282
            float r7 = (float) r6
            float r8 = (float) r5
            goto L_0x0284
        L_0x0282:
            float r7 = (float) r4
            float r8 = (float) r3
        L_0x0284:
            float r7 = r7 / r8
            boolean r2 = a((boolean) r2, (int) r3, (int) r5, (int) r4, (int) r6)
            if (r2 == 0) goto L_0x028e
            r0.preScale(r1, r7)
        L_0x028e:
            r7 = r3
            r8 = r5
            r5 = 0
            r6 = 0
        L_0x0292:
            r10 = 1
            r4 = r27
            r9 = r0
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r4, r5, r6, r7, r8, r9, r10)
            r1 = r27
            if (r0 == r1) goto L_0x02a2
            r27.recycle()
            goto L_0x02a3
        L_0x02a2:
            r0 = r1
        L_0x02a3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.a.C1038i.a(c.f.a.G, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }
}
