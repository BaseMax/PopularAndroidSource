package c.e.a.b.h.b;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import b.f.C0243b;
import c.e.a.b.d.d.r;
import c.e.a.b.d.g.e;
import c.e.a.b.d.h.c;
import c.e.a.b.g.f.C0799aa;
import c.e.a.b.g.f.C0803ba;
import c.e.a.b.g.f.C0811da;
import c.e.a.b.g.f.K;
import com.google.android.gms.internal.measurement.zzy;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzm;
import com.google.android.gms.measurement.internal.zzr;
import e.a.a.a.a.b.C1046a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class Tb implements C0967wa {

    /* renamed from: a  reason: collision with root package name */
    public static volatile Tb f10743a;

    /* renamed from: b  reason: collision with root package name */
    public T f10744b;

    /* renamed from: c  reason: collision with root package name */
    public C0969x f10745c;

    /* renamed from: d  reason: collision with root package name */
    public sc f10746d;

    /* renamed from: e  reason: collision with root package name */
    public D f10747e;

    /* renamed from: f  reason: collision with root package name */
    public Pb f10748f;

    /* renamed from: g  reason: collision with root package name */
    public lc f10749g;

    /* renamed from: h  reason: collision with root package name */
    public final Zb f10750h;

    /* renamed from: i  reason: collision with root package name */
    public C0903ab f10751i;

    /* renamed from: j  reason: collision with root package name */
    public final Y f10752j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f10753k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f10754l;
    public boolean m;
    public long n;
    public List<Runnable> o;
    public int p;
    public int q;
    public boolean r;
    public boolean s;
    public boolean t;
    public FileLock u;
    public FileChannel v;
    public List<Long> w;
    public List<Long> x;
    public long y;

    class a implements uc {

        /* renamed from: a  reason: collision with root package name */
        public C0811da f10755a;

        /* renamed from: b  reason: collision with root package name */
        public List<Long> f10756b;

        /* renamed from: c  reason: collision with root package name */
        public List<C0803ba> f10757c;

        /* renamed from: d  reason: collision with root package name */
        public long f10758d;

        public a() {
        }

        public final void a(C0811da daVar) {
            r.a(daVar);
            this.f10755a = daVar;
        }

        public /* synthetic */ a(Tb tb, Ub ub) {
            this();
        }

        public final boolean a(long j2, C0803ba baVar) {
            r.a(baVar);
            if (this.f10757c == null) {
                this.f10757c = new ArrayList();
            }
            if (this.f10756b == null) {
                this.f10756b = new ArrayList();
            }
            if (this.f10757c.size() > 0 && a(this.f10757c.get(0)) != a(baVar)) {
                return false;
            }
            long b2 = this.f10758d + ((long) baVar.b());
            if (b2 >= ((long) Math.max(0, C0931k.w.a(null).intValue()))) {
                return false;
            }
            this.f10758d = b2;
            this.f10757c.add(baVar);
            this.f10756b.add(Long.valueOf(j2));
            if (this.f10757c.size() >= Math.max(1, C0931k.x.a(null).intValue())) {
                return false;
            }
            return true;
        }

        public static long a(C0803ba baVar) {
            return ((baVar.f10346f.longValue() / 1000) / 60) / 60;
        }
    }

    public Tb(Yb yb) {
        this(yb, null);
    }

    public static Tb a(Context context) {
        r.a(context);
        r.a(context.getApplicationContext());
        if (f10743a == null) {
            synchronized (Tb.class) {
                if (f10743a == null) {
                    f10743a = new Tb(new Yb(context));
                }
            }
        }
        return f10743a;
    }

    public final void A() {
        this.q++;
    }

    public final Y B() {
        return this.f10752j;
    }

    public final void C() {
        this.f10752j.d().l();
    }

    public final Context b() {
        return this.f10752j.b();
    }

    public final e c() {
        return this.f10752j.c();
    }

    public final U d() {
        return this.f10752j.d();
    }

    public final C0957t e() {
        return this.f10752j.e();
    }

    public final void f() {
        this.f10752j.d().l();
        l().B();
        if (this.f10752j.j().f10613f.a() == 0) {
            this.f10752j.j().f10613f.a(this.f10752j.c().c());
        }
        v();
    }

    public final r g() {
        return this.f10752j.h();
    }

    public final cc h() {
        return this.f10752j.i();
    }

    public final pc i() {
        return this.f10752j.k();
    }

    public final Zb j() {
        a((Sb) this.f10750h);
        return this.f10750h;
    }

    public final lc k() {
        a((Sb) this.f10749g);
        return this.f10749g;
    }

    public final sc l() {
        a((Sb) this.f10746d);
        return this.f10746d;
    }

    public final T m() {
        a((Sb) this.f10744b);
        return this.f10744b;
    }

    public final C0969x n() {
        a((Sb) this.f10745c);
        return this.f10745c;
    }

    public final D o() {
        D d2 = this.f10747e;
        if (d2 != null) {
            return d2;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final Pb p() {
        a((Sb) this.f10748f);
        return this.f10748f;
    }

    public final C0903ab q() {
        a((Sb) this.f10751i);
        return this.f10751i;
    }

    public final void r() {
        if (!this.f10753k) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    public final long s() {
        long c2 = this.f10752j.c().c();
        F j2 = this.f10752j.j();
        j2.o();
        j2.l();
        long a2 = j2.f10617j.a();
        if (a2 == 0) {
            a2 = 1 + ((long) j2.g().v().nextInt(86400000));
            j2.f10617j.a(a2);
        }
        return ((((c2 + a2) / 1000) / 60) / 60) / 24;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:96|97) */
    /* JADX WARNING: Code restructure failed: missing block: B:97:?, code lost:
        r1.f10752j.e().t().a("Failed to parse upload URL. Not uploading. appId", c.e.a.b.h.b.C0957t.a(r5), r9);
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:96:0x02ca */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void t() {
        /*
            r17 = this;
            r1 = r17
            r17.C()
            r17.r()
            r0 = 1
            r1.t = r0
            r2 = 0
            c.e.a.b.h.b.Y r3 = r1.f10752j     // Catch:{ all -> 0x0306 }
            r3.a()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.Y r3 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.gb r3 = r3.D()     // Catch:{ all -> 0x0306 }
            java.lang.Boolean r3 = r3.J()     // Catch:{ all -> 0x0306 }
            if (r3 != 0) goto L_0x0032
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.t r0 = r0.e()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.v r0 = r0.w()     // Catch:{ all -> 0x0306 }
            java.lang.String r3 = "Upload data called on the client side before use of service was decided"
            r0.a(r3)     // Catch:{ all -> 0x0306 }
            r1.t = r2
            r17.w()
            return
        L_0x0032:
            boolean r3 = r3.booleanValue()     // Catch:{ all -> 0x0306 }
            if (r3 == 0) goto L_0x004d
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.t r0 = r0.e()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.v r0 = r0.t()     // Catch:{ all -> 0x0306 }
            java.lang.String r3 = "Upload called in the client side when service should be used"
            r0.a(r3)     // Catch:{ all -> 0x0306 }
            r1.t = r2
            r17.w()
            return
        L_0x004d:
            long r3 = r1.n     // Catch:{ all -> 0x0306 }
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L_0x005e
            r17.v()     // Catch:{ all -> 0x0306 }
            r1.t = r2
            r17.w()
            return
        L_0x005e:
            r17.C()     // Catch:{ all -> 0x0306 }
            java.util.List<java.lang.Long> r3 = r1.w     // Catch:{ all -> 0x0306 }
            if (r3 == 0) goto L_0x0067
            r3 = 1
            goto L_0x0068
        L_0x0067:
            r3 = 0
        L_0x0068:
            if (r3 == 0) goto L_0x007f
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.t r0 = r0.e()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.v r0 = r0.B()     // Catch:{ all -> 0x0306 }
            java.lang.String r3 = "Uploading requested multiple times"
            r0.a(r3)     // Catch:{ all -> 0x0306 }
            r1.t = r2
            r17.w()
            return
        L_0x007f:
            c.e.a.b.h.b.x r3 = r17.n()     // Catch:{ all -> 0x0306 }
            boolean r3 = r3.v()     // Catch:{ all -> 0x0306 }
            if (r3 != 0) goto L_0x00a1
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.t r0 = r0.e()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.v r0 = r0.B()     // Catch:{ all -> 0x0306 }
            java.lang.String r3 = "Network not connected, ignoring upload request"
            r0.a(r3)     // Catch:{ all -> 0x0306 }
            r17.v()     // Catch:{ all -> 0x0306 }
            r1.t = r2
            r17.w()
            return
        L_0x00a1:
            c.e.a.b.h.b.Y r3 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.d.g.e r3 = r3.c()     // Catch:{ all -> 0x0306 }
            long r3 = r3.c()     // Catch:{ all -> 0x0306 }
            long r7 = c.e.a.b.h.b.pc.t()     // Catch:{ all -> 0x0306 }
            long r7 = r3 - r7
            r9 = 0
            r1.a((java.lang.String) r9, (long) r7)     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.F r7 = r7.j()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.I r7 = r7.f10613f     // Catch:{ all -> 0x0306 }
            long r7 = r7.a()     // Catch:{ all -> 0x0306 }
            int r10 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r10 == 0) goto L_0x00de
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.t r5 = r5.e()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.v r5 = r5.A()     // Catch:{ all -> 0x0306 }
            java.lang.String r6 = "Uploading events. Elapsed time since last upload attempt (ms)"
            long r7 = r3 - r7
            long r7 = java.lang.Math.abs(r7)     // Catch:{ all -> 0x0306 }
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch:{ all -> 0x0306 }
            r5.a(r6, r7)     // Catch:{ all -> 0x0306 }
        L_0x00de:
            c.e.a.b.h.b.sc r5 = r17.l()     // Catch:{ all -> 0x0306 }
            java.lang.String r5 = r5.z()     // Catch:{ all -> 0x0306 }
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch:{ all -> 0x0306 }
            r7 = -1
            if (r6 != 0) goto L_0x02de
            long r10 = r1.y     // Catch:{ all -> 0x0306 }
            int r6 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r6 != 0) goto L_0x00fe
            c.e.a.b.h.b.sc r6 = r17.l()     // Catch:{ all -> 0x0306 }
            long r6 = r6.G()     // Catch:{ all -> 0x0306 }
            r1.y = r6     // Catch:{ all -> 0x0306 }
        L_0x00fe:
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.pc r6 = r6.k()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.k$a<java.lang.Integer> r7 = c.e.a.b.h.b.C0931k.u     // Catch:{ all -> 0x0306 }
            int r6 = r6.b(r5, r7)     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.pc r7 = r7.k()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.k$a<java.lang.Integer> r8 = c.e.a.b.h.b.C0931k.v     // Catch:{ all -> 0x0306 }
            int r7 = r7.b(r5, r8)     // Catch:{ all -> 0x0306 }
            int r7 = java.lang.Math.max(r2, r7)     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.sc r8 = r17.l()     // Catch:{ all -> 0x0306 }
            java.util.List r6 = r8.a((java.lang.String) r5, (int) r6, (int) r7)     // Catch:{ all -> 0x0306 }
            boolean r7 = r6.isEmpty()     // Catch:{ all -> 0x0306 }
            if (r7 != 0) goto L_0x0300
            java.util.Iterator r7 = r6.iterator()     // Catch:{ all -> 0x0306 }
        L_0x012c:
            boolean r8 = r7.hasNext()     // Catch:{ all -> 0x0306 }
            if (r8 == 0) goto L_0x0147
            java.lang.Object r8 = r7.next()     // Catch:{ all -> 0x0306 }
            android.util.Pair r8 = (android.util.Pair) r8     // Catch:{ all -> 0x0306 }
            java.lang.Object r8 = r8.first     // Catch:{ all -> 0x0306 }
            c.e.a.b.g.f.da r8 = (c.e.a.b.g.f.C0811da) r8     // Catch:{ all -> 0x0306 }
            java.lang.String r10 = r8.v     // Catch:{ all -> 0x0306 }
            boolean r10 = android.text.TextUtils.isEmpty(r10)     // Catch:{ all -> 0x0306 }
            if (r10 != 0) goto L_0x012c
            java.lang.String r7 = r8.v     // Catch:{ all -> 0x0306 }
            goto L_0x0148
        L_0x0147:
            r7 = r9
        L_0x0148:
            if (r7 == 0) goto L_0x0173
            r8 = 0
        L_0x014b:
            int r10 = r6.size()     // Catch:{ all -> 0x0306 }
            if (r8 >= r10) goto L_0x0173
            java.lang.Object r10 = r6.get(r8)     // Catch:{ all -> 0x0306 }
            android.util.Pair r10 = (android.util.Pair) r10     // Catch:{ all -> 0x0306 }
            java.lang.Object r10 = r10.first     // Catch:{ all -> 0x0306 }
            c.e.a.b.g.f.da r10 = (c.e.a.b.g.f.C0811da) r10     // Catch:{ all -> 0x0306 }
            java.lang.String r11 = r10.v     // Catch:{ all -> 0x0306 }
            boolean r11 = android.text.TextUtils.isEmpty(r11)     // Catch:{ all -> 0x0306 }
            if (r11 != 0) goto L_0x0170
            java.lang.String r10 = r10.v     // Catch:{ all -> 0x0306 }
            boolean r10 = r10.equals(r7)     // Catch:{ all -> 0x0306 }
            if (r10 != 0) goto L_0x0170
            java.util.List r6 = r6.subList(r2, r8)     // Catch:{ all -> 0x0306 }
            goto L_0x0173
        L_0x0170:
            int r8 = r8 + 1
            goto L_0x014b
        L_0x0173:
            c.e.a.b.g.f.ca r7 = new c.e.a.b.g.f.ca     // Catch:{ all -> 0x0306 }
            r7.<init>()     // Catch:{ all -> 0x0306 }
            int r8 = r6.size()     // Catch:{ all -> 0x0306 }
            c.e.a.b.g.f.da[] r8 = new c.e.a.b.g.f.C0811da[r8]     // Catch:{ all -> 0x0306 }
            r7.f10357c = r8     // Catch:{ all -> 0x0306 }
            java.util.ArrayList r8 = new java.util.ArrayList     // Catch:{ all -> 0x0306 }
            int r10 = r6.size()     // Catch:{ all -> 0x0306 }
            r8.<init>(r10)     // Catch:{ all -> 0x0306 }
            boolean r10 = c.e.a.b.h.b.pc.v()     // Catch:{ all -> 0x0306 }
            if (r10 == 0) goto L_0x019d
            c.e.a.b.h.b.Y r10 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.pc r10 = r10.k()     // Catch:{ all -> 0x0306 }
            boolean r10 = r10.f(r5)     // Catch:{ all -> 0x0306 }
            if (r10 == 0) goto L_0x019d
            r10 = 1
            goto L_0x019e
        L_0x019d:
            r10 = 0
        L_0x019e:
            r11 = 0
        L_0x019f:
            c.e.a.b.g.f.da[] r12 = r7.f10357c     // Catch:{ all -> 0x0306 }
            int r12 = r12.length     // Catch:{ all -> 0x0306 }
            if (r11 >= r12) goto L_0x021f
            c.e.a.b.g.f.da[] r12 = r7.f10357c     // Catch:{ all -> 0x0306 }
            java.lang.Object r13 = r6.get(r11)     // Catch:{ all -> 0x0306 }
            android.util.Pair r13 = (android.util.Pair) r13     // Catch:{ all -> 0x0306 }
            java.lang.Object r13 = r13.first     // Catch:{ all -> 0x0306 }
            c.e.a.b.g.f.da r13 = (c.e.a.b.g.f.C0811da) r13     // Catch:{ all -> 0x0306 }
            r12[r11] = r13     // Catch:{ all -> 0x0306 }
            java.lang.Object r12 = r6.get(r11)     // Catch:{ all -> 0x0306 }
            android.util.Pair r12 = (android.util.Pair) r12     // Catch:{ all -> 0x0306 }
            java.lang.Object r12 = r12.second     // Catch:{ all -> 0x0306 }
            java.lang.Long r12 = (java.lang.Long) r12     // Catch:{ all -> 0x0306 }
            r8.add(r12)     // Catch:{ all -> 0x0306 }
            c.e.a.b.g.f.da[] r12 = r7.f10357c     // Catch:{ all -> 0x0306 }
            r12 = r12[r11]     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.Y r13 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.pc r13 = r13.k()     // Catch:{ all -> 0x0306 }
            long r13 = r13.n()     // Catch:{ all -> 0x0306 }
            java.lang.Long r13 = java.lang.Long.valueOf(r13)     // Catch:{ all -> 0x0306 }
            r12.u = r13     // Catch:{ all -> 0x0306 }
            c.e.a.b.g.f.da[] r12 = r7.f10357c     // Catch:{ all -> 0x0306 }
            r12 = r12[r11]     // Catch:{ all -> 0x0306 }
            java.lang.Long r13 = java.lang.Long.valueOf(r3)     // Catch:{ all -> 0x0306 }
            r12.f10372g = r13     // Catch:{ all -> 0x0306 }
            c.e.a.b.g.f.da[] r12 = r7.f10357c     // Catch:{ all -> 0x0306 }
            r12 = r12[r11]     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.Y r13 = r1.f10752j     // Catch:{ all -> 0x0306 }
            r13.a()     // Catch:{ all -> 0x0306 }
            java.lang.Boolean r13 = java.lang.Boolean.valueOf(r2)     // Catch:{ all -> 0x0306 }
            r12.C = r13     // Catch:{ all -> 0x0306 }
            if (r10 != 0) goto L_0x01f4
            c.e.a.b.g.f.da[] r12 = r7.f10357c     // Catch:{ all -> 0x0306 }
            r12 = r12[r11]     // Catch:{ all -> 0x0306 }
            r12.L = r9     // Catch:{ all -> 0x0306 }
        L_0x01f4:
            c.e.a.b.h.b.Y r12 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.pc r12 = r12.k()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.k$a<java.lang.Boolean> r13 = c.e.a.b.h.b.C0931k.Fa     // Catch:{ all -> 0x0306 }
            boolean r12 = r12.e(r5, r13)     // Catch:{ all -> 0x0306 }
            if (r12 == 0) goto L_0x021c
            c.e.a.b.g.f.da[] r12 = r7.f10357c     // Catch:{ all -> 0x0306 }
            r12 = r12[r11]     // Catch:{ all -> 0x0306 }
            byte[] r12 = c.e.a.b.g.f.Wc.a((c.e.a.b.g.f.Wc) r12)     // Catch:{ all -> 0x0306 }
            c.e.a.b.g.f.da[] r13 = r7.f10357c     // Catch:{ all -> 0x0306 }
            r13 = r13[r11]     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.Zb r14 = r17.j()     // Catch:{ all -> 0x0306 }
            long r14 = r14.a((byte[]) r12)     // Catch:{ all -> 0x0306 }
            java.lang.Long r12 = java.lang.Long.valueOf(r14)     // Catch:{ all -> 0x0306 }
            r13.S = r12     // Catch:{ all -> 0x0306 }
        L_0x021c:
            int r11 = r11 + 1
            goto L_0x019f
        L_0x021f:
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.t r6 = r6.e()     // Catch:{ all -> 0x0306 }
            r10 = 2
            boolean r6 = r6.a((int) r10)     // Catch:{ all -> 0x0306 }
            if (r6 == 0) goto L_0x0235
            c.e.a.b.h.b.Zb r6 = r17.j()     // Catch:{ all -> 0x0306 }
            java.lang.String r6 = r6.b((c.e.a.b.g.f.C0807ca) r7)     // Catch:{ all -> 0x0306 }
            goto L_0x0236
        L_0x0235:
            r6 = r9
        L_0x0236:
            c.e.a.b.h.b.Zb r10 = r17.j()     // Catch:{ all -> 0x0306 }
            byte[] r14 = r10.a((c.e.a.b.g.f.C0807ca) r7)     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.k$a<java.lang.String> r10 = c.e.a.b.h.b.C0931k.E     // Catch:{ all -> 0x0306 }
            java.lang.Object r9 = r10.a(r9)     // Catch:{ all -> 0x0306 }
            java.lang.String r9 = (java.lang.String) r9     // Catch:{ all -> 0x0306 }
            java.net.URL r13 = new java.net.URL     // Catch:{ MalformedURLException -> 0x02ca }
            r13.<init>(r9)     // Catch:{ MalformedURLException -> 0x02ca }
            boolean r10 = r8.isEmpty()     // Catch:{ MalformedURLException -> 0x02ca }
            if (r10 != 0) goto L_0x0253
            r10 = 1
            goto L_0x0254
        L_0x0253:
            r10 = 0
        L_0x0254:
            c.e.a.b.d.d.r.a((boolean) r10)     // Catch:{ MalformedURLException -> 0x02ca }
            java.util.List<java.lang.Long> r10 = r1.w     // Catch:{ MalformedURLException -> 0x02ca }
            if (r10 == 0) goto L_0x026b
            c.e.a.b.h.b.Y r8 = r1.f10752j     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.h.b.t r8 = r8.e()     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.h.b.v r8 = r8.t()     // Catch:{ MalformedURLException -> 0x02ca }
            java.lang.String r10 = "Set uploading progress before finishing the previous upload"
            r8.a(r10)     // Catch:{ MalformedURLException -> 0x02ca }
            goto L_0x0272
        L_0x026b:
            java.util.ArrayList r10 = new java.util.ArrayList     // Catch:{ MalformedURLException -> 0x02ca }
            r10.<init>(r8)     // Catch:{ MalformedURLException -> 0x02ca }
            r1.w = r10     // Catch:{ MalformedURLException -> 0x02ca }
        L_0x0272:
            c.e.a.b.h.b.Y r8 = r1.f10752j     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.h.b.F r8 = r8.j()     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.h.b.I r8 = r8.f10614g     // Catch:{ MalformedURLException -> 0x02ca }
            r8.a(r3)     // Catch:{ MalformedURLException -> 0x02ca }
            java.lang.String r3 = "?"
            c.e.a.b.g.f.da[] r4 = r7.f10357c     // Catch:{ MalformedURLException -> 0x02ca }
            int r4 = r4.length     // Catch:{ MalformedURLException -> 0x02ca }
            if (r4 <= 0) goto L_0x028a
            c.e.a.b.g.f.da[] r3 = r7.f10357c     // Catch:{ MalformedURLException -> 0x02ca }
            r3 = r3[r2]     // Catch:{ MalformedURLException -> 0x02ca }
            java.lang.String r3 = r3.r     // Catch:{ MalformedURLException -> 0x02ca }
        L_0x028a:
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.h.b.v r4 = r4.B()     // Catch:{ MalformedURLException -> 0x02ca }
            java.lang.String r7 = "Uploading data. app, uncompressed size, data"
            int r8 = r14.length     // Catch:{ MalformedURLException -> 0x02ca }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ MalformedURLException -> 0x02ca }
            r4.a(r7, r3, r8, r6)     // Catch:{ MalformedURLException -> 0x02ca }
            r1.s = r0     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.h.b.x r11 = r17.n()     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.h.b.Vb r0 = new c.e.a.b.h.b.Vb     // Catch:{ MalformedURLException -> 0x02ca }
            r0.<init>(r1, r5)     // Catch:{ MalformedURLException -> 0x02ca }
            r11.l()     // Catch:{ MalformedURLException -> 0x02ca }
            r11.s()     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.d.d.r.a(r13)     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.d.d.r.a(r14)     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.d.d.r.a(r0)     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.h.b.U r3 = r11.d()     // Catch:{ MalformedURLException -> 0x02ca }
            c.e.a.b.h.b.C r4 = new c.e.a.b.h.b.C     // Catch:{ MalformedURLException -> 0x02ca }
            r15 = 0
            r10 = r4
            r12 = r5
            r16 = r0
            r10.<init>(r11, r12, r13, r14, r15, r16)     // Catch:{ MalformedURLException -> 0x02ca }
            r3.b((java.lang.Runnable) r4)     // Catch:{ MalformedURLException -> 0x02ca }
            goto L_0x0300
        L_0x02ca:
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.t r0 = r0.e()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.v r0 = r0.t()     // Catch:{ all -> 0x0306 }
            java.lang.String r3 = "Failed to parse upload URL. Not uploading. appId"
            java.lang.Object r4 = c.e.a.b.h.b.C0957t.a((java.lang.String) r5)     // Catch:{ all -> 0x0306 }
            r0.a(r3, r4, r9)     // Catch:{ all -> 0x0306 }
            goto L_0x0300
        L_0x02de:
            r1.y = r7     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b.sc r0 = r17.l()     // Catch:{ all -> 0x0306 }
            long r5 = c.e.a.b.h.b.pc.t()     // Catch:{ all -> 0x0306 }
            long r3 = r3 - r5
            java.lang.String r0 = r0.a((long) r3)     // Catch:{ all -> 0x0306 }
            boolean r3 = android.text.TextUtils.isEmpty(r0)     // Catch:{ all -> 0x0306 }
            if (r3 != 0) goto L_0x0300
            c.e.a.b.h.b.sc r3 = r17.l()     // Catch:{ all -> 0x0306 }
            c.e.a.b.h.b._b r0 = r3.b(r0)     // Catch:{ all -> 0x0306 }
            if (r0 == 0) goto L_0x0300
            r1.a((c.e.a.b.h.b._b) r0)     // Catch:{ all -> 0x0306 }
        L_0x0300:
            r1.t = r2
            r17.w()
            return
        L_0x0306:
            r0 = move-exception
            r1.t = r2
            r17.w()
            goto L_0x030e
        L_0x030d:
            throw r0
        L_0x030e:
            goto L_0x030d
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.Tb.t():void");
    }

    public final boolean u() {
        C();
        r();
        return l().E() || !TextUtils.isEmpty(l().z());
    }

    /* JADX WARNING: Removed duplicated region for block: B:54:0x01a2  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x01c0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void v() {
        /*
            r21 = this;
            r0 = r21
            r21.C()
            r21.r()
            boolean r1 = r21.z()
            if (r1 != 0) goto L_0x001d
            c.e.a.b.h.b.Y r1 = r0.f10752j
            c.e.a.b.h.b.pc r1 = r1.k()
            c.e.a.b.h.b.k$a<java.lang.Boolean> r2 = c.e.a.b.h.b.C0931k.Aa
            boolean r1 = r1.a((c.e.a.b.h.b.C0931k.a<java.lang.Boolean>) r2)
            if (r1 != 0) goto L_0x001d
            return
        L_0x001d:
            long r1 = r0.n
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L_0x0062
            c.e.a.b.h.b.Y r1 = r0.f10752j
            c.e.a.b.d.g.e r1 = r1.c()
            long r1 = r1.a()
            r5 = 3600000(0x36ee80, double:1.7786363E-317)
            long r7 = r0.n
            long r1 = r1 - r7
            long r1 = java.lang.Math.abs(r1)
            long r5 = r5 - r1
            int r1 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r1 <= 0) goto L_0x0060
            c.e.a.b.h.b.Y r1 = r0.f10752j
            c.e.a.b.h.b.t r1 = r1.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.Long r2 = java.lang.Long.valueOf(r5)
            java.lang.String r3 = "Upload has been suspended. Will update scheduling later in approximately ms"
            r1.a(r3, r2)
            c.e.a.b.h.b.D r1 = r21.o()
            r1.a()
            c.e.a.b.h.b.Pb r1 = r21.p()
            r1.v()
            return
        L_0x0060:
            r0.n = r3
        L_0x0062:
            c.e.a.b.h.b.Y r1 = r0.f10752j
            boolean r1 = r1.x()
            if (r1 == 0) goto L_0x026b
            boolean r1 = r21.u()
            if (r1 != 0) goto L_0x0072
            goto L_0x026b
        L_0x0072:
            c.e.a.b.h.b.Y r1 = r0.f10752j
            c.e.a.b.d.g.e r1 = r1.c()
            long r1 = r1.c()
            c.e.a.b.h.b.k$a<java.lang.Long> r5 = c.e.a.b.h.b.C0931k.O
            r6 = 0
            java.lang.Object r5 = r5.a(r6)
            java.lang.Long r5 = (java.lang.Long) r5
            long r7 = r5.longValue()
            long r7 = java.lang.Math.max(r3, r7)
            c.e.a.b.h.b.sc r5 = r21.l()
            boolean r5 = r5.F()
            if (r5 != 0) goto L_0x00a4
            c.e.a.b.h.b.sc r5 = r21.l()
            boolean r5 = r5.A()
            if (r5 == 0) goto L_0x00a2
            goto L_0x00a4
        L_0x00a2:
            r5 = 0
            goto L_0x00a5
        L_0x00a4:
            r5 = 1
        L_0x00a5:
            if (r5 == 0) goto L_0x00e1
            c.e.a.b.h.b.Y r10 = r0.f10752j
            c.e.a.b.h.b.pc r10 = r10.k()
            java.lang.String r10 = r10.u()
            boolean r11 = android.text.TextUtils.isEmpty(r10)
            if (r11 != 0) goto L_0x00d0
            java.lang.String r11 = ".none."
            boolean r10 = r11.equals(r10)
            if (r10 != 0) goto L_0x00d0
            c.e.a.b.h.b.k$a<java.lang.Long> r10 = c.e.a.b.h.b.C0931k.J
            java.lang.Object r10 = r10.a(r6)
            java.lang.Long r10 = (java.lang.Long) r10
            long r10 = r10.longValue()
            long r10 = java.lang.Math.max(r3, r10)
            goto L_0x00f1
        L_0x00d0:
            c.e.a.b.h.b.k$a<java.lang.Long> r10 = c.e.a.b.h.b.C0931k.I
            java.lang.Object r10 = r10.a(r6)
            java.lang.Long r10 = (java.lang.Long) r10
            long r10 = r10.longValue()
            long r10 = java.lang.Math.max(r3, r10)
            goto L_0x00f1
        L_0x00e1:
            c.e.a.b.h.b.k$a<java.lang.Long> r10 = c.e.a.b.h.b.C0931k.H
            java.lang.Object r10 = r10.a(r6)
            java.lang.Long r10 = (java.lang.Long) r10
            long r10 = r10.longValue()
            long r10 = java.lang.Math.max(r3, r10)
        L_0x00f1:
            c.e.a.b.h.b.Y r12 = r0.f10752j
            c.e.a.b.h.b.F r12 = r12.j()
            c.e.a.b.h.b.I r12 = r12.f10613f
            long r12 = r12.a()
            c.e.a.b.h.b.Y r14 = r0.f10752j
            c.e.a.b.h.b.F r14 = r14.j()
            c.e.a.b.h.b.I r14 = r14.f10614g
            long r14 = r14.a()
            c.e.a.b.h.b.sc r16 = r21.l()
            r17 = r10
            long r9 = r16.C()
            c.e.a.b.h.b.sc r11 = r21.l()
            r19 = r7
            long r6 = r11.D()
            long r6 = java.lang.Math.max(r9, r6)
            int r8 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r8 != 0) goto L_0x0128
        L_0x0125:
            r8 = r3
            goto L_0x019e
        L_0x0128:
            long r6 = r6 - r1
            long r6 = java.lang.Math.abs(r6)
            long r6 = r1 - r6
            long r12 = r12 - r1
            long r8 = java.lang.Math.abs(r12)
            long r8 = r1 - r8
            long r14 = r14 - r1
            long r10 = java.lang.Math.abs(r14)
            long r1 = r1 - r10
            long r8 = java.lang.Math.max(r8, r1)
            long r10 = r6 + r19
            if (r5 == 0) goto L_0x014e
            int r5 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r5 <= 0) goto L_0x014e
            long r10 = java.lang.Math.min(r6, r8)
            long r10 = r10 + r17
        L_0x014e:
            c.e.a.b.h.b.Zb r5 = r21.j()
            r12 = r17
            boolean r5 = r5.a((long) r8, (long) r12)
            if (r5 != 0) goto L_0x015c
            long r8 = r8 + r12
            goto L_0x015d
        L_0x015c:
            r8 = r10
        L_0x015d:
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x019e
            int r5 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r5 < 0) goto L_0x019e
            r5 = 0
        L_0x0166:
            r6 = 20
            c.e.a.b.h.b.k$a<java.lang.Integer> r7 = c.e.a.b.h.b.C0931k.Q
            r10 = 0
            java.lang.Object r7 = r7.a(r10)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r11 = 0
            int r7 = java.lang.Math.max(r11, r7)
            int r6 = java.lang.Math.min(r6, r7)
            if (r5 >= r6) goto L_0x0125
            r6 = 1
            long r6 = r6 << r5
            c.e.a.b.h.b.k$a<java.lang.Long> r12 = c.e.a.b.h.b.C0931k.P
            java.lang.Object r12 = r12.a(r10)
            java.lang.Long r12 = (java.lang.Long) r12
            long r12 = r12.longValue()
            long r12 = java.lang.Math.max(r3, r12)
            long r12 = r12 * r6
            long r8 = r8 + r12
            int r6 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            if (r6 <= 0) goto L_0x019b
            goto L_0x019e
        L_0x019b:
            int r5 = r5 + 1
            goto L_0x0166
        L_0x019e:
            int r1 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r1 != 0) goto L_0x01c0
            c.e.a.b.h.b.Y r1 = r0.f10752j
            c.e.a.b.h.b.t r1 = r1.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.String r2 = "Next upload time is 0"
            r1.a(r2)
            c.e.a.b.h.b.D r1 = r21.o()
            r1.a()
            c.e.a.b.h.b.Pb r1 = r21.p()
            r1.v()
            return
        L_0x01c0:
            c.e.a.b.h.b.x r1 = r21.n()
            boolean r1 = r1.v()
            if (r1 != 0) goto L_0x01e8
            c.e.a.b.h.b.Y r1 = r0.f10752j
            c.e.a.b.h.b.t r1 = r1.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.String r2 = "No network"
            r1.a(r2)
            c.e.a.b.h.b.D r1 = r21.o()
            r1.b()
            c.e.a.b.h.b.Pb r1 = r21.p()
            r1.v()
            return
        L_0x01e8:
            c.e.a.b.h.b.Y r1 = r0.f10752j
            c.e.a.b.h.b.F r1 = r1.j()
            c.e.a.b.h.b.I r1 = r1.f10615h
            long r1 = r1.a()
            c.e.a.b.h.b.k$a<java.lang.Long> r5 = c.e.a.b.h.b.C0931k.F
            r6 = 0
            java.lang.Object r5 = r5.a(r6)
            java.lang.Long r5 = (java.lang.Long) r5
            long r5 = r5.longValue()
            long r5 = java.lang.Math.max(r3, r5)
            c.e.a.b.h.b.Zb r7 = r21.j()
            boolean r7 = r7.a((long) r1, (long) r5)
            if (r7 != 0) goto L_0x0214
            long r1 = r1 + r5
            long r8 = java.lang.Math.max(r8, r1)
        L_0x0214:
            c.e.a.b.h.b.D r1 = r21.o()
            r1.a()
            c.e.a.b.h.b.Y r1 = r0.f10752j
            c.e.a.b.d.g.e r1 = r1.c()
            long r1 = r1.c()
            long r8 = r8 - r1
            int r1 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r1 > 0) goto L_0x0250
            c.e.a.b.h.b.k$a<java.lang.Long> r1 = c.e.a.b.h.b.C0931k.K
            r2 = 0
            java.lang.Object r1 = r1.a(r2)
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            long r8 = java.lang.Math.max(r3, r1)
            c.e.a.b.h.b.Y r1 = r0.f10752j
            c.e.a.b.h.b.F r1 = r1.j()
            c.e.a.b.h.b.I r1 = r1.f10613f
            c.e.a.b.h.b.Y r2 = r0.f10752j
            c.e.a.b.d.g.e r2 = r2.c()
            long r2 = r2.c()
            r1.a(r2)
        L_0x0250:
            c.e.a.b.h.b.Y r1 = r0.f10752j
            c.e.a.b.h.b.t r1 = r1.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.Long r2 = java.lang.Long.valueOf(r8)
            java.lang.String r3 = "Upload scheduled in approximately ms"
            r1.a(r3, r2)
            c.e.a.b.h.b.Pb r1 = r21.p()
            r1.a(r8)
            return
        L_0x026b:
            c.e.a.b.h.b.Y r1 = r0.f10752j
            c.e.a.b.h.b.t r1 = r1.e()
            c.e.a.b.h.b.v r1 = r1.B()
            java.lang.String r2 = "Nothing to upload or uploading impossible"
            r1.a(r2)
            c.e.a.b.h.b.D r1 = r21.o()
            r1.a()
            c.e.a.b.h.b.Pb r1 = r21.p()
            r1.v()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.Tb.v():void");
    }

    public final void w() {
        C();
        if (this.r || this.s || this.t) {
            this.f10752j.e().B().a("Not stopping services. fetch, network, upload", Boolean.valueOf(this.r), Boolean.valueOf(this.s), Boolean.valueOf(this.t));
            return;
        }
        this.f10752j.e().B().a("Stopping uploading service(s)");
        List<Runnable> list = this.o;
        if (list != null) {
            for (Runnable run : list) {
                run.run();
            }
            this.o.clear();
        }
    }

    public final boolean x() {
        C();
        try {
            this.v = new RandomAccessFile(new File(this.f10752j.b().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.u = this.v.tryLock();
            if (this.u != null) {
                this.f10752j.e().B().a("Storage concurrent access okay");
                return true;
            }
            this.f10752j.e().t().a("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e2) {
            this.f10752j.e().t().a("Failed to acquire storage lock", e2);
        } catch (IOException e3) {
            this.f10752j.e().t().a("Failed to access storage lock file", e3);
        }
    }

    public final void y() {
        C();
        r();
        if (!this.m) {
            this.m = true;
            C();
            r();
            if ((this.f10752j.k().a(C0931k.Aa) || z()) && x()) {
                int a2 = a(this.v);
                int F = this.f10752j.C().F();
                C();
                if (a2 > F) {
                    this.f10752j.e().t().a("Panic: can't downgrade version. Previous, current version", Integer.valueOf(a2), Integer.valueOf(F));
                } else if (a2 < F) {
                    if (a(F, this.v)) {
                        this.f10752j.e().B().a("Storage version upgraded. Previous, current version", Integer.valueOf(a2), Integer.valueOf(F));
                    } else {
                        this.f10752j.e().t().a("Storage version upgrade failed. Previous, current version", Integer.valueOf(a2), Integer.valueOf(F));
                    }
                }
            }
        }
        if (!this.f10754l && !this.f10752j.k().a(C0931k.Aa)) {
            this.f10752j.e().z().a("This instance being marked as an uploader");
            this.f10754l = true;
            v();
        }
    }

    public final boolean z() {
        C();
        r();
        return this.f10754l;
    }

    public Tb(Yb yb, Y y2) {
        this.f10753k = false;
        r.a(yb);
        this.f10752j = Y.a(yb.f10805a, (zzy) null);
        this.y = -1;
        Zb zb = new Zb(this);
        zb.t();
        this.f10750h = zb;
        C0969x xVar = new C0969x(this);
        xVar.t();
        this.f10745c = xVar;
        T t2 = new T(this);
        t2.t();
        this.f10744b = t2;
        this.f10752j.d().a((Runnable) new Ub(this, yb));
    }

    public final void b(zzm zzm) {
        C();
        r();
        r.b(zzm.f13244a);
        d(zzm);
    }

    /* JADX WARNING: Removed duplicated region for block: B:149:0x04b2 A[Catch:{ SQLiteException -> 0x01e2, all -> 0x04de }] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0147 A[Catch:{ SQLiteException -> 0x01e2, all -> 0x04de }] */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x01f7 A[Catch:{ SQLiteException -> 0x01e2, all -> 0x04de }] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0266 A[Catch:{ SQLiteException -> 0x01e2, all -> 0x04de }] */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0273 A[Catch:{ SQLiteException -> 0x01e2, all -> 0x04de }] */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0285 A[Catch:{ SQLiteException -> 0x01e2, all -> 0x04de }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void c(com.google.android.gms.measurement.internal.zzm r23) {
        /*
            r22 = this;
            r1 = r22
            r2 = r23
            java.lang.String r3 = "_sysu"
            java.lang.String r4 = "_sys"
            java.lang.String r5 = "_pfo"
            java.lang.String r6 = "_uwa"
            java.lang.String r0 = "app_id=?"
            r22.C()
            r22.r()
            c.e.a.b.d.d.r.a(r23)
            java.lang.String r7 = r2.f13244a
            c.e.a.b.d.d.r.b((java.lang.String) r7)
            java.lang.String r7 = r2.f13245b
            boolean r7 = android.text.TextUtils.isEmpty(r7)
            if (r7 == 0) goto L_0x002d
            java.lang.String r7 = r2.r
            boolean r7 = android.text.TextUtils.isEmpty(r7)
            if (r7 == 0) goto L_0x002d
            return
        L_0x002d:
            c.e.a.b.h.b.sc r7 = r22.l()
            java.lang.String r8 = r2.f13244a
            c.e.a.b.h.b._b r7 = r7.b(r8)
            r8 = 0
            if (r7 == 0) goto L_0x0060
            java.lang.String r10 = r7.c()
            boolean r10 = android.text.TextUtils.isEmpty(r10)
            if (r10 == 0) goto L_0x0060
            java.lang.String r10 = r2.f13245b
            boolean r10 = android.text.TextUtils.isEmpty(r10)
            if (r10 != 0) goto L_0x0060
            r7.h((long) r8)
            c.e.a.b.h.b.sc r10 = r22.l()
            r10.a((c.e.a.b.h.b._b) r7)
            c.e.a.b.h.b.T r7 = r22.m()
            java.lang.String r10 = r2.f13244a
            r7.e(r10)
        L_0x0060:
            boolean r7 = r2.f13251h
            if (r7 != 0) goto L_0x0068
            r22.d(r23)
            return
        L_0x0068:
            long r10 = r2.m
            int r7 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r7 != 0) goto L_0x0078
            c.e.a.b.h.b.Y r7 = r1.f10752j
            c.e.a.b.d.g.e r7 = r7.c()
            long r10 = r7.c()
        L_0x0078:
            c.e.a.b.h.b.Y r7 = r1.f10752j
            c.e.a.b.h.b.pc r7 = r7.k()
            java.lang.String r12 = r2.f13244a
            c.e.a.b.h.b.k$a<java.lang.Boolean> r13 = c.e.a.b.h.b.C0931k.ya
            boolean r7 = r7.e(r12, r13)
            if (r7 == 0) goto L_0x0091
            c.e.a.b.h.b.Y r7 = r1.f10752j
            c.e.a.b.h.b.e r7 = r7.H()
            r7.w()
        L_0x0091:
            int r7 = r2.n
            r15 = 1
            if (r7 == 0) goto L_0x00b2
            if (r7 == r15) goto L_0x00b2
            c.e.a.b.h.b.Y r12 = r1.f10752j
            c.e.a.b.h.b.t r12 = r12.e()
            c.e.a.b.h.b.v r12 = r12.w()
            java.lang.String r13 = r2.f13244a
            java.lang.Object r13 = c.e.a.b.h.b.C0957t.a((java.lang.String) r13)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            java.lang.String r14 = "Incorrect app type, assuming installed app. appId, appType"
            r12.a(r14, r13, r7)
            r7 = 0
        L_0x00b2:
            c.e.a.b.h.b.sc r12 = r22.l()
            r12.v()
            c.e.a.b.h.b.Y r12 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.pc r12 = r12.k()     // Catch:{ all -> 0x04de }
            java.lang.String r13 = r2.f13244a     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.k$a<java.lang.Boolean> r14 = c.e.a.b.h.b.C0931k.ya     // Catch:{ all -> 0x04de }
            boolean r12 = r12.e(r13, r14)     // Catch:{ all -> 0x04de }
            if (r12 == 0) goto L_0x0137
            c.e.a.b.h.b.sc r12 = r22.l()     // Catch:{ all -> 0x04de }
            java.lang.String r13 = r2.f13244a     // Catch:{ all -> 0x04de }
            java.lang.String r14 = "_npa"
            c.e.a.b.h.b.bc r14 = r12.d(r13, r14)     // Catch:{ all -> 0x04de }
            if (r14 == 0) goto L_0x00e1
            java.lang.String r12 = "auto"
            java.lang.String r13 = r14.f10831b     // Catch:{ all -> 0x04de }
            boolean r12 = r12.equals(r13)     // Catch:{ all -> 0x04de }
            if (r12 == 0) goto L_0x0137
        L_0x00e1:
            java.lang.Boolean r12 = r2.s     // Catch:{ all -> 0x04de }
            if (r12 == 0) goto L_0x011f
            com.google.android.gms.measurement.internal.zzga r13 = new com.google.android.gms.measurement.internal.zzga     // Catch:{ all -> 0x04de }
            java.lang.String r19 = "_npa"
            java.lang.Boolean r12 = r2.s     // Catch:{ all -> 0x04de }
            boolean r12 = r12.booleanValue()     // Catch:{ all -> 0x04de }
            if (r12 == 0) goto L_0x00f4
            r20 = 1
            goto L_0x00f6
        L_0x00f4:
            r20 = r8
        L_0x00f6:
            java.lang.Long r20 = java.lang.Long.valueOf(r20)     // Catch:{ all -> 0x04de }
            java.lang.String r21 = "auto"
            r12 = r13
            r9 = r3
            r18 = r4
            r8 = r13
            r3 = 1
            r13 = r19
            r3 = r14
            r4 = 1
            r14 = r10
            r16 = r20
            r17 = r21
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x04de }
            if (r3 == 0) goto L_0x011b
            java.lang.Object r3 = r3.f10834e     // Catch:{ all -> 0x04de }
            java.lang.Long r12 = r8.f13239d     // Catch:{ all -> 0x04de }
            boolean r3 = r3.equals(r12)     // Catch:{ all -> 0x04de }
            if (r3 != 0) goto L_0x013b
        L_0x011b:
            r1.a((com.google.android.gms.measurement.internal.zzga) r8, (com.google.android.gms.measurement.internal.zzm) r2)     // Catch:{ all -> 0x04de }
            goto L_0x013b
        L_0x011f:
            r9 = r3
            r18 = r4
            r3 = r14
            r4 = 1
            if (r3 == 0) goto L_0x013b
            com.google.android.gms.measurement.internal.zzga r3 = new com.google.android.gms.measurement.internal.zzga     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "_npa"
            r16 = 0
            java.lang.String r17 = "auto"
            r12 = r3
            r14 = r10
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x04de }
            r1.b((com.google.android.gms.measurement.internal.zzga) r3, (com.google.android.gms.measurement.internal.zzm) r2)     // Catch:{ all -> 0x04de }
            goto L_0x013b
        L_0x0137:
            r9 = r3
            r18 = r4
            r4 = 1
        L_0x013b:
            c.e.a.b.h.b.sc r3 = r22.l()     // Catch:{ all -> 0x04de }
            java.lang.String r8 = r2.f13244a     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b._b r3 = r3.b(r8)     // Catch:{ all -> 0x04de }
            if (r3 == 0) goto L_0x01f5
            c.e.a.b.h.b.Y r12 = r1.f10752j     // Catch:{ all -> 0x04de }
            r12.i()     // Catch:{ all -> 0x04de }
            java.lang.String r12 = r2.f13245b     // Catch:{ all -> 0x04de }
            java.lang.String r13 = r3.c()     // Catch:{ all -> 0x04de }
            java.lang.String r14 = r2.r     // Catch:{ all -> 0x04de }
            java.lang.String r15 = r3.g()     // Catch:{ all -> 0x04de }
            boolean r12 = c.e.a.b.h.b.cc.a((java.lang.String) r12, (java.lang.String) r13, (java.lang.String) r14, (java.lang.String) r15)     // Catch:{ all -> 0x04de }
            if (r12 == 0) goto L_0x01f5
            c.e.a.b.h.b.Y r12 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.t r12 = r12.e()     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.v r12 = r12.w()     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "New GMP App Id passed in. Removing cached database data. appId"
            java.lang.String r14 = r3.f()     // Catch:{ all -> 0x04de }
            java.lang.Object r14 = c.e.a.b.h.b.C0957t.a((java.lang.String) r14)     // Catch:{ all -> 0x04de }
            r12.a(r13, r14)     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.sc r12 = r22.l()     // Catch:{ all -> 0x04de }
            java.lang.String r3 = r3.f()     // Catch:{ all -> 0x04de }
            r12.s()     // Catch:{ all -> 0x04de }
            r12.l()     // Catch:{ all -> 0x04de }
            c.e.a.b.d.d.r.b((java.lang.String) r3)     // Catch:{ all -> 0x04de }
            android.database.sqlite.SQLiteDatabase r13 = r12.x()     // Catch:{ SQLiteException -> 0x01e2 }
            java.lang.String[] r14 = new java.lang.String[r4]     // Catch:{ SQLiteException -> 0x01e2 }
            r15 = 0
            r14[r15] = r3     // Catch:{ SQLiteException -> 0x01e2 }
            java.lang.String r8 = "events"
            int r8 = r13.delete(r8, r0, r14)     // Catch:{ SQLiteException -> 0x01e2 }
            int r8 = r8 + r15
            java.lang.String r15 = "user_attributes"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01e2 }
            int r8 = r8 + r15
            java.lang.String r15 = "conditional_properties"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01e2 }
            int r8 = r8 + r15
            java.lang.String r15 = "apps"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01e2 }
            int r8 = r8 + r15
            java.lang.String r15 = "raw_events"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01e2 }
            int r8 = r8 + r15
            java.lang.String r15 = "raw_events_metadata"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01e2 }
            int r8 = r8 + r15
            java.lang.String r15 = "event_filters"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01e2 }
            int r8 = r8 + r15
            java.lang.String r15 = "property_filters"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01e2 }
            int r8 = r8 + r15
            java.lang.String r15 = "audience_filter_values"
            int r0 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01e2 }
            int r8 = r8 + r0
            if (r8 <= 0) goto L_0x01f4
            c.e.a.b.h.b.t r0 = r12.e()     // Catch:{ SQLiteException -> 0x01e2 }
            c.e.a.b.h.b.v r0 = r0.B()     // Catch:{ SQLiteException -> 0x01e2 }
            java.lang.String r13 = "Deleted application data. app, records"
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ SQLiteException -> 0x01e2 }
            r0.a(r13, r3, r8)     // Catch:{ SQLiteException -> 0x01e2 }
            goto L_0x01f4
        L_0x01e2:
            r0 = move-exception
            c.e.a.b.h.b.t r8 = r12.e()     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.v r8 = r8.t()     // Catch:{ all -> 0x04de }
            java.lang.String r12 = "Error deleting application data. appId, error"
            java.lang.Object r3 = c.e.a.b.h.b.C0957t.a((java.lang.String) r3)     // Catch:{ all -> 0x04de }
            r8.a(r12, r3, r0)     // Catch:{ all -> 0x04de }
        L_0x01f4:
            r3 = 0
        L_0x01f5:
            if (r3 == 0) goto L_0x0261
            long r12 = r3.l()     // Catch:{ all -> 0x04de }
            r14 = -2147483648(0xffffffff80000000, double:NaN)
            java.lang.String r0 = "_pv"
            int r8 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r8 == 0) goto L_0x022f
            long r12 = r3.l()     // Catch:{ all -> 0x04de }
            long r14 = r2.f13253j     // Catch:{ all -> 0x04de }
            int r8 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r8 == 0) goto L_0x0261
            android.os.Bundle r8 = new android.os.Bundle     // Catch:{ all -> 0x04de }
            r8.<init>()     // Catch:{ all -> 0x04de }
            java.lang.String r3 = r3.k()     // Catch:{ all -> 0x04de }
            r8.putString(r0, r3)     // Catch:{ all -> 0x04de }
            com.google.android.gms.measurement.internal.zzaj r0 = new com.google.android.gms.measurement.internal.zzaj     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "_au"
            com.google.android.gms.measurement.internal.zzag r14 = new com.google.android.gms.measurement.internal.zzag     // Catch:{ all -> 0x04de }
            r14.<init>(r8)     // Catch:{ all -> 0x04de }
            java.lang.String r15 = "auto"
            r12 = r0
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x04de }
            r1.a((com.google.android.gms.measurement.internal.zzaj) r0, (com.google.android.gms.measurement.internal.zzm) r2)     // Catch:{ all -> 0x04de }
            goto L_0x0261
        L_0x022f:
            java.lang.String r8 = r3.k()     // Catch:{ all -> 0x04de }
            if (r8 == 0) goto L_0x0261
            java.lang.String r8 = r3.k()     // Catch:{ all -> 0x04de }
            java.lang.String r12 = r2.f13246c     // Catch:{ all -> 0x04de }
            boolean r8 = r8.equals(r12)     // Catch:{ all -> 0x04de }
            if (r8 != 0) goto L_0x0261
            android.os.Bundle r8 = new android.os.Bundle     // Catch:{ all -> 0x04de }
            r8.<init>()     // Catch:{ all -> 0x04de }
            java.lang.String r3 = r3.k()     // Catch:{ all -> 0x04de }
            r8.putString(r0, r3)     // Catch:{ all -> 0x04de }
            com.google.android.gms.measurement.internal.zzaj r0 = new com.google.android.gms.measurement.internal.zzaj     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "_au"
            com.google.android.gms.measurement.internal.zzag r14 = new com.google.android.gms.measurement.internal.zzag     // Catch:{ all -> 0x04de }
            r14.<init>(r8)     // Catch:{ all -> 0x04de }
            java.lang.String r15 = "auto"
            r12 = r0
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x04de }
            r1.a((com.google.android.gms.measurement.internal.zzaj) r0, (com.google.android.gms.measurement.internal.zzm) r2)     // Catch:{ all -> 0x04de }
        L_0x0261:
            r22.d(r23)     // Catch:{ all -> 0x04de }
            if (r7 != 0) goto L_0x0273
            c.e.a.b.h.b.sc r0 = r22.l()     // Catch:{ all -> 0x04de }
            java.lang.String r3 = r2.f13244a     // Catch:{ all -> 0x04de }
            java.lang.String r8 = "_f"
            c.e.a.b.h.b.g r8 = r0.b((java.lang.String) r3, (java.lang.String) r8)     // Catch:{ all -> 0x04de }
            goto L_0x0283
        L_0x0273:
            if (r7 != r4) goto L_0x0282
            c.e.a.b.h.b.sc r0 = r22.l()     // Catch:{ all -> 0x04de }
            java.lang.String r3 = r2.f13244a     // Catch:{ all -> 0x04de }
            java.lang.String r8 = "_v"
            c.e.a.b.h.b.g r8 = r0.b((java.lang.String) r3, (java.lang.String) r8)     // Catch:{ all -> 0x04de }
            goto L_0x0283
        L_0x0282:
            r8 = 0
        L_0x0283:
            if (r8 != 0) goto L_0x04b2
            r12 = 3600000(0x36ee80, double:1.7786363E-317)
            long r14 = r10 / r12
            r16 = 1
            long r14 = r14 + r16
            long r14 = r14 * r12
            java.lang.String r0 = "_r"
            java.lang.String r3 = "_c"
            java.lang.String r8 = "_et"
            if (r7 != 0) goto L_0x0407
            com.google.android.gms.measurement.internal.zzga r7 = new com.google.android.gms.measurement.internal.zzga     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "_fot"
            java.lang.Long r16 = java.lang.Long.valueOf(r14)     // Catch:{ all -> 0x04de }
            java.lang.String r17 = "auto"
            r12 = r7
            r14 = r10
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x04de }
            r1.a((com.google.android.gms.measurement.internal.zzga) r7, (com.google.android.gms.measurement.internal.zzm) r2)     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.pc r7 = r7.k()     // Catch:{ all -> 0x04de }
            java.lang.String r12 = r2.f13245b     // Catch:{ all -> 0x04de }
            boolean r7 = r7.r(r12)     // Catch:{ all -> 0x04de }
            if (r7 == 0) goto L_0x02c6
            r22.C()     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.L r7 = r7.n()     // Catch:{ all -> 0x04de }
            java.lang.String r12 = r2.f13244a     // Catch:{ all -> 0x04de }
            r7.a(r12)     // Catch:{ all -> 0x04de }
        L_0x02c6:
            r22.C()     // Catch:{ all -> 0x04de }
            r22.r()     // Catch:{ all -> 0x04de }
            android.os.Bundle r7 = new android.os.Bundle     // Catch:{ all -> 0x04de }
            r7.<init>()     // Catch:{ all -> 0x04de }
            r12 = 1
            r7.putLong(r3, r12)     // Catch:{ all -> 0x04de }
            r7.putLong(r0, r12)     // Catch:{ all -> 0x04de }
            r12 = 0
            r7.putLong(r6, r12)     // Catch:{ all -> 0x04de }
            r7.putLong(r5, r12)     // Catch:{ all -> 0x04de }
            r3 = r18
            r7.putLong(r3, r12)     // Catch:{ all -> 0x04de }
            r7.putLong(r9, r12)     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.pc r0 = r0.k()     // Catch:{ all -> 0x04de }
            java.lang.String r12 = r2.f13244a     // Catch:{ all -> 0x04de }
            boolean r0 = r0.c(r12)     // Catch:{ all -> 0x04de }
            if (r0 == 0) goto L_0x02fc
            r12 = 1
            r7.putLong(r8, r12)     // Catch:{ all -> 0x04de }
        L_0x02fc:
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.pc r0 = r0.k()     // Catch:{ all -> 0x04de }
            java.lang.String r12 = r2.f13244a     // Catch:{ all -> 0x04de }
            boolean r0 = r0.n(r12)     // Catch:{ all -> 0x04de }
            if (r0 == 0) goto L_0x0315
            boolean r0 = r2.q     // Catch:{ all -> 0x04de }
            if (r0 == 0) goto L_0x0315
            java.lang.String r0 = "_dac"
            r12 = 1
            r7.putLong(r0, r12)     // Catch:{ all -> 0x04de }
        L_0x0315:
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x04de }
            android.content.Context r0 = r0.b()     // Catch:{ all -> 0x04de }
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch:{ all -> 0x04de }
            if (r0 != 0) goto L_0x0338
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.t r0 = r0.e()     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.v r0 = r0.t()     // Catch:{ all -> 0x04de }
            java.lang.String r3 = "PackageManager is null, first open report might be inaccurate. appId"
            java.lang.String r4 = r2.f13244a     // Catch:{ all -> 0x04de }
            java.lang.Object r4 = c.e.a.b.h.b.C0957t.a((java.lang.String) r4)     // Catch:{ all -> 0x04de }
            r0.a(r3, r4)     // Catch:{ all -> 0x04de }
            goto L_0x03d4
        L_0x0338:
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ NameNotFoundException -> 0x034a }
            android.content.Context r0 = r0.b()     // Catch:{ NameNotFoundException -> 0x034a }
            c.e.a.b.d.h.b r0 = c.e.a.b.d.h.c.a(r0)     // Catch:{ NameNotFoundException -> 0x034a }
            java.lang.String r12 = r2.f13244a     // Catch:{ NameNotFoundException -> 0x034a }
            r13 = 0
            android.content.pm.PackageInfo r0 = r0.b(r12, r13)     // Catch:{ NameNotFoundException -> 0x034a }
            goto L_0x0361
        L_0x034a:
            r0 = move-exception
            c.e.a.b.h.b.Y r12 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.t r12 = r12.e()     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.v r12 = r12.t()     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "Package info is null, first open report might be inaccurate. appId"
            java.lang.String r14 = r2.f13244a     // Catch:{ all -> 0x04de }
            java.lang.Object r14 = c.e.a.b.h.b.C0957t.a((java.lang.String) r14)     // Catch:{ all -> 0x04de }
            r12.a(r13, r14, r0)     // Catch:{ all -> 0x04de }
            r0 = 0
        L_0x0361:
            if (r0 == 0) goto L_0x0394
            long r12 = r0.firstInstallTime     // Catch:{ all -> 0x04de }
            r14 = 0
            int r16 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r16 == 0) goto L_0x0394
            long r12 = r0.firstInstallTime     // Catch:{ all -> 0x04de }
            long r14 = r0.lastUpdateTime     // Catch:{ all -> 0x04de }
            int r0 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r0 == 0) goto L_0x037a
            r12 = 1
            r7.putLong(r6, r12)     // Catch:{ all -> 0x04de }
            r0 = 0
            goto L_0x037b
        L_0x037a:
            r0 = 1
        L_0x037b:
            com.google.android.gms.measurement.internal.zzga r6 = new com.google.android.gms.measurement.internal.zzga     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "_fi"
            if (r0 == 0) goto L_0x0384
            r14 = 1
            goto L_0x0386
        L_0x0384:
            r14 = 0
        L_0x0386:
            java.lang.Long r16 = java.lang.Long.valueOf(r14)     // Catch:{ all -> 0x04de }
            java.lang.String r17 = "auto"
            r12 = r6
            r14 = r10
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x04de }
            r1.a((com.google.android.gms.measurement.internal.zzga) r6, (com.google.android.gms.measurement.internal.zzm) r2)     // Catch:{ all -> 0x04de }
        L_0x0394:
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ NameNotFoundException -> 0x03a6 }
            android.content.Context r0 = r0.b()     // Catch:{ NameNotFoundException -> 0x03a6 }
            c.e.a.b.d.h.b r0 = c.e.a.b.d.h.c.a(r0)     // Catch:{ NameNotFoundException -> 0x03a6 }
            java.lang.String r6 = r2.f13244a     // Catch:{ NameNotFoundException -> 0x03a6 }
            r12 = 0
            android.content.pm.ApplicationInfo r0 = r0.a((java.lang.String) r6, (int) r12)     // Catch:{ NameNotFoundException -> 0x03a6 }
            goto L_0x03bd
        L_0x03a6:
            r0 = move-exception
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.t r6 = r6.e()     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.v r6 = r6.t()     // Catch:{ all -> 0x04de }
            java.lang.String r12 = "Application info is null, first open report might be inaccurate. appId"
            java.lang.String r13 = r2.f13244a     // Catch:{ all -> 0x04de }
            java.lang.Object r13 = c.e.a.b.h.b.C0957t.a((java.lang.String) r13)     // Catch:{ all -> 0x04de }
            r6.a(r12, r13, r0)     // Catch:{ all -> 0x04de }
            r0 = 0
        L_0x03bd:
            if (r0 == 0) goto L_0x03d4
            int r6 = r0.flags     // Catch:{ all -> 0x04de }
            r4 = r4 & r6
            if (r4 == 0) goto L_0x03c9
            r12 = 1
            r7.putLong(r3, r12)     // Catch:{ all -> 0x04de }
        L_0x03c9:
            int r0 = r0.flags     // Catch:{ all -> 0x04de }
            r0 = r0 & 128(0x80, float:1.794E-43)
            if (r0 == 0) goto L_0x03d4
            r3 = 1
            r7.putLong(r9, r3)     // Catch:{ all -> 0x04de }
        L_0x03d4:
            c.e.a.b.h.b.sc r0 = r22.l()     // Catch:{ all -> 0x04de }
            java.lang.String r3 = r2.f13244a     // Catch:{ all -> 0x04de }
            c.e.a.b.d.d.r.b((java.lang.String) r3)     // Catch:{ all -> 0x04de }
            r0.l()     // Catch:{ all -> 0x04de }
            r0.s()     // Catch:{ all -> 0x04de }
            java.lang.String r4 = "first_open_count"
            long r3 = r0.i(r3, r4)     // Catch:{ all -> 0x04de }
            r12 = 0
            int r0 = (r3 > r12 ? 1 : (r3 == r12 ? 0 : -1))
            if (r0 < 0) goto L_0x03f2
            r7.putLong(r5, r3)     // Catch:{ all -> 0x04de }
        L_0x03f2:
            com.google.android.gms.measurement.internal.zzaj r0 = new com.google.android.gms.measurement.internal.zzaj     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "_f"
            com.google.android.gms.measurement.internal.zzag r14 = new com.google.android.gms.measurement.internal.zzag     // Catch:{ all -> 0x04de }
            r14.<init>(r7)     // Catch:{ all -> 0x04de }
            java.lang.String r15 = "auto"
            r12 = r0
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x04de }
            r1.a((com.google.android.gms.measurement.internal.zzaj) r0, (com.google.android.gms.measurement.internal.zzm) r2)     // Catch:{ all -> 0x04de }
            goto L_0x046e
        L_0x0407:
            if (r7 != r4) goto L_0x046e
            com.google.android.gms.measurement.internal.zzga r4 = new com.google.android.gms.measurement.internal.zzga     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "_fvt"
            java.lang.Long r16 = java.lang.Long.valueOf(r14)     // Catch:{ all -> 0x04de }
            java.lang.String r17 = "auto"
            r12 = r4
            r14 = r10
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x04de }
            r1.a((com.google.android.gms.measurement.internal.zzga) r4, (com.google.android.gms.measurement.internal.zzm) r2)     // Catch:{ all -> 0x04de }
            r22.C()     // Catch:{ all -> 0x04de }
            r22.r()     // Catch:{ all -> 0x04de }
            android.os.Bundle r4 = new android.os.Bundle     // Catch:{ all -> 0x04de }
            r4.<init>()     // Catch:{ all -> 0x04de }
            r5 = 1
            r4.putLong(r3, r5)     // Catch:{ all -> 0x04de }
            r4.putLong(r0, r5)     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.pc r0 = r0.k()     // Catch:{ all -> 0x04de }
            java.lang.String r3 = r2.f13244a     // Catch:{ all -> 0x04de }
            boolean r0 = r0.c(r3)     // Catch:{ all -> 0x04de }
            if (r0 == 0) goto L_0x0441
            r5 = 1
            r4.putLong(r8, r5)     // Catch:{ all -> 0x04de }
        L_0x0441:
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.pc r0 = r0.k()     // Catch:{ all -> 0x04de }
            java.lang.String r3 = r2.f13244a     // Catch:{ all -> 0x04de }
            boolean r0 = r0.n(r3)     // Catch:{ all -> 0x04de }
            if (r0 == 0) goto L_0x045a
            boolean r0 = r2.q     // Catch:{ all -> 0x04de }
            if (r0 == 0) goto L_0x045a
            java.lang.String r0 = "_dac"
            r5 = 1
            r4.putLong(r0, r5)     // Catch:{ all -> 0x04de }
        L_0x045a:
            com.google.android.gms.measurement.internal.zzaj r0 = new com.google.android.gms.measurement.internal.zzaj     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "_v"
            com.google.android.gms.measurement.internal.zzag r14 = new com.google.android.gms.measurement.internal.zzag     // Catch:{ all -> 0x04de }
            r14.<init>(r4)     // Catch:{ all -> 0x04de }
            java.lang.String r15 = "auto"
            r12 = r0
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x04de }
            r1.a((com.google.android.gms.measurement.internal.zzaj) r0, (com.google.android.gms.measurement.internal.zzm) r2)     // Catch:{ all -> 0x04de }
        L_0x046e:
            c.e.a.b.h.b.Y r0 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.pc r0 = r0.k()     // Catch:{ all -> 0x04de }
            java.lang.String r3 = r2.f13244a     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.k$a<java.lang.Boolean> r4 = c.e.a.b.h.b.C0931k.xa     // Catch:{ all -> 0x04de }
            boolean r0 = r0.e(r3, r4)     // Catch:{ all -> 0x04de }
            if (r0 != 0) goto L_0x04cf
            android.os.Bundle r0 = new android.os.Bundle     // Catch:{ all -> 0x04de }
            r0.<init>()     // Catch:{ all -> 0x04de }
            r3 = 1
            r0.putLong(r8, r3)     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.Y r3 = r1.f10752j     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.pc r3 = r3.k()     // Catch:{ all -> 0x04de }
            java.lang.String r4 = r2.f13244a     // Catch:{ all -> 0x04de }
            boolean r3 = r3.c(r4)     // Catch:{ all -> 0x04de }
            if (r3 == 0) goto L_0x049d
            java.lang.String r3 = "_fr"
            r4 = 1
            r0.putLong(r3, r4)     // Catch:{ all -> 0x04de }
        L_0x049d:
            com.google.android.gms.measurement.internal.zzaj r3 = new com.google.android.gms.measurement.internal.zzaj     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "_e"
            com.google.android.gms.measurement.internal.zzag r14 = new com.google.android.gms.measurement.internal.zzag     // Catch:{ all -> 0x04de }
            r14.<init>(r0)     // Catch:{ all -> 0x04de }
            java.lang.String r15 = "auto"
            r12 = r3
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x04de }
            r1.a((com.google.android.gms.measurement.internal.zzaj) r3, (com.google.android.gms.measurement.internal.zzm) r2)     // Catch:{ all -> 0x04de }
            goto L_0x04cf
        L_0x04b2:
            boolean r0 = r2.f13252i     // Catch:{ all -> 0x04de }
            if (r0 == 0) goto L_0x04cf
            android.os.Bundle r0 = new android.os.Bundle     // Catch:{ all -> 0x04de }
            r0.<init>()     // Catch:{ all -> 0x04de }
            com.google.android.gms.measurement.internal.zzaj r3 = new com.google.android.gms.measurement.internal.zzaj     // Catch:{ all -> 0x04de }
            java.lang.String r13 = "_cd"
            com.google.android.gms.measurement.internal.zzag r14 = new com.google.android.gms.measurement.internal.zzag     // Catch:{ all -> 0x04de }
            r14.<init>(r0)     // Catch:{ all -> 0x04de }
            java.lang.String r15 = "auto"
            r12 = r3
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x04de }
            r1.a((com.google.android.gms.measurement.internal.zzaj) r3, (com.google.android.gms.measurement.internal.zzm) r2)     // Catch:{ all -> 0x04de }
        L_0x04cf:
            c.e.a.b.h.b.sc r0 = r22.l()     // Catch:{ all -> 0x04de }
            r0.y()     // Catch:{ all -> 0x04de }
            c.e.a.b.h.b.sc r0 = r22.l()
            r0.w()
            return
        L_0x04de:
            r0 = move-exception
            c.e.a.b.h.b.sc r2 = r22.l()
            r2.w()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.Tb.c(com.google.android.gms.measurement.internal.zzm):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x006a  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x007c  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00d6  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00fa  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0108  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0132  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0140  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x014e  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0188  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.b.h.b._b d(com.google.android.gms.measurement.internal.zzm r11) {
        /*
            r10 = this;
            r10.C()
            r10.r()
            c.e.a.b.d.d.r.a(r11)
            java.lang.String r0 = r11.f13244a
            c.e.a.b.d.d.r.b((java.lang.String) r0)
            c.e.a.b.h.b.sc r0 = r10.l()
            java.lang.String r1 = r11.f13244a
            c.e.a.b.h.b._b r0 = r0.b(r1)
            c.e.a.b.h.b.Y r1 = r10.f10752j
            c.e.a.b.h.b.F r1 = r1.j()
            java.lang.String r2 = r11.f13244a
            java.lang.String r1 = r1.b((java.lang.String) r2)
            r2 = 1
            if (r0 != 0) goto L_0x0042
            c.e.a.b.h.b._b r0 = new c.e.a.b.h.b._b
            c.e.a.b.h.b.Y r3 = r10.f10752j
            java.lang.String r4 = r11.f13244a
            r0.<init>(r3, r4)
            c.e.a.b.h.b.Y r3 = r10.f10752j
            c.e.a.b.h.b.cc r3 = r3.i()
            java.lang.String r3 = r3.x()
            r0.a((java.lang.String) r3)
            r0.d((java.lang.String) r1)
        L_0x0040:
            r1 = 1
            goto L_0x005e
        L_0x0042:
            java.lang.String r3 = r0.h()
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x005d
            r0.d((java.lang.String) r1)
            c.e.a.b.h.b.Y r1 = r10.f10752j
            c.e.a.b.h.b.cc r1 = r1.i()
            java.lang.String r1 = r1.x()
            r0.a((java.lang.String) r1)
            goto L_0x0040
        L_0x005d:
            r1 = 0
        L_0x005e:
            java.lang.String r3 = r11.f13245b
            java.lang.String r4 = r0.c()
            boolean r3 = android.text.TextUtils.equals(r3, r4)
            if (r3 != 0) goto L_0x0070
            java.lang.String r1 = r11.f13245b
            r0.b((java.lang.String) r1)
            r1 = 1
        L_0x0070:
            java.lang.String r3 = r11.r
            java.lang.String r4 = r0.g()
            boolean r3 = android.text.TextUtils.equals(r3, r4)
            if (r3 != 0) goto L_0x0082
            java.lang.String r1 = r11.r
            r0.c((java.lang.String) r1)
            r1 = 1
        L_0x0082:
            java.lang.String r3 = r11.f13254k
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L_0x009c
            java.lang.String r3 = r11.f13254k
            java.lang.String r4 = r0.b()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x009c
            java.lang.String r1 = r11.f13254k
            r0.e((java.lang.String) r1)
            r1 = 1
        L_0x009c:
            long r3 = r11.f13248e
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x00b2
            long r7 = r0.n()
            int r9 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r9 == 0) goto L_0x00b2
            long r3 = r11.f13248e
            r0.d((long) r3)
            r1 = 1
        L_0x00b2:
            java.lang.String r3 = r11.f13246c
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L_0x00cc
            java.lang.String r3 = r11.f13246c
            java.lang.String r4 = r0.k()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x00cc
            java.lang.String r1 = r11.f13246c
            r0.f((java.lang.String) r1)
            r1 = 1
        L_0x00cc:
            long r3 = r11.f13253j
            long r7 = r0.l()
            int r9 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r9 == 0) goto L_0x00dc
            long r3 = r11.f13253j
            r0.c((long) r3)
            r1 = 1
        L_0x00dc:
            java.lang.String r3 = r11.f13247d
            if (r3 == 0) goto L_0x00f0
            java.lang.String r4 = r0.m()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x00f0
            java.lang.String r1 = r11.f13247d
            r0.g((java.lang.String) r1)
            r1 = 1
        L_0x00f0:
            long r3 = r11.f13249f
            long r7 = r0.o()
            int r9 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r9 == 0) goto L_0x0100
            long r3 = r11.f13249f
            r0.e((long) r3)
            r1 = 1
        L_0x0100:
            boolean r3 = r11.f13251h
            boolean r4 = r0.d()
            if (r3 == r4) goto L_0x010e
            boolean r1 = r11.f13251h
            r0.a((boolean) r1)
            r1 = 1
        L_0x010e:
            java.lang.String r3 = r11.f13250g
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L_0x0128
            java.lang.String r3 = r11.f13250g
            java.lang.String r4 = r0.A()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x0128
            java.lang.String r1 = r11.f13250g
            r0.h((java.lang.String) r1)
            r1 = 1
        L_0x0128:
            long r3 = r11.f13255l
            long r7 = r0.C()
            int r9 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r9 == 0) goto L_0x0138
            long r3 = r11.f13255l
            r0.p(r3)
            r1 = 1
        L_0x0138:
            boolean r3 = r11.o
            boolean r4 = r0.D()
            if (r3 == r4) goto L_0x0146
            boolean r1 = r11.o
            r0.b((boolean) r1)
            r1 = 1
        L_0x0146:
            boolean r3 = r11.p
            boolean r4 = r0.E()
            if (r3 == r4) goto L_0x0154
            boolean r1 = r11.p
            r0.c((boolean) r1)
            r1 = 1
        L_0x0154:
            c.e.a.b.h.b.Y r3 = r10.f10752j
            c.e.a.b.h.b.pc r3 = r3.k()
            java.lang.String r4 = r11.f13244a
            c.e.a.b.h.b.k$a<java.lang.Boolean> r7 = c.e.a.b.h.b.C0931k.ya
            boolean r3 = r3.e(r4, r7)
            if (r3 == 0) goto L_0x0172
            java.lang.Boolean r3 = r11.s
            java.lang.Boolean r4 = r0.F()
            if (r3 == r4) goto L_0x0172
            java.lang.Boolean r1 = r11.s
            r0.a((java.lang.Boolean) r1)
            r1 = 1
        L_0x0172:
            long r3 = r11.t
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x0186
            long r5 = r0.p()
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x0186
            long r3 = r11.t
            r0.f((long) r3)
            r1 = 1
        L_0x0186:
            if (r1 == 0) goto L_0x018f
            c.e.a.b.h.b.sc r11 = r10.l()
            r11.a((c.e.a.b.h.b._b) r0)
        L_0x018f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.Tb.d(com.google.android.gms.measurement.internal.zzm):c.e.a.b.h.b._b");
    }

    public final String e(zzm zzm) {
        try {
            return (String) this.f10752j.d().a(new Xb(this, zzm)).get(30000, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            this.f10752j.e().t().a("Failed to get app instance id. appId", C0957t.a(zzm.f13244a), e2);
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:211:0x07bb, code lost:
        r6 = true;
     */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x0274 A[Catch:{ SQLiteException -> 0x023c, all -> 0x0871 }] */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x02ab A[Catch:{ SQLiteException -> 0x023c, all -> 0x0871 }] */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x02f9 A[Catch:{ SQLiteException -> 0x023c, all -> 0x0871 }] */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0326  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(com.google.android.gms.measurement.internal.zzaj r27, com.google.android.gms.measurement.internal.zzm r28) {
        /*
            r26 = this;
            r1 = r26
            r2 = r27
            r3 = r28
            java.lang.String r4 = "_s"
            c.e.a.b.d.d.r.a(r28)
            java.lang.String r5 = r3.f13244a
            c.e.a.b.d.d.r.b((java.lang.String) r5)
            long r5 = java.lang.System.nanoTime()
            r26.C()
            r26.r()
            java.lang.String r15 = r3.f13244a
            c.e.a.b.h.b.Zb r7 = r26.j()
            boolean r7 = r7.a((com.google.android.gms.measurement.internal.zzaj) r2, (com.google.android.gms.measurement.internal.zzm) r3)
            if (r7 != 0) goto L_0x0027
            return
        L_0x0027:
            boolean r7 = r3.f13251h
            if (r7 != 0) goto L_0x002f
            r1.d(r3)
            return
        L_0x002f:
            c.e.a.b.h.b.T r7 = r26.m()
            java.lang.String r8 = r2.f13232a
            boolean r7 = r7.b(r15, r8)
            java.lang.String r14 = "_err"
            r13 = 0
            r22 = 1
            r12 = 0
            if (r7 == 0) goto L_0x00de
            c.e.a.b.h.b.Y r3 = r1.f10752j
            c.e.a.b.h.b.t r3 = r3.e()
            c.e.a.b.h.b.v r3 = r3.w()
            java.lang.Object r4 = c.e.a.b.h.b.C0957t.a((java.lang.String) r15)
            c.e.a.b.h.b.Y r5 = r1.f10752j
            c.e.a.b.h.b.r r5 = r5.h()
            java.lang.String r6 = r2.f13232a
            java.lang.String r5 = r5.a((java.lang.String) r6)
            java.lang.String r6 = "Dropping blacklisted event. appId"
            r3.a(r6, r4, r5)
            c.e.a.b.h.b.T r3 = r26.m()
            boolean r3 = r3.h(r15)
            if (r3 != 0) goto L_0x0074
            c.e.a.b.h.b.T r3 = r26.m()
            boolean r3 = r3.i(r15)
            if (r3 == 0) goto L_0x0075
        L_0x0074:
            r13 = 1
        L_0x0075:
            if (r13 != 0) goto L_0x0093
            java.lang.String r3 = r2.f13232a
            boolean r3 = r14.equals(r3)
            if (r3 != 0) goto L_0x0093
            c.e.a.b.h.b.Y r3 = r1.f10752j
            c.e.a.b.h.b.cc r7 = r3.i()
            r9 = 11
            java.lang.String r11 = r2.f13232a
            r2 = 0
            java.lang.String r10 = "_ev"
            r8 = r15
            r3 = r12
            r12 = r2
            r7.a((java.lang.String) r8, (int) r9, (java.lang.String) r10, (java.lang.String) r11, (int) r12)
            goto L_0x0094
        L_0x0093:
            r3 = r12
        L_0x0094:
            if (r13 == 0) goto L_0x00dd
            c.e.a.b.h.b.sc r2 = r26.l()
            c.e.a.b.h.b._b r2 = r2.b(r15)
            if (r2 == 0) goto L_0x00dd
            long r4 = r2.s()
            long r6 = r2.r()
            long r4 = java.lang.Math.max(r4, r6)
            c.e.a.b.h.b.Y r6 = r1.f10752j
            c.e.a.b.d.g.e r6 = r6.c()
            long r6 = r6.c()
            long r6 = r6 - r4
            long r4 = java.lang.Math.abs(r6)
            c.e.a.b.h.b.k$a<java.lang.Long> r6 = c.e.a.b.h.b.C0931k.N
            java.lang.Object r3 = r6.a(r3)
            java.lang.Long r3 = (java.lang.Long) r3
            long r6 = r3.longValue()
            int r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r3 <= 0) goto L_0x00dd
            c.e.a.b.h.b.Y r3 = r1.f10752j
            c.e.a.b.h.b.t r3 = r3.e()
            c.e.a.b.h.b.v r3 = r3.A()
            java.lang.String r4 = "Fetching config for blacklisted app"
            r3.a(r4)
            r1.a((c.e.a.b.h.b._b) r2)
        L_0x00dd:
            return
        L_0x00de:
            r11 = r12
            c.e.a.b.h.b.Y r7 = r1.f10752j
            c.e.a.b.h.b.t r7 = r7.e()
            r12 = 2
            boolean r7 = r7.a((int) r12)
            if (r7 == 0) goto L_0x0105
            c.e.a.b.h.b.Y r7 = r1.f10752j
            c.e.a.b.h.b.t r7 = r7.e()
            c.e.a.b.h.b.v r7 = r7.B()
            c.e.a.b.h.b.Y r8 = r1.f10752j
            c.e.a.b.h.b.r r8 = r8.h()
            java.lang.String r8 = r8.a((com.google.android.gms.measurement.internal.zzaj) r2)
            java.lang.String r9 = "Logging event"
            r7.a(r9, r8)
        L_0x0105:
            c.e.a.b.h.b.sc r7 = r26.l()
            r7.v()
            r1.d(r3)     // Catch:{ all -> 0x0871 }
            java.lang.String r7 = "_iap"
            java.lang.String r8 = r2.f13232a     // Catch:{ all -> 0x0871 }
            boolean r7 = r7.equals(r8)     // Catch:{ all -> 0x0871 }
            java.lang.String r8 = "ecommerce_purchase"
            if (r7 != 0) goto L_0x0129
            java.lang.String r7 = r2.f13232a     // Catch:{ all -> 0x0871 }
            boolean r7 = r8.equals(r7)     // Catch:{ all -> 0x0871 }
            if (r7 == 0) goto L_0x0124
            goto L_0x0129
        L_0x0124:
            r23 = r5
            r6 = 0
            goto L_0x02ba
        L_0x0129:
            com.google.android.gms.measurement.internal.zzag r7 = r2.f13233b     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = "currency"
            java.lang.String r7 = r7.g(r9)     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = r2.f13232a     // Catch:{ all -> 0x0871 }
            boolean r8 = r8.equals(r9)     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = "value"
            if (r8 == 0) goto L_0x018f
            com.google.android.gms.measurement.internal.zzag r8 = r2.f13233b     // Catch:{ all -> 0x0871 }
            java.lang.Double r8 = r8.h(r9)     // Catch:{ all -> 0x0871 }
            double r16 = r8.doubleValue()     // Catch:{ all -> 0x0871 }
            r18 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r16 = r16 * r18
            r20 = 0
            int r8 = (r16 > r20 ? 1 : (r16 == r20 ? 0 : -1))
            if (r8 != 0) goto L_0x0162
            com.google.android.gms.measurement.internal.zzag r8 = r2.f13233b     // Catch:{ all -> 0x0871 }
            java.lang.Long r8 = r8.f(r9)     // Catch:{ all -> 0x0871 }
            long r8 = r8.longValue()     // Catch:{ all -> 0x0871 }
            double r8 = (double) r8
            java.lang.Double.isNaN(r8)
            double r16 = r8 * r18
        L_0x0162:
            r8 = 4890909195324358656(0x43e0000000000000, double:9.223372036854776E18)
            int r10 = (r16 > r8 ? 1 : (r16 == r8 ? 0 : -1))
            if (r10 > 0) goto L_0x0173
            r8 = -4332462841530417152(0xc3e0000000000000, double:-9.223372036854776E18)
            int r10 = (r16 > r8 ? 1 : (r16 == r8 ? 0 : -1))
            if (r10 < 0) goto L_0x0173
            long r8 = java.lang.Math.round(r16)     // Catch:{ all -> 0x0871 }
            goto L_0x0199
        L_0x0173:
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r7 = r7.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r7 = r7.w()     // Catch:{ all -> 0x0871 }
            java.lang.String r8 = "Data lost. Currency value is too big. appId"
            java.lang.Object r9 = c.e.a.b.h.b.C0957t.a((java.lang.String) r15)     // Catch:{ all -> 0x0871 }
            java.lang.Double r10 = java.lang.Double.valueOf(r16)     // Catch:{ all -> 0x0871 }
            r7.a(r8, r9, r10)     // Catch:{ all -> 0x0871 }
            r23 = r5
            r6 = 0
            goto L_0x02a9
        L_0x018f:
            com.google.android.gms.measurement.internal.zzag r8 = r2.f13233b     // Catch:{ all -> 0x0871 }
            java.lang.Long r8 = r8.f(r9)     // Catch:{ all -> 0x0871 }
            long r8 = r8.longValue()     // Catch:{ all -> 0x0871 }
        L_0x0199:
            boolean r10 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0871 }
            if (r10 != 0) goto L_0x02a5
            java.util.Locale r10 = java.util.Locale.US     // Catch:{ all -> 0x0871 }
            java.lang.String r7 = r7.toUpperCase(r10)     // Catch:{ all -> 0x0871 }
            java.lang.String r10 = "[A-Z]{3}"
            boolean r10 = r7.matches(r10)     // Catch:{ all -> 0x0871 }
            if (r10 == 0) goto L_0x02a5
            java.lang.String r10 = "_ltv_"
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch:{ all -> 0x0871 }
            int r16 = r7.length()     // Catch:{ all -> 0x0871 }
            if (r16 == 0) goto L_0x01be
            java.lang.String r7 = r10.concat(r7)     // Catch:{ all -> 0x0871 }
            goto L_0x01c3
        L_0x01be:
            java.lang.String r7 = new java.lang.String     // Catch:{ all -> 0x0871 }
            r7.<init>(r10)     // Catch:{ all -> 0x0871 }
        L_0x01c3:
            r10 = r7
            c.e.a.b.h.b.sc r7 = r26.l()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.bc r7 = r7.d(r15, r10)     // Catch:{ all -> 0x0871 }
            if (r7 == 0) goto L_0x0204
            java.lang.Object r11 = r7.f10834e     // Catch:{ all -> 0x0871 }
            boolean r11 = r11 instanceof java.lang.Long     // Catch:{ all -> 0x0871 }
            if (r11 != 0) goto L_0x01d5
            goto L_0x0204
        L_0x01d5:
            java.lang.Object r7 = r7.f10834e     // Catch:{ all -> 0x0871 }
            java.lang.Long r7 = (java.lang.Long) r7     // Catch:{ all -> 0x0871 }
            long r17 = r7.longValue()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.bc r19 = new c.e.a.b.h.b.bc     // Catch:{ all -> 0x0871 }
            java.lang.String r11 = r2.f13234c     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.d.g.e r7 = r7.c()     // Catch:{ all -> 0x0871 }
            long r20 = r7.c()     // Catch:{ all -> 0x0871 }
            long r17 = r17 + r8
            java.lang.Long r17 = java.lang.Long.valueOf(r17)     // Catch:{ all -> 0x0871 }
            r7 = r19
            r8 = r15
            r9 = r11
            r23 = r5
            r5 = 2
            r6 = 0
            r11 = r20
            r6 = 0
            r13 = r17
            r7.<init>(r8, r9, r10, r11, r13)     // Catch:{ all -> 0x0871 }
            r5 = r19
            goto L_0x026a
        L_0x0204:
            r23 = r5
            r5 = 2
            r6 = 0
            c.e.a.b.h.b.sc r7 = r26.l()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r11 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.pc r11 = r11.k()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.k$a<java.lang.Integer> r12 = c.e.a.b.h.b.C0931k.S     // Catch:{ all -> 0x0871 }
            int r11 = r11.b(r15, r12)     // Catch:{ all -> 0x0871 }
            int r11 = r11 + -1
            c.e.a.b.d.d.r.b((java.lang.String) r15)     // Catch:{ all -> 0x0871 }
            r7.l()     // Catch:{ all -> 0x0871 }
            r7.s()     // Catch:{ all -> 0x0871 }
            android.database.sqlite.SQLiteDatabase r12 = r7.x()     // Catch:{ SQLiteException -> 0x023c }
            java.lang.String r13 = "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);"
            r5 = 3
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch:{ SQLiteException -> 0x023c }
            r5[r6] = r15     // Catch:{ SQLiteException -> 0x023c }
            r5[r22] = r15     // Catch:{ SQLiteException -> 0x023c }
            java.lang.String r11 = java.lang.String.valueOf(r11)     // Catch:{ SQLiteException -> 0x023c }
            r16 = 2
            r5[r16] = r11     // Catch:{ SQLiteException -> 0x023c }
            r12.execSQL(r13, r5)     // Catch:{ SQLiteException -> 0x023c }
            goto L_0x024f
        L_0x023c:
            r0 = move-exception
            r5 = r0
            c.e.a.b.h.b.t r7 = r7.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r7 = r7.t()     // Catch:{ all -> 0x0871 }
            java.lang.String r11 = "Error pruning currencies. appId"
            java.lang.Object r12 = c.e.a.b.h.b.C0957t.a((java.lang.String) r15)     // Catch:{ all -> 0x0871 }
            r7.a(r11, r12, r5)     // Catch:{ all -> 0x0871 }
        L_0x024f:
            c.e.a.b.h.b.bc r5 = new c.e.a.b.h.b.bc     // Catch:{ all -> 0x0871 }
            java.lang.String r11 = r2.f13234c     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.d.g.e r7 = r7.c()     // Catch:{ all -> 0x0871 }
            long r12 = r7.c()     // Catch:{ all -> 0x0871 }
            java.lang.Long r16 = java.lang.Long.valueOf(r8)     // Catch:{ all -> 0x0871 }
            r7 = r5
            r8 = r15
            r9 = r11
            r11 = r12
            r13 = r16
            r7.<init>(r8, r9, r10, r11, r13)     // Catch:{ all -> 0x0871 }
        L_0x026a:
            c.e.a.b.h.b.sc r7 = r26.l()     // Catch:{ all -> 0x0871 }
            boolean r7 = r7.a((c.e.a.b.h.b.bc) r5)     // Catch:{ all -> 0x0871 }
            if (r7 != 0) goto L_0x02a8
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r7 = r7.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r7 = r7.t()     // Catch:{ all -> 0x0871 }
            java.lang.String r8 = "Too many unique user properties are set. Ignoring user property. appId"
            java.lang.Object r9 = c.e.a.b.h.b.C0957t.a((java.lang.String) r15)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r10 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.r r10 = r10.h()     // Catch:{ all -> 0x0871 }
            java.lang.String r11 = r5.f10832c     // Catch:{ all -> 0x0871 }
            java.lang.String r10 = r10.c(r11)     // Catch:{ all -> 0x0871 }
            java.lang.Object r5 = r5.f10834e     // Catch:{ all -> 0x0871 }
            r7.a(r8, r9, r10, r5)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.cc r7 = r5.i()     // Catch:{ all -> 0x0871 }
            r9 = 9
            r10 = 0
            r11 = 0
            r12 = 0
            r8 = r15
            r7.a((java.lang.String) r8, (int) r9, (java.lang.String) r10, (java.lang.String) r11, (int) r12)     // Catch:{ all -> 0x0871 }
            goto L_0x02a8
        L_0x02a5:
            r23 = r5
            r6 = 0
        L_0x02a8:
            r13 = 1
        L_0x02a9:
            if (r13 != 0) goto L_0x02ba
            c.e.a.b.h.b.sc r2 = r26.l()     // Catch:{ all -> 0x0871 }
            r2.y()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.sc r2 = r26.l()
            r2.w()
            return
        L_0x02ba:
            java.lang.String r5 = r2.f13232a     // Catch:{ all -> 0x0871 }
            boolean r5 = c.e.a.b.h.b.cc.a((java.lang.String) r5)     // Catch:{ all -> 0x0871 }
            java.lang.String r7 = r2.f13232a     // Catch:{ all -> 0x0871 }
            boolean r16 = r14.equals(r7)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.sc r7 = r26.l()     // Catch:{ all -> 0x0871 }
            long r8 = r26.s()     // Catch:{ all -> 0x0871 }
            r11 = 1
            r13 = 0
            r17 = 0
            r10 = r15
            r12 = r5
            r14 = r16
            r18 = r15
            r15 = r17
            c.e.a.b.h.b.tc r7 = r7.a(r8, r10, r11, r12, r13, r14, r15)     // Catch:{ all -> 0x0871 }
            long r8 = r7.f11067b     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.k$a<java.lang.Integer> r10 = c.e.a.b.h.b.C0931k.y     // Catch:{ all -> 0x0871 }
            r11 = 0
            java.lang.Object r10 = r10.a(r11)     // Catch:{ all -> 0x0871 }
            java.lang.Integer r10 = (java.lang.Integer) r10     // Catch:{ all -> 0x0871 }
            int r10 = r10.intValue()     // Catch:{ all -> 0x0871 }
            long r10 = (long) r10     // Catch:{ all -> 0x0871 }
            long r8 = r8 - r10
            r10 = 1000(0x3e8, double:4.94E-321)
            r12 = 1
            r14 = 0
            int r17 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r17 <= 0) goto L_0x0326
            long r8 = r8 % r10
            int r2 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1))
            if (r2 != 0) goto L_0x0317
            c.e.a.b.h.b.Y r2 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r2 = r2.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r2 = r2.t()     // Catch:{ all -> 0x0871 }
            java.lang.String r3 = "Data loss. Too many events logged. appId, count"
            java.lang.Object r4 = c.e.a.b.h.b.C0957t.a((java.lang.String) r18)     // Catch:{ all -> 0x0871 }
            long r5 = r7.f11067b     // Catch:{ all -> 0x0871 }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0871 }
            r2.a(r3, r4, r5)     // Catch:{ all -> 0x0871 }
        L_0x0317:
            c.e.a.b.h.b.sc r2 = r26.l()     // Catch:{ all -> 0x0871 }
            r2.y()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.sc r2 = r26.l()
            r2.w()
            return
        L_0x0326:
            if (r5 == 0) goto L_0x037e
            long r8 = r7.f11066a     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.k$a<java.lang.Integer> r6 = c.e.a.b.h.b.C0931k.A     // Catch:{ all -> 0x0871 }
            r12 = 0
            java.lang.Object r6 = r6.a(r12)     // Catch:{ all -> 0x0871 }
            java.lang.Integer r6 = (java.lang.Integer) r6     // Catch:{ all -> 0x0871 }
            int r6 = r6.intValue()     // Catch:{ all -> 0x0871 }
            long r12 = (long) r6     // Catch:{ all -> 0x0871 }
            long r8 = r8 - r12
            int r6 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r6 <= 0) goto L_0x037e
            long r8 = r8 % r10
            r3 = 1
            int r5 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r5 != 0) goto L_0x035d
            c.e.a.b.h.b.Y r3 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r3 = r3.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r3 = r3.t()     // Catch:{ all -> 0x0871 }
            java.lang.String r4 = "Data loss. Too many public events logged. appId, count"
            java.lang.Object r5 = c.e.a.b.h.b.C0957t.a((java.lang.String) r18)     // Catch:{ all -> 0x0871 }
            long r6 = r7.f11066a     // Catch:{ all -> 0x0871 }
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch:{ all -> 0x0871 }
            r3.a(r4, r5, r6)     // Catch:{ all -> 0x0871 }
        L_0x035d:
            c.e.a.b.h.b.Y r3 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.cc r7 = r3.i()     // Catch:{ all -> 0x0871 }
            r9 = 16
            java.lang.String r10 = "_ev"
            java.lang.String r11 = r2.f13232a     // Catch:{ all -> 0x0871 }
            r12 = 0
            r8 = r18
            r7.a((java.lang.String) r8, (int) r9, (java.lang.String) r10, (java.lang.String) r11, (int) r12)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.sc r2 = r26.l()     // Catch:{ all -> 0x0871 }
            r2.y()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.sc r2 = r26.l()
            r2.w()
            return
        L_0x037e:
            if (r16 == 0) goto L_0x03d0
            long r8 = r7.f11069d     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.pc r6 = r6.k()     // Catch:{ all -> 0x0871 }
            java.lang.String r10 = r3.f13244a     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.k$a<java.lang.Integer> r11 = c.e.a.b.h.b.C0931k.z     // Catch:{ all -> 0x0871 }
            int r6 = r6.b(r10, r11)     // Catch:{ all -> 0x0871 }
            r10 = 1000000(0xf4240, float:1.401298E-39)
            int r6 = java.lang.Math.min(r10, r6)     // Catch:{ all -> 0x0871 }
            r12 = 0
            int r6 = java.lang.Math.max(r12, r6)     // Catch:{ all -> 0x0871 }
            long r10 = (long) r6     // Catch:{ all -> 0x0871 }
            long r8 = r8 - r10
            int r6 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r6 <= 0) goto L_0x03d1
            r10 = 1
            int r2 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r2 != 0) goto L_0x03c1
            c.e.a.b.h.b.Y r2 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r2 = r2.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r2 = r2.t()     // Catch:{ all -> 0x0871 }
            java.lang.String r3 = "Too many error events logged. appId, count"
            java.lang.Object r4 = c.e.a.b.h.b.C0957t.a((java.lang.String) r18)     // Catch:{ all -> 0x0871 }
            long r5 = r7.f11069d     // Catch:{ all -> 0x0871 }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0871 }
            r2.a(r3, r4, r5)     // Catch:{ all -> 0x0871 }
        L_0x03c1:
            c.e.a.b.h.b.sc r2 = r26.l()     // Catch:{ all -> 0x0871 }
            r2.y()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.sc r2 = r26.l()
            r2.w()
            return
        L_0x03d0:
            r12 = 0
        L_0x03d1:
            com.google.android.gms.measurement.internal.zzag r6 = r2.f13233b     // Catch:{ all -> 0x0871 }
            android.os.Bundle r6 = r6.x()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.cc r7 = r7.i()     // Catch:{ all -> 0x0871 }
            java.lang.String r8 = "_o"
            java.lang.String r9 = r2.f13234c     // Catch:{ all -> 0x0871 }
            r7.a((android.os.Bundle) r6, (java.lang.String) r8, (java.lang.Object) r9)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.cc r7 = r7.i()     // Catch:{ all -> 0x0871 }
            r13 = r18
            boolean r7 = r7.h(r13)     // Catch:{ all -> 0x0871 }
            java.lang.String r11 = "_r"
            if (r7 == 0) goto L_0x0412
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.cc r7 = r7.i()     // Catch:{ all -> 0x0871 }
            java.lang.String r8 = "_dbg"
            r9 = 1
            java.lang.Long r12 = java.lang.Long.valueOf(r9)     // Catch:{ all -> 0x0871 }
            r7.a((android.os.Bundle) r6, (java.lang.String) r8, (java.lang.Object) r12)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.cc r7 = r7.i()     // Catch:{ all -> 0x0871 }
            java.lang.Long r8 = java.lang.Long.valueOf(r9)     // Catch:{ all -> 0x0871 }
            r7.a((android.os.Bundle) r6, (java.lang.String) r11, (java.lang.Object) r8)     // Catch:{ all -> 0x0871 }
        L_0x0412:
            java.lang.String r7 = r2.f13232a     // Catch:{ all -> 0x0871 }
            boolean r7 = r4.equals(r7)     // Catch:{ all -> 0x0871 }
            java.lang.String r8 = "_sno"
            if (r7 == 0) goto L_0x0447
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.pc r7 = r7.k()     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = r3.f13244a     // Catch:{ all -> 0x0871 }
            boolean r7 = r7.u(r9)     // Catch:{ all -> 0x0871 }
            if (r7 == 0) goto L_0x0447
            c.e.a.b.h.b.sc r7 = r26.l()     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = r3.f13244a     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.bc r7 = r7.d(r9, r8)     // Catch:{ all -> 0x0871 }
            if (r7 == 0) goto L_0x0447
            java.lang.Object r9 = r7.f10834e     // Catch:{ all -> 0x0871 }
            boolean r9 = r9 instanceof java.lang.Long     // Catch:{ all -> 0x0871 }
            if (r9 == 0) goto L_0x0447
            c.e.a.b.h.b.Y r9 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.cc r9 = r9.i()     // Catch:{ all -> 0x0871 }
            java.lang.Object r7 = r7.f10834e     // Catch:{ all -> 0x0871 }
            r9.a((android.os.Bundle) r6, (java.lang.String) r8, (java.lang.Object) r7)     // Catch:{ all -> 0x0871 }
        L_0x0447:
            java.lang.String r7 = r2.f13232a     // Catch:{ all -> 0x0871 }
            boolean r4 = r4.equals(r7)     // Catch:{ all -> 0x0871 }
            if (r4 == 0) goto L_0x0476
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.pc r4 = r4.k()     // Catch:{ all -> 0x0871 }
            java.lang.String r7 = r3.f13244a     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.k$a<java.lang.Boolean> r9 = c.e.a.b.h.b.C0931k.ua     // Catch:{ all -> 0x0871 }
            boolean r4 = r4.e(r7, r9)     // Catch:{ all -> 0x0871 }
            if (r4 == 0) goto L_0x0476
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.pc r4 = r4.k()     // Catch:{ all -> 0x0871 }
            java.lang.String r7 = r3.f13244a     // Catch:{ all -> 0x0871 }
            boolean r4 = r4.u(r7)     // Catch:{ all -> 0x0871 }
            if (r4 != 0) goto L_0x0476
            com.google.android.gms.measurement.internal.zzga r4 = new com.google.android.gms.measurement.internal.zzga     // Catch:{ all -> 0x0871 }
            r7 = 0
            r4.<init>(r8, r14, r7)     // Catch:{ all -> 0x0871 }
            r1.b((com.google.android.gms.measurement.internal.zzga) r4, (com.google.android.gms.measurement.internal.zzm) r3)     // Catch:{ all -> 0x0871 }
        L_0x0476:
            c.e.a.b.h.b.sc r4 = r26.l()     // Catch:{ all -> 0x0871 }
            long r7 = r4.c(r13)     // Catch:{ all -> 0x0871 }
            int r4 = (r7 > r14 ? 1 : (r7 == r14 ? 0 : -1))
            if (r4 <= 0) goto L_0x0499
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r4 = r4.w()     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = "Data lost. Too many events stored on disk, deleted. appId"
            java.lang.Object r10 = c.e.a.b.h.b.C0957t.a((java.lang.String) r13)     // Catch:{ all -> 0x0871 }
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch:{ all -> 0x0871 }
            r4.a(r9, r10, r7)     // Catch:{ all -> 0x0871 }
        L_0x0499:
            c.e.a.b.h.b.f r4 = new c.e.a.b.h.b.f     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r8 = r1.f10752j     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = r2.f13234c     // Catch:{ all -> 0x0871 }
            java.lang.String r12 = r2.f13232a     // Catch:{ all -> 0x0871 }
            long r14 = r2.f13235d     // Catch:{ all -> 0x0871 }
            r18 = 0
            r7 = r4
            r10 = r13
            r2 = r11
            r11 = r12
            r27 = r2
            r2 = r13
            r25 = 0
            r12 = r14
            r14 = r18
            r16 = r6
            r7.<init>((c.e.a.b.h.b.Y) r8, (java.lang.String) r9, (java.lang.String) r10, (java.lang.String) r11, (long) r12, (long) r14, (android.os.Bundle) r16)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.sc r6 = r26.l()     // Catch:{ all -> 0x0871 }
            java.lang.String r7 = r4.f10877b     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.g r6 = r6.b((java.lang.String) r2, (java.lang.String) r7)     // Catch:{ all -> 0x0871 }
            if (r6 != 0) goto L_0x0528
            c.e.a.b.h.b.sc r6 = r26.l()     // Catch:{ all -> 0x0871 }
            long r6 = r6.f(r2)     // Catch:{ all -> 0x0871 }
            r8 = 500(0x1f4, double:2.47E-321)
            int r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r10 < 0) goto L_0x050e
            if (r5 == 0) goto L_0x050e
            c.e.a.b.h.b.Y r3 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r3 = r3.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r3 = r3.t()     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = "Too many event names used, ignoring event. appId, name, supported count"
            java.lang.Object r6 = c.e.a.b.h.b.C0957t.a((java.lang.String) r2)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.r r7 = r7.h()     // Catch:{ all -> 0x0871 }
            java.lang.String r4 = r4.f10877b     // Catch:{ all -> 0x0871 }
            java.lang.String r4 = r7.a((java.lang.String) r4)     // Catch:{ all -> 0x0871 }
            r7 = 500(0x1f4, float:7.0E-43)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch:{ all -> 0x0871 }
            r3.a(r5, r6, r4, r7)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r3 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.cc r7 = r3.i()     // Catch:{ all -> 0x0871 }
            r9 = 8
            r10 = 0
            r11 = 0
            r12 = 0
            r8 = r2
            r7.a((java.lang.String) r8, (int) r9, (java.lang.String) r10, (java.lang.String) r11, (int) r12)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.sc r2 = r26.l()
            r2.w()
            return
        L_0x050e:
            c.e.a.b.h.b.g r5 = new c.e.a.b.h.b.g     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = r4.f10877b     // Catch:{ all -> 0x0871 }
            r10 = 0
            r12 = 0
            long r14 = r4.f10879d     // Catch:{ all -> 0x0871 }
            r16 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r7 = r5
            r8 = r2
            r7.<init>(r8, r9, r10, r12, r14, r16, r18, r19, r20, r21)     // Catch:{ all -> 0x0871 }
            goto L_0x0536
        L_0x0528:
            c.e.a.b.h.b.Y r2 = r1.f10752j     // Catch:{ all -> 0x0871 }
            long r7 = r6.f10892e     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.f r4 = r4.a(r2, r7)     // Catch:{ all -> 0x0871 }
            long r7 = r4.f10879d     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.g r5 = r6.a(r7)     // Catch:{ all -> 0x0871 }
        L_0x0536:
            c.e.a.b.h.b.sc r2 = r26.l()     // Catch:{ all -> 0x0871 }
            r2.a((c.e.a.b.h.b.C0919g) r5)     // Catch:{ all -> 0x0871 }
            r26.C()     // Catch:{ all -> 0x0871 }
            r26.r()     // Catch:{ all -> 0x0871 }
            c.e.a.b.d.d.r.a(r4)     // Catch:{ all -> 0x0871 }
            c.e.a.b.d.d.r.a(r28)     // Catch:{ all -> 0x0871 }
            java.lang.String r2 = r4.f10876a     // Catch:{ all -> 0x0871 }
            c.e.a.b.d.d.r.b((java.lang.String) r2)     // Catch:{ all -> 0x0871 }
            java.lang.String r2 = r4.f10876a     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = r3.f13244a     // Catch:{ all -> 0x0871 }
            boolean r2 = r2.equals(r5)     // Catch:{ all -> 0x0871 }
            c.e.a.b.d.d.r.a((boolean) r2)     // Catch:{ all -> 0x0871 }
            c.e.a.b.g.f.da r2 = new c.e.a.b.g.f.da     // Catch:{ all -> 0x0871 }
            r2.<init>()     // Catch:{ all -> 0x0871 }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r22)     // Catch:{ all -> 0x0871 }
            r2.f10369d = r5     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = "android"
            r2.f10377l = r5     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = r3.f13244a     // Catch:{ all -> 0x0871 }
            r2.r = r5     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = r3.f13247d     // Catch:{ all -> 0x0871 }
            r2.q = r5     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = r3.f13246c     // Catch:{ all -> 0x0871 }
            r2.s = r5     // Catch:{ all -> 0x0871 }
            long r5 = r3.f13253j     // Catch:{ all -> 0x0871 }
            r7 = -2147483648(0xffffffff80000000, double:NaN)
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 != 0) goto L_0x057f
            r12 = 0
            goto L_0x0586
        L_0x057f:
            long r5 = r3.f13253j     // Catch:{ all -> 0x0871 }
            int r6 = (int) r5     // Catch:{ all -> 0x0871 }
            java.lang.Integer r12 = java.lang.Integer.valueOf(r6)     // Catch:{ all -> 0x0871 }
        L_0x0586:
            r2.F = r12     // Catch:{ all -> 0x0871 }
            long r5 = r3.f13248e     // Catch:{ all -> 0x0871 }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0871 }
            r2.t = r5     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = r3.f13245b     // Catch:{ all -> 0x0871 }
            r2.B = r5     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.pc r5 = r5.k()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.k$a<java.lang.Boolean> r6 = c.e.a.b.h.b.C0931k.Ga     // Catch:{ all -> 0x0871 }
            boolean r5 = r5.a((c.e.a.b.h.b.C0931k.a<java.lang.Boolean>) r6)     // Catch:{ all -> 0x0871 }
            if (r5 == 0) goto L_0x05aa
            java.lang.String r5 = r2.B     // Catch:{ all -> 0x0871 }
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch:{ all -> 0x0871 }
            if (r5 == 0) goto L_0x05ae
        L_0x05aa:
            java.lang.String r5 = r3.r     // Catch:{ all -> 0x0871 }
            r2.O = r5     // Catch:{ all -> 0x0871 }
        L_0x05ae:
            long r5 = r3.f13249f     // Catch:{ all -> 0x0871 }
            r7 = 0
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 != 0) goto L_0x05b8
            r12 = 0
            goto L_0x05be
        L_0x05b8:
            long r5 = r3.f13249f     // Catch:{ all -> 0x0871 }
            java.lang.Long r12 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0871 }
        L_0x05be:
            r2.y = r12     // Catch:{ all -> 0x0871 }
            long r5 = r3.t     // Catch:{ all -> 0x0871 }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0871 }
            r2.R = r5     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.pc r5 = r5.k()     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = r3.f13244a     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.k$a<java.lang.Boolean> r9 = c.e.a.b.h.b.C0931k.Ba     // Catch:{ all -> 0x0871 }
            boolean r5 = r5.e(r6, r9)     // Catch:{ all -> 0x0871 }
            if (r5 == 0) goto L_0x05e2
            c.e.a.b.h.b.Zb r5 = r26.j()     // Catch:{ all -> 0x0871 }
            int[] r5 = r5.v()     // Catch:{ all -> 0x0871 }
            r2.Q = r5     // Catch:{ all -> 0x0871 }
        L_0x05e2:
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.F r5 = r5.j()     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = r3.f13244a     // Catch:{ all -> 0x0871 }
            android.util.Pair r5 = r5.a((java.lang.String) r6)     // Catch:{ all -> 0x0871 }
            if (r5 == 0) goto L_0x060b
            java.lang.Object r6 = r5.first     // Catch:{ all -> 0x0871 }
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6     // Catch:{ all -> 0x0871 }
            boolean r6 = android.text.TextUtils.isEmpty(r6)     // Catch:{ all -> 0x0871 }
            if (r6 != 0) goto L_0x060b
            boolean r6 = r3.o     // Catch:{ all -> 0x0871 }
            if (r6 == 0) goto L_0x0668
            java.lang.Object r6 = r5.first     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = (java.lang.String) r6     // Catch:{ all -> 0x0871 }
            r2.v = r6     // Catch:{ all -> 0x0871 }
            java.lang.Object r5 = r5.second     // Catch:{ all -> 0x0871 }
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch:{ all -> 0x0871 }
            r2.w = r5     // Catch:{ all -> 0x0871 }
            goto L_0x0668
        L_0x060b:
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.e r5 = r5.H()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0871 }
            android.content.Context r6 = r6.b()     // Catch:{ all -> 0x0871 }
            boolean r5 = r5.a(r6)     // Catch:{ all -> 0x0871 }
            if (r5 != 0) goto L_0x0668
            boolean r5 = r3.p     // Catch:{ all -> 0x0871 }
            if (r5 == 0) goto L_0x0668
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            android.content.Context r5 = r5.b()     // Catch:{ all -> 0x0871 }
            android.content.ContentResolver r5 = r5.getContentResolver()     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = "android_id"
            java.lang.String r5 = android.provider.Settings.Secure.getString(r5, r6)     // Catch:{ all -> 0x0871 }
            if (r5 != 0) goto L_0x064b
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r5 = r5.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r5 = r5.w()     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = "null secure ID. appId"
            java.lang.String r9 = r2.r     // Catch:{ all -> 0x0871 }
            java.lang.Object r9 = c.e.a.b.h.b.C0957t.a((java.lang.String) r9)     // Catch:{ all -> 0x0871 }
            r5.a(r6, r9)     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = "null"
            goto L_0x0666
        L_0x064b:
            boolean r6 = r5.isEmpty()     // Catch:{ all -> 0x0871 }
            if (r6 == 0) goto L_0x0666
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r6 = r6.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r6 = r6.w()     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = "empty secure ID. appId"
            java.lang.String r10 = r2.r     // Catch:{ all -> 0x0871 }
            java.lang.Object r10 = c.e.a.b.h.b.C0957t.a((java.lang.String) r10)     // Catch:{ all -> 0x0871 }
            r6.a(r9, r10)     // Catch:{ all -> 0x0871 }
        L_0x0666:
            r2.I = r5     // Catch:{ all -> 0x0871 }
        L_0x0668:
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.e r5 = r5.H()     // Catch:{ all -> 0x0871 }
            r5.o()     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = android.os.Build.MODEL     // Catch:{ all -> 0x0871 }
            r2.n = r5     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.e r5 = r5.H()     // Catch:{ all -> 0x0871 }
            r5.o()     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = android.os.Build.VERSION.RELEASE     // Catch:{ all -> 0x0871 }
            r2.m = r5     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.e r5 = r5.H()     // Catch:{ all -> 0x0871 }
            long r5 = r5.t()     // Catch:{ all -> 0x0871 }
            int r6 = (int) r5     // Catch:{ all -> 0x0871 }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r6)     // Catch:{ all -> 0x0871 }
            r2.p = r5     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.e r5 = r5.H()     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = r5.u()     // Catch:{ all -> 0x0871 }
            r2.o = r5     // Catch:{ all -> 0x0871 }
            r5 = 0
            r2.u = r5     // Catch:{ all -> 0x0871 }
            r2.f10372g = r5     // Catch:{ all -> 0x0871 }
            r2.f10373h = r5     // Catch:{ all -> 0x0871 }
            r2.f10374i = r5     // Catch:{ all -> 0x0871 }
            long r5 = r3.f13255l     // Catch:{ all -> 0x0871 }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0871 }
            r2.K = r5     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            boolean r5 = r5.f()     // Catch:{ all -> 0x0871 }
            if (r5 == 0) goto L_0x06c1
            boolean r5 = c.e.a.b.h.b.pc.v()     // Catch:{ all -> 0x0871 }
            if (r5 == 0) goto L_0x06c1
            r5 = 0
            r2.L = r5     // Catch:{ all -> 0x0871 }
        L_0x06c1:
            c.e.a.b.h.b.sc r5 = r26.l()     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = r3.f13244a     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b._b r5 = r5.b(r6)     // Catch:{ all -> 0x0871 }
            if (r5 != 0) goto L_0x0734
            c.e.a.b.h.b._b r5 = new c.e.a.b.h.b._b     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = r3.f13244a     // Catch:{ all -> 0x0871 }
            r5.<init>(r6, r9)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.cc r6 = r6.i()     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = r6.x()     // Catch:{ all -> 0x0871 }
            r5.a((java.lang.String) r6)     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = r3.f13254k     // Catch:{ all -> 0x0871 }
            r5.e((java.lang.String) r6)     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = r3.f13245b     // Catch:{ all -> 0x0871 }
            r5.b((java.lang.String) r6)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.F r6 = r6.j()     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = r3.f13244a     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = r6.b((java.lang.String) r9)     // Catch:{ all -> 0x0871 }
            r5.d((java.lang.String) r6)     // Catch:{ all -> 0x0871 }
            r5.g((long) r7)     // Catch:{ all -> 0x0871 }
            r5.a((long) r7)     // Catch:{ all -> 0x0871 }
            r5.b((long) r7)     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = r3.f13246c     // Catch:{ all -> 0x0871 }
            r5.f((java.lang.String) r6)     // Catch:{ all -> 0x0871 }
            long r9 = r3.f13253j     // Catch:{ all -> 0x0871 }
            r5.c((long) r9)     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = r3.f13247d     // Catch:{ all -> 0x0871 }
            r5.g((java.lang.String) r6)     // Catch:{ all -> 0x0871 }
            long r9 = r3.f13248e     // Catch:{ all -> 0x0871 }
            r5.d((long) r9)     // Catch:{ all -> 0x0871 }
            long r9 = r3.f13249f     // Catch:{ all -> 0x0871 }
            r5.e((long) r9)     // Catch:{ all -> 0x0871 }
            boolean r6 = r3.f13251h     // Catch:{ all -> 0x0871 }
            r5.a((boolean) r6)     // Catch:{ all -> 0x0871 }
            long r9 = r3.f13255l     // Catch:{ all -> 0x0871 }
            r5.p(r9)     // Catch:{ all -> 0x0871 }
            long r9 = r3.t     // Catch:{ all -> 0x0871 }
            r5.f((long) r9)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.sc r6 = r26.l()     // Catch:{ all -> 0x0871 }
            r6.a((c.e.a.b.h.b._b) r5)     // Catch:{ all -> 0x0871 }
        L_0x0734:
            java.lang.String r6 = r5.a()     // Catch:{ all -> 0x0871 }
            r2.x = r6     // Catch:{ all -> 0x0871 }
            java.lang.String r5 = r5.b()     // Catch:{ all -> 0x0871 }
            r2.E = r5     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.sc r5 = r26.l()     // Catch:{ all -> 0x0871 }
            java.lang.String r3 = r3.f13244a     // Catch:{ all -> 0x0871 }
            java.util.List r3 = r5.a((java.lang.String) r3)     // Catch:{ all -> 0x0871 }
            int r5 = r3.size()     // Catch:{ all -> 0x0871 }
            c.e.a.b.g.f.N[] r5 = new c.e.a.b.g.f.N[r5]     // Catch:{ all -> 0x0871 }
            r2.f10371f = r5     // Catch:{ all -> 0x0871 }
            r5 = 0
        L_0x0753:
            int r6 = r3.size()     // Catch:{ all -> 0x0871 }
            if (r5 >= r6) goto L_0x0791
            c.e.a.b.g.f.N$a r6 = c.e.a.b.g.f.N.D()     // Catch:{ all -> 0x0871 }
            java.lang.Object r9 = r3.get(r5)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.bc r9 = (c.e.a.b.h.b.bc) r9     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = r9.f10832c     // Catch:{ all -> 0x0871 }
            r6.a((java.lang.String) r9)     // Catch:{ all -> 0x0871 }
            java.lang.Object r9 = r3.get(r5)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.bc r9 = (c.e.a.b.h.b.bc) r9     // Catch:{ all -> 0x0871 }
            long r9 = r9.f10833d     // Catch:{ all -> 0x0871 }
            r6.a((long) r9)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Zb r9 = r26.j()     // Catch:{ all -> 0x0871 }
            java.lang.Object r10 = r3.get(r5)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.bc r10 = (c.e.a.b.h.b.bc) r10     // Catch:{ all -> 0x0871 }
            java.lang.Object r10 = r10.f10834e     // Catch:{ all -> 0x0871 }
            r9.a((c.e.a.b.g.f.N.a) r6, (java.lang.Object) r10)     // Catch:{ all -> 0x0871 }
            c.e.a.b.g.f.N[] r9 = r2.f10371f     // Catch:{ all -> 0x0871 }
            c.e.a.b.g.f.Sb r6 = r6.o()     // Catch:{ all -> 0x0871 }
            c.e.a.b.g.f.nb r6 = (c.e.a.b.g.f.C0852nb) r6     // Catch:{ all -> 0x0871 }
            c.e.a.b.g.f.N r6 = (c.e.a.b.g.f.N) r6     // Catch:{ all -> 0x0871 }
            r9[r5] = r6     // Catch:{ all -> 0x0871 }
            int r5 = r5 + 1
            goto L_0x0753
        L_0x0791:
            c.e.a.b.h.b.sc r3 = r26.l()     // Catch:{ IOException -> 0x0801 }
            long r2 = r3.a((c.e.a.b.g.f.C0811da) r2)     // Catch:{ IOException -> 0x0801 }
            c.e.a.b.h.b.sc r5 = r26.l()     // Catch:{ all -> 0x0871 }
            com.google.android.gms.measurement.internal.zzag r6 = r4.f10881f     // Catch:{ all -> 0x0871 }
            if (r6 == 0) goto L_0x07f7
            com.google.android.gms.measurement.internal.zzag r6 = r4.f10881f     // Catch:{ all -> 0x0871 }
            java.util.Iterator r6 = r6.iterator()     // Catch:{ all -> 0x0871 }
        L_0x07a7:
            boolean r9 = r6.hasNext()     // Catch:{ all -> 0x0871 }
            if (r9 == 0) goto L_0x07c0
            java.lang.Object r9 = r6.next()     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = (java.lang.String) r9     // Catch:{ all -> 0x0871 }
            r10 = r27
            boolean r9 = r10.equals(r9)     // Catch:{ all -> 0x0871 }
            if (r9 == 0) goto L_0x07bd
        L_0x07bb:
            r6 = 1
            goto L_0x07f8
        L_0x07bd:
            r27 = r10
            goto L_0x07a7
        L_0x07c0:
            c.e.a.b.h.b.T r6 = r26.m()     // Catch:{ all -> 0x0871 }
            java.lang.String r9 = r4.f10876a     // Catch:{ all -> 0x0871 }
            java.lang.String r10 = r4.f10877b     // Catch:{ all -> 0x0871 }
            boolean r6 = r6.c(r9, r10)     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.sc r9 = r26.l()     // Catch:{ all -> 0x0871 }
            long r10 = r26.s()     // Catch:{ all -> 0x0871 }
            java.lang.String r12 = r4.f10876a     // Catch:{ all -> 0x0871 }
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            c.e.a.b.h.b.tc r9 = r9.a(r10, r12, r13, r14, r15, r16, r17)     // Catch:{ all -> 0x0871 }
            if (r6 == 0) goto L_0x07f7
            long r9 = r9.f11070e     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.pc r6 = r6.k()     // Catch:{ all -> 0x0871 }
            java.lang.String r11 = r4.f10876a     // Catch:{ all -> 0x0871 }
            int r6 = r6.d(r11)     // Catch:{ all -> 0x0871 }
            long r11 = (long) r6     // Catch:{ all -> 0x0871 }
            int r6 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r6 >= 0) goto L_0x07f7
            goto L_0x07bb
        L_0x07f7:
            r6 = 0
        L_0x07f8:
            boolean r2 = r5.a((c.e.a.b.h.b.C0916f) r4, (long) r2, (boolean) r6)     // Catch:{ all -> 0x0871 }
            if (r2 == 0) goto L_0x0818
            r1.n = r7     // Catch:{ all -> 0x0871 }
            goto L_0x0818
        L_0x0801:
            r0 = move-exception
            r3 = r0
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r5 = r5.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r5 = r5.t()     // Catch:{ all -> 0x0871 }
            java.lang.String r6 = "Data loss. Failed to insert raw event metadata. appId"
            java.lang.String r2 = r2.r     // Catch:{ all -> 0x0871 }
            java.lang.Object r2 = c.e.a.b.h.b.C0957t.a((java.lang.String) r2)     // Catch:{ all -> 0x0871 }
            r5.a(r6, r2, r3)     // Catch:{ all -> 0x0871 }
        L_0x0818:
            c.e.a.b.h.b.sc r2 = r26.l()     // Catch:{ all -> 0x0871 }
            r2.y()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.Y r2 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r2 = r2.e()     // Catch:{ all -> 0x0871 }
            r3 = 2
            boolean r2 = r2.a((int) r3)     // Catch:{ all -> 0x0871 }
            if (r2 == 0) goto L_0x0845
            c.e.a.b.h.b.Y r2 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.t r2 = r2.e()     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.v r2 = r2.B()     // Catch:{ all -> 0x0871 }
            java.lang.String r3 = "Event recorded"
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0871 }
            c.e.a.b.h.b.r r5 = r5.h()     // Catch:{ all -> 0x0871 }
            java.lang.String r4 = r5.a((c.e.a.b.h.b.C0916f) r4)     // Catch:{ all -> 0x0871 }
            r2.a(r3, r4)     // Catch:{ all -> 0x0871 }
        L_0x0845:
            c.e.a.b.h.b.sc r2 = r26.l()
            r2.w()
            r26.v()
            c.e.a.b.h.b.Y r2 = r1.f10752j
            c.e.a.b.h.b.t r2 = r2.e()
            c.e.a.b.h.b.v r2 = r2.B()
            long r3 = java.lang.System.nanoTime()
            long r3 = r3 - r23
            r5 = 500000(0x7a120, double:2.47033E-318)
            long r3 = r3 + r5
            r5 = 1000000(0xf4240, double:4.940656E-318)
            long r3 = r3 / r5
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            java.lang.String r4 = "Background event processing time, ms"
            r2.a(r4, r3)
            return
        L_0x0871:
            r0 = move-exception
            r2 = r0
            c.e.a.b.h.b.sc r3 = r26.l()
            r3.w()
            goto L_0x087c
        L_0x087b:
            throw r2
        L_0x087c:
            goto L_0x087b
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.Tb.b(com.google.android.gms.measurement.internal.zzaj, com.google.android.gms.measurement.internal.zzm):void");
    }

    public final void a(Yb yb) {
        this.f10752j.d().l();
        sc scVar = new sc(this);
        scVar.t();
        this.f10746d = scVar;
        this.f10752j.k().a((rc) this.f10744b);
        lc lcVar = new lc(this);
        lcVar.t();
        this.f10749g = lcVar;
        C0903ab abVar = new C0903ab(this);
        abVar.t();
        this.f10751i = abVar;
        Pb pb = new Pb(this);
        pb.t();
        this.f10748f = pb;
        this.f10747e = new D(this);
        if (this.p != this.q) {
            this.f10752j.e().t().a("Not all upload components initialized", Integer.valueOf(this.p), Integer.valueOf(this.q));
        }
        this.f10753k = true;
    }

    public final nc a() {
        return this.f10752j.a();
    }

    public static void a(Sb sb) {
        if (sb == null) {
            throw new IllegalStateException("Upload Component not created");
        } else if (!sb.r()) {
            String valueOf = String.valueOf(sb.getClass());
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb2.append("Component not initialized: ");
            sb2.append(valueOf);
            throw new IllegalStateException(sb2.toString());
        }
    }

    public final void a(zzaj zzaj, String str) {
        zzaj zzaj2 = zzaj;
        String str2 = str;
        _b b2 = l().b(str2);
        if (b2 == null || TextUtils.isEmpty(b2.k())) {
            this.f10752j.e().A().a("No app data available; dropping event", str2);
            return;
        }
        Boolean b3 = b(b2);
        if (b3 == null) {
            if (!"_ui".equals(zzaj2.f13232a)) {
                this.f10752j.e().w().a("Could not find package. appId", C0957t.a(str));
            }
        } else if (!b3.booleanValue()) {
            this.f10752j.e().t().a("App version does not match; dropping event. appId", C0957t.a(str));
            return;
        }
        zzm zzm = r2;
        _b _bVar = b2;
        zzm zzm2 = new zzm(str, b2.c(), b2.k(), b2.l(), b2.m(), b2.n(), b2.o(), (String) null, b2.d(), false, _bVar.b(), _bVar.C(), 0, 0, _bVar.D(), _bVar.E(), false, _bVar.g(), _bVar.F(), _bVar.p());
        a(zzaj2, zzm);
    }

    public final void a(zzaj zzaj, zzm zzm) {
        List<zzr> list;
        List<zzr> list2;
        List<zzr> list3;
        zzaj zzaj2 = zzaj;
        zzm zzm2 = zzm;
        r.a(zzm);
        r.b(zzm2.f13244a);
        C();
        r();
        String str = zzm2.f13244a;
        long j2 = zzaj2.f13235d;
        if (j().a(zzaj2, zzm2)) {
            if (!zzm2.f13251h) {
                d(zzm2);
                return;
            }
            l().v();
            try {
                sc l2 = l();
                r.b(str);
                l2.l();
                l2.s();
                if (j2 < 0) {
                    l2.e().w().a("Invalid time querying timed out conditional properties", C0957t.a(str), Long.valueOf(j2));
                    list = Collections.emptyList();
                } else {
                    list = l2.b("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j2)});
                }
                for (zzr next : list) {
                    if (next != null) {
                        this.f10752j.e().A().a("User property timed out", next.f13256a, this.f10752j.h().c(next.f13258c.f13237b), next.f13258c.x());
                        if (next.f13262g != null) {
                            b(new zzaj(next.f13262g, j2), zzm2);
                        }
                        l().f(str, next.f13258c.f13237b);
                    }
                }
                sc l3 = l();
                r.b(str);
                l3.l();
                l3.s();
                if (j2 < 0) {
                    l3.e().w().a("Invalid time querying expired conditional properties", C0957t.a(str), Long.valueOf(j2));
                    list2 = Collections.emptyList();
                } else {
                    list2 = l3.b("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j2)});
                }
                ArrayList arrayList = new ArrayList(list2.size());
                for (zzr next2 : list2) {
                    if (next2 != null) {
                        this.f10752j.e().A().a("User property expired", next2.f13256a, this.f10752j.h().c(next2.f13258c.f13237b), next2.f13258c.x());
                        l().c(str, next2.f13258c.f13237b);
                        if (next2.f13266k != null) {
                            arrayList.add(next2.f13266k);
                        }
                        l().f(str, next2.f13258c.f13237b);
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    b(new zzaj((zzaj) obj, j2), zzm2);
                }
                sc l4 = l();
                String str2 = zzaj2.f13232a;
                r.b(str);
                r.b(str2);
                l4.l();
                l4.s();
                if (j2 < 0) {
                    l4.e().w().a("Invalid time querying triggered conditional properties", C0957t.a(str), l4.f().a(str2), Long.valueOf(j2));
                    list3 = Collections.emptyList();
                } else {
                    list3 = l4.b("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j2)});
                }
                ArrayList arrayList2 = new ArrayList(list3.size());
                for (zzr next3 : list3) {
                    if (next3 != null) {
                        zzga zzga = next3.f13258c;
                        bc bcVar = r4;
                        bc bcVar2 = new bc(next3.f13256a, next3.f13257b, zzga.f13237b, j2, zzga.x());
                        if (l().a(bcVar)) {
                            this.f10752j.e().A().a("User property triggered", next3.f13256a, this.f10752j.h().c(bcVar.f10832c), bcVar.f10834e);
                        } else {
                            this.f10752j.e().t().a("Too many active user properties, ignoring", C0957t.a(next3.f13256a), this.f10752j.h().c(bcVar.f10832c), bcVar.f10834e);
                        }
                        if (next3.f13264i != null) {
                            arrayList2.add(next3.f13264i);
                        }
                        next3.f13258c = new zzga(bcVar);
                        next3.f13260e = true;
                        l().a(next3);
                    }
                }
                b(zzaj, zzm);
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj2 = arrayList2.get(i3);
                    i3++;
                    b(new zzaj((zzaj) obj2, j2), zzm2);
                }
                l().y();
            } finally {
                l().w();
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:118:0x023c, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x023d, code lost:
        r9 = r4;
        r8 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0042, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0043, code lost:
        r5 = r1;
        r9 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0047, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0048, code lost:
        r8 = null;
        r9 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:298:0x06e4, code lost:
        if (r1.a(r12, r2) != false) goto L_0x06e6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:508:0x0c31, code lost:
        if (r24 != r14) goto L_0x0c33;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:605:?, code lost:
        r9.close();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0042 A[ExcHandler: all (th java.lang.Throwable), PHI: r4 
  PHI: (r4v222 android.database.Cursor) = (r4v217 android.database.Cursor), (r4v217 android.database.Cursor), (r4v217 android.database.Cursor), (r4v225 android.database.Cursor), (r4v225 android.database.Cursor), (r4v225 android.database.Cursor), (r4v225 android.database.Cursor), (r4v0 android.database.Cursor), (r4v0 android.database.Cursor) binds: [B:48:0x00df, B:54:0x00ec, B:55:?, B:25:0x0082, B:31:0x008f, B:33:0x0093, B:34:?, B:9:0x0033, B:10:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:9:0x0033] */
    /* JADX WARNING: Removed duplicated region for block: B:128:0x025e A[SYNTHETIC, Splitter:B:128:0x025e] */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x0265 A[Catch:{ IOException -> 0x021f, all -> 0x0ed6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:138:0x0273 A[Catch:{ IOException -> 0x021f, all -> 0x0ed6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:181:0x0398 A[Catch:{ IOException -> 0x021f, all -> 0x0ed6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:188:0x03a3 A[Catch:{ IOException -> 0x021f, all -> 0x0ed6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:189:0x03a4 A[Catch:{ IOException -> 0x021f, all -> 0x0ed6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:290:0x06b2 A[Catch:{ IOException -> 0x021f, all -> 0x0ed6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:316:0x072e A[Catch:{ IOException -> 0x021f, all -> 0x0ed6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:323:0x0742 A[Catch:{ IOException -> 0x021f, all -> 0x0ed6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:370:0x08a9 A[Catch:{ IOException -> 0x021f, all -> 0x0ed6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:376:0x08c3 A[Catch:{ IOException -> 0x021f, all -> 0x0ed6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:379:0x08e3 A[Catch:{ IOException -> 0x021f, all -> 0x0ed6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:515:0x0c50 A[Catch:{ all -> 0x0eb5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:519:0x0c9f A[Catch:{ all -> 0x0eb5 }] */
    /* JADX WARNING: Removed duplicated region for block: B:596:0x0eb9  */
    /* JADX WARNING: Removed duplicated region for block: B:604:0x0ed0 A[SYNTHETIC, Splitter:B:604:0x0ed0] */
    /* JADX WARNING: Removed duplicated region for block: B:641:0x08c0 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(java.lang.String r45, long r46) {
        /*
            r44 = this;
            r1 = r44
            java.lang.String r2 = "_lte"
            c.e.a.b.h.b.sc r3 = r44.l()
            r3.v()
            c.e.a.b.h.b.Tb$a r3 = new c.e.a.b.h.b.Tb$a     // Catch:{ all -> 0x0ed6 }
            r4 = 0
            r3.<init>(r1, r4)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.sc r5 = r44.l()     // Catch:{ all -> 0x0ed6 }
            long r6 = r1.y     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.d.d.r.a(r3)     // Catch:{ all -> 0x0ed6 }
            r5.l()     // Catch:{ all -> 0x0ed6 }
            r5.s()     // Catch:{ all -> 0x0ed6 }
            r9 = -1
            r11 = 2
            r12 = 0
            r13 = 1
            android.database.sqlite.SQLiteDatabase r15 = r5.x()     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            boolean r14 = android.text.TextUtils.isEmpty(r4)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            if (r14 == 0) goto L_0x00a1
            int r14 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r14 == 0) goto L_0x004d
            java.lang.String[] r14 = new java.lang.String[r11]     // Catch:{ SQLiteException -> 0x0047, all -> 0x0042 }
            java.lang.String r16 = java.lang.String.valueOf(r6)     // Catch:{ SQLiteException -> 0x0047, all -> 0x0042 }
            r14[r12] = r16     // Catch:{ SQLiteException -> 0x0047, all -> 0x0042 }
            java.lang.String r16 = java.lang.String.valueOf(r46)     // Catch:{ SQLiteException -> 0x0047, all -> 0x0042 }
            r14[r13] = r16     // Catch:{ SQLiteException -> 0x0047, all -> 0x0042 }
            goto L_0x0055
        L_0x0042:
            r0 = move-exception
            r5 = r1
            r9 = r4
            goto L_0x0244
        L_0x0047:
            r0 = move-exception
            r8 = r4
            r9 = r8
        L_0x004a:
            r4 = r0
            goto L_0x024b
        L_0x004d:
            java.lang.String[] r14 = new java.lang.String[r13]     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            java.lang.String r16 = java.lang.String.valueOf(r46)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            r14[r12] = r16     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
        L_0x0055:
            int r16 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r16 == 0) goto L_0x005c
            java.lang.String r16 = "rowid <= ? and "
            goto L_0x005e
        L_0x005c:
            java.lang.String r16 = ""
        L_0x005e:
            r45 = r16
            int r8 = r45.length()     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            int r8 = r8 + 148
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            r4.<init>(r8)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            java.lang.String r8 = "select app_id, metadata_fingerprint from raw_events where "
            r4.append(r8)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            r8 = r45
            r4.append(r8)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            java.lang.String r8 = "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"
            r4.append(r8)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            java.lang.String r4 = r4.toString()     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            android.database.Cursor r4 = r15.rawQuery(r4, r14)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            boolean r8 = r4.moveToFirst()     // Catch:{ SQLiteException -> 0x023c, all -> 0x0042 }
            if (r8 != 0) goto L_0x008f
            if (r4 == 0) goto L_0x0261
            r4.close()     // Catch:{ all -> 0x0ed6 }
            goto L_0x0261
        L_0x008f:
            java.lang.String r8 = r4.getString(r12)     // Catch:{ SQLiteException -> 0x023c, all -> 0x0042 }
            java.lang.String r14 = r4.getString(r13)     // Catch:{ SQLiteException -> 0x009e, all -> 0x0042 }
            r4.close()     // Catch:{ SQLiteException -> 0x009e, all -> 0x0042 }
            r9 = r4
            r4 = r8
            r8 = r14
            goto L_0x00f6
        L_0x009e:
            r0 = move-exception
            r9 = r4
            goto L_0x004a
        L_0x00a1:
            int r4 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r4 == 0) goto L_0x00b1
            java.lang.String[] r4 = new java.lang.String[r11]     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            r8 = 0
            r4[r12] = r8     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            java.lang.String r8 = java.lang.String.valueOf(r6)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            r4[r13] = r8     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            goto L_0x00b6
        L_0x00b1:
            java.lang.String[] r4 = new java.lang.String[r13]     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            r8 = 0
            r4[r12] = r8     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
        L_0x00b6:
            int r8 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r8 == 0) goto L_0x00bd
            java.lang.String r8 = " and rowid <= ?"
            goto L_0x00bf
        L_0x00bd:
            java.lang.String r8 = ""
        L_0x00bf:
            int r14 = r8.length()     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            int r14 = r14 + 84
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            r9.<init>(r14)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            java.lang.String r10 = "select metadata_fingerprint from raw_events where app_id = ?"
            r9.append(r10)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            r9.append(r8)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            java.lang.String r8 = " order by rowid limit 1;"
            r9.append(r8)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            java.lang.String r8 = r9.toString()     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            android.database.Cursor r4 = r15.rawQuery(r8, r4)     // Catch:{ SQLiteException -> 0x0247, all -> 0x0241 }
            boolean r8 = r4.moveToFirst()     // Catch:{ SQLiteException -> 0x023c, all -> 0x0042 }
            if (r8 != 0) goto L_0x00ec
            if (r4 == 0) goto L_0x0261
            r4.close()     // Catch:{ all -> 0x0ed6 }
            goto L_0x0261
        L_0x00ec:
            java.lang.String r14 = r4.getString(r12)     // Catch:{ SQLiteException -> 0x023c, all -> 0x0042 }
            r4.close()     // Catch:{ SQLiteException -> 0x023c, all -> 0x0042 }
            r9 = r4
            r8 = r14
            r4 = 0
        L_0x00f6:
            java.lang.String r10 = "raw_events_metadata"
            java.lang.String[] r14 = new java.lang.String[r13]     // Catch:{ SQLiteException -> 0x0238 }
            java.lang.String r16 = "metadata"
            r14[r12] = r16     // Catch:{ SQLiteException -> 0x0238 }
            java.lang.String r17 = "app_id = ? and metadata_fingerprint = ?"
            java.lang.String[] r13 = new java.lang.String[r11]     // Catch:{ SQLiteException -> 0x0238 }
            r13[r12] = r4     // Catch:{ SQLiteException -> 0x0238 }
            r16 = 1
            r13[r16] = r8     // Catch:{ SQLiteException -> 0x0238 }
            r19 = 0
            r20 = 0
            java.lang.String r21 = "rowid"
            java.lang.String r22 = "2"
            r16 = r14
            r14 = r15
            r24 = r15
            r15 = r10
            r18 = r13
            android.database.Cursor r9 = r14.query(r15, r16, r17, r18, r19, r20, r21, r22)     // Catch:{ SQLiteException -> 0x0238 }
            boolean r10 = r9.moveToFirst()     // Catch:{ SQLiteException -> 0x0238 }
            if (r10 != 0) goto L_0x013a
            c.e.a.b.h.b.t r6 = r5.e()     // Catch:{ SQLiteException -> 0x0238 }
            c.e.a.b.h.b.v r6 = r6.t()     // Catch:{ SQLiteException -> 0x0238 }
            java.lang.String r7 = "Raw event metadata record is missing. appId"
            java.lang.Object r8 = c.e.a.b.h.b.C0957t.a((java.lang.String) r4)     // Catch:{ SQLiteException -> 0x0238 }
            r6.a(r7, r8)     // Catch:{ SQLiteException -> 0x0238 }
            if (r9 == 0) goto L_0x0261
            r9.close()     // Catch:{ all -> 0x0ed6 }
            goto L_0x0261
        L_0x013a:
            byte[] r10 = r9.getBlob(r12)     // Catch:{ SQLiteException -> 0x0238 }
            c.e.a.b.g.f.da r10 = c.e.a.b.g.f.C0811da.a((byte[]) r10)     // Catch:{ IOException -> 0x021f }
            boolean r13 = r9.moveToNext()     // Catch:{ SQLiteException -> 0x0238 }
            if (r13 == 0) goto L_0x0159
            c.e.a.b.h.b.t r13 = r5.e()     // Catch:{ SQLiteException -> 0x0238 }
            c.e.a.b.h.b.v r13 = r13.w()     // Catch:{ SQLiteException -> 0x0238 }
            java.lang.String r14 = "Get multiple raw event metadata records, expected one. appId"
            java.lang.Object r15 = c.e.a.b.h.b.C0957t.a((java.lang.String) r4)     // Catch:{ SQLiteException -> 0x0238 }
            r13.a(r14, r15)     // Catch:{ SQLiteException -> 0x0238 }
        L_0x0159:
            r9.close()     // Catch:{ SQLiteException -> 0x0238 }
            r3.a(r10)     // Catch:{ SQLiteException -> 0x0238 }
            r13 = -1
            int r10 = (r6 > r13 ? 1 : (r6 == r13 ? 0 : -1))
            if (r10 == 0) goto L_0x017a
            java.lang.String r10 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?"
            r13 = 3
            java.lang.String[] r14 = new java.lang.String[r13]     // Catch:{ SQLiteException -> 0x0238 }
            r14[r12] = r4     // Catch:{ SQLiteException -> 0x0238 }
            r13 = 1
            r14[r13] = r8     // Catch:{ SQLiteException -> 0x0238 }
            java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch:{ SQLiteException -> 0x0238 }
            r14[r11] = r6     // Catch:{ SQLiteException -> 0x0238 }
            r17 = r10
            r18 = r14
            goto L_0x0187
        L_0x017a:
            java.lang.String r6 = "app_id = ? and metadata_fingerprint = ?"
            java.lang.String[] r7 = new java.lang.String[r11]     // Catch:{ SQLiteException -> 0x0238 }
            r7[r12] = r4     // Catch:{ SQLiteException -> 0x0238 }
            r10 = 1
            r7[r10] = r8     // Catch:{ SQLiteException -> 0x0238 }
            r17 = r6
            r18 = r7
        L_0x0187:
            java.lang.String r15 = "raw_events"
            r6 = 4
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch:{ SQLiteException -> 0x0238 }
            java.lang.String r7 = "rowid"
            r6[r12] = r7     // Catch:{ SQLiteException -> 0x0238 }
            java.lang.String r7 = "name"
            r8 = 1
            r6[r8] = r7     // Catch:{ SQLiteException -> 0x0238 }
            java.lang.String r7 = "timestamp"
            r6[r11] = r7     // Catch:{ SQLiteException -> 0x0238 }
            java.lang.String r7 = "data"
            r8 = 3
            r6[r8] = r7     // Catch:{ SQLiteException -> 0x0238 }
            r19 = 0
            r20 = 0
            java.lang.String r21 = "rowid"
            r22 = 0
            r14 = r24
            r16 = r6
            android.database.Cursor r6 = r14.query(r15, r16, r17, r18, r19, r20, r21, r22)     // Catch:{ SQLiteException -> 0x0238 }
            boolean r7 = r6.moveToFirst()     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            if (r7 != 0) goto L_0x01cc
            c.e.a.b.h.b.t r7 = r5.e()     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            c.e.a.b.h.b.v r7 = r7.w()     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            java.lang.String r8 = "Raw event data disappeared while in transaction. appId"
            java.lang.Object r9 = c.e.a.b.h.b.C0957t.a((java.lang.String) r4)     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            r7.a(r8, r9)     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            if (r6 == 0) goto L_0x0261
            r6.close()     // Catch:{ all -> 0x0ed6 }
            goto L_0x0261
        L_0x01cc:
            long r7 = r6.getLong(r12)     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            r9 = 3
            byte[] r10 = r6.getBlob(r9)     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            c.e.a.b.g.f.ba r9 = c.e.a.b.g.f.C0803ba.a((byte[]) r10)     // Catch:{ IOException -> 0x01f7 }
            r10 = 1
            java.lang.String r13 = r6.getString(r10)     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            r9.f10345e = r13     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            long r13 = r6.getLong(r11)     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            java.lang.Long r10 = java.lang.Long.valueOf(r13)     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            r9.f10346f = r10     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            boolean r7 = r3.a(r7, r9)     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            if (r7 != 0) goto L_0x020a
            if (r6 == 0) goto L_0x0261
            r6.close()     // Catch:{ all -> 0x0ed6 }
            goto L_0x0261
        L_0x01f7:
            r0 = move-exception
            r7 = r0
            c.e.a.b.h.b.t r8 = r5.e()     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            c.e.a.b.h.b.v r8 = r8.t()     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            java.lang.String r9 = "Data loss. Failed to merge raw event. appId"
            java.lang.Object r10 = c.e.a.b.h.b.C0957t.a((java.lang.String) r4)     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            r8.a(r9, r10, r7)     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
        L_0x020a:
            boolean r7 = r6.moveToNext()     // Catch:{ SQLiteException -> 0x021a, all -> 0x0216 }
            if (r7 != 0) goto L_0x01cc
            if (r6 == 0) goto L_0x0261
            r6.close()     // Catch:{ all -> 0x0ed6 }
            goto L_0x0261
        L_0x0216:
            r0 = move-exception
            r5 = r1
            r9 = r6
            goto L_0x0244
        L_0x021a:
            r0 = move-exception
            r8 = r4
            r9 = r6
            goto L_0x004a
        L_0x021f:
            r0 = move-exception
            r6 = r0
            c.e.a.b.h.b.t r7 = r5.e()     // Catch:{ SQLiteException -> 0x0238 }
            c.e.a.b.h.b.v r7 = r7.t()     // Catch:{ SQLiteException -> 0x0238 }
            java.lang.String r8 = "Data loss. Failed to merge raw event metadata. appId"
            java.lang.Object r10 = c.e.a.b.h.b.C0957t.a((java.lang.String) r4)     // Catch:{ SQLiteException -> 0x0238 }
            r7.a(r8, r10, r6)     // Catch:{ SQLiteException -> 0x0238 }
            if (r9 == 0) goto L_0x0261
            r9.close()     // Catch:{ all -> 0x0ed6 }
            goto L_0x0261
        L_0x0238:
            r0 = move-exception
            r8 = r4
            goto L_0x004a
        L_0x023c:
            r0 = move-exception
            r9 = r4
            r8 = 0
            goto L_0x004a
        L_0x0241:
            r0 = move-exception
            r5 = r1
            r9 = 0
        L_0x0244:
            r1 = r0
            goto L_0x0ece
        L_0x0247:
            r0 = move-exception
            r4 = r0
            r8 = 0
            r9 = 0
        L_0x024b:
            c.e.a.b.h.b.t r5 = r5.e()     // Catch:{ all -> 0x0eca }
            c.e.a.b.h.b.v r5 = r5.t()     // Catch:{ all -> 0x0eca }
            java.lang.String r6 = "Data loss. Error selecting raw event. appId"
            java.lang.Object r7 = c.e.a.b.h.b.C0957t.a((java.lang.String) r8)     // Catch:{ all -> 0x0eca }
            r5.a(r6, r7, r4)     // Catch:{ all -> 0x0eca }
            if (r9 == 0) goto L_0x0261
            r9.close()     // Catch:{ all -> 0x0ed6 }
        L_0x0261:
            java.util.List<c.e.a.b.g.f.ba> r4 = r3.f10757c     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x0270
            java.util.List<c.e.a.b.g.f.ba> r4 = r3.f10757c     // Catch:{ all -> 0x0ed6 }
            boolean r4 = r4.isEmpty()     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x026e
            goto L_0x0270
        L_0x026e:
            r4 = 0
            goto L_0x0271
        L_0x0270:
            r4 = 1
        L_0x0271:
            if (r4 != 0) goto L_0x0eb9
            c.e.a.b.g.f.da r4 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.util.List<c.e.a.b.g.f.ba> r5 = r3.f10757c     // Catch:{ all -> 0x0ed6 }
            int r5 = r5.size()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.ba[] r5 = new c.e.a.b.g.f.C0803ba[r5]     // Catch:{ all -> 0x0ed6 }
            r4.f10370e = r5     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.pc r5 = r5.k()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = r4.r     // Catch:{ all -> 0x0ed6 }
            boolean r5 = r5.h(r6)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.pc r6 = r6.k()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r7 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r7 = r7.r     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.k$a<java.lang.Boolean> r8 = c.e.a.b.h.b.C0931k.xa     // Catch:{ all -> 0x0ed6 }
            boolean r6 = r6.e(r7, r8)     // Catch:{ all -> 0x0ed6 }
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r13 = 0
            r14 = 0
        L_0x02a2:
            java.util.List<c.e.a.b.g.f.ba> r12 = r3.f10757c     // Catch:{ all -> 0x0ed6 }
            int r12 = r12.size()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r11 = "_et"
            r18 = r13
            java.lang.String r13 = "_e"
            r19 = r14
            if (r9 >= r12) goto L_0x07a3
            java.util.List<c.e.a.b.g.f.ba> r12 = r3.f10757c     // Catch:{ all -> 0x0ed6 }
            java.lang.Object r12 = r12.get(r9)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.ba r12 = (c.e.a.b.g.f.C0803ba) r12     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.T r14 = r44.m()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r15 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r15 = r15.r     // Catch:{ all -> 0x0ed6 }
            r24 = r2
            java.lang.String r2 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            boolean r2 = r14.b(r15, r2)     // Catch:{ all -> 0x0ed6 }
            java.lang.String r14 = "_err"
            if (r2 == 0) goto L_0x0343
            c.e.a.b.h.b.Y r2 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r2 = r2.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r2 = r2.w()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r11 = "Dropping blacklisted raw event. appId"
            c.e.a.b.g.f.da r13 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r13 = r13.r     // Catch:{ all -> 0x0ed6 }
            java.lang.Object r13 = c.e.a.b.h.b.C0957t.a((java.lang.String) r13)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.Y r15 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.r r15 = r15.h()     // Catch:{ all -> 0x0ed6 }
            r25 = r9
            java.lang.String r9 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            java.lang.String r9 = r15.a((java.lang.String) r9)     // Catch:{ all -> 0x0ed6 }
            r2.a(r11, r13, r9)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.T r2 = r44.m()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r9 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r9 = r9.r     // Catch:{ all -> 0x0ed6 }
            boolean r2 = r2.h(r9)     // Catch:{ all -> 0x0ed6 }
            if (r2 != 0) goto L_0x0312
            c.e.a.b.h.b.T r2 = r44.m()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r9 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r9 = r9.r     // Catch:{ all -> 0x0ed6 }
            boolean r2 = r2.i(r9)     // Catch:{ all -> 0x0ed6 }
            if (r2 == 0) goto L_0x0310
            goto L_0x0312
        L_0x0310:
            r2 = 0
            goto L_0x0313
        L_0x0312:
            r2 = 1
        L_0x0313:
            if (r2 != 0) goto L_0x0336
            java.lang.String r2 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            boolean r2 = r14.equals(r2)     // Catch:{ all -> 0x0ed6 }
            if (r2 != 0) goto L_0x0336
            c.e.a.b.h.b.Y r2 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.cc r26 = r2.i()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r2 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r2 = r2.r     // Catch:{ all -> 0x0ed6 }
            r28 = 11
            java.lang.String r29 = "_ev"
            java.lang.String r9 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            r31 = 0
            r27 = r2
            r30 = r9
            r26.a((java.lang.String) r27, (int) r28, (java.lang.String) r29, (java.lang.String) r30, (int) r31)     // Catch:{ all -> 0x0ed6 }
        L_0x0336:
            r30 = r5
            r29 = r6
            r13 = r18
            r14 = r19
            r5 = r4
            r4 = r7
            r7 = 3
            goto L_0x0796
        L_0x0343:
            r25 = r9
            c.e.a.b.h.b.T r2 = r44.m()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r9 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r9 = r9.r     // Catch:{ all -> 0x0ed6 }
            java.lang.String r15 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            boolean r2 = r2.c(r9, r15)     // Catch:{ all -> 0x0ed6 }
            java.lang.String r9 = "_c"
            if (r2 != 0) goto L_0x03af
            r44.j()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r15 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.d.d.r.b((java.lang.String) r15)     // Catch:{ all -> 0x0ed6 }
            r27 = r10
            int r10 = r15.hashCode()     // Catch:{ all -> 0x0ed6 }
            r28 = r4
            r4 = 94660(0x171c4, float:1.32647E-40)
            if (r10 == r4) goto L_0x038b
            r4 = 95025(0x17331, float:1.33158E-40)
            if (r10 == r4) goto L_0x0381
            r4 = 95027(0x17333, float:1.33161E-40)
            if (r10 == r4) goto L_0x0377
            goto L_0x0395
        L_0x0377:
            java.lang.String r4 = "_ui"
            boolean r4 = r15.equals(r4)     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x0395
            r4 = 1
            goto L_0x0396
        L_0x0381:
            java.lang.String r4 = "_ug"
            boolean r4 = r15.equals(r4)     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x0395
            r4 = 2
            goto L_0x0396
        L_0x038b:
            java.lang.String r4 = "_in"
            boolean r4 = r15.equals(r4)     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x0395
            r4 = 0
            goto L_0x0396
        L_0x0395:
            r4 = -1
        L_0x0396:
            if (r4 == 0) goto L_0x03a0
            r10 = 1
            if (r4 == r10) goto L_0x03a0
            r10 = 2
            if (r4 == r10) goto L_0x03a0
            r4 = 0
            goto L_0x03a1
        L_0x03a0:
            r4 = 1
        L_0x03a1:
            if (r4 == 0) goto L_0x03a4
            goto L_0x03b3
        L_0x03a4:
            r30 = r5
            r29 = r6
            r31 = r7
            r32 = r8
            r8 = r11
            goto L_0x05dd
        L_0x03af:
            r28 = r4
            r27 = r10
        L_0x03b3:
            c.e.a.b.g.f.K[] r4 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            if (r4 != 0) goto L_0x03bc
            r4 = 0
            c.e.a.b.g.f.K[] r10 = new c.e.a.b.g.f.K[r4]     // Catch:{ all -> 0x0ed6 }
            r12.f10344d = r10     // Catch:{ all -> 0x0ed6 }
        L_0x03bc:
            r29 = r6
            r4 = 0
            r10 = 0
            r15 = 0
        L_0x03c1:
            c.e.a.b.g.f.K[] r6 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            int r6 = r6.length     // Catch:{ all -> 0x0ed6 }
            r30 = r5
            java.lang.String r5 = "_r"
            if (r4 >= r6) goto L_0x0410
            c.e.a.b.g.f.K[] r6 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            r6 = r6[r4]     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.nb$a r6 = r6.k()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K$a r6 = (c.e.a.b.g.f.K.a) r6     // Catch:{ all -> 0x0ed6 }
            r31 = r7
            java.lang.String r7 = r6.j()     // Catch:{ all -> 0x0ed6 }
            boolean r7 = r9.equals(r7)     // Catch:{ all -> 0x0ed6 }
            if (r7 == 0) goto L_0x03e9
            r32 = r8
            r7 = 1
            r6.a((long) r7)     // Catch:{ all -> 0x0ed6 }
            r10 = 1
            goto L_0x03fb
        L_0x03e9:
            r32 = r8
            java.lang.String r7 = r6.j()     // Catch:{ all -> 0x0ed6 }
            boolean r5 = r5.equals(r7)     // Catch:{ all -> 0x0ed6 }
            if (r5 == 0) goto L_0x03fb
            r7 = 1
            r6.a((long) r7)     // Catch:{ all -> 0x0ed6 }
            r15 = 1
        L_0x03fb:
            c.e.a.b.g.f.K[] r5 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.Sb r6 = r6.o()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.nb r6 = (c.e.a.b.g.f.C0852nb) r6     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K r6 = (c.e.a.b.g.f.K) r6     // Catch:{ all -> 0x0ed6 }
            r5[r4] = r6     // Catch:{ all -> 0x0ed6 }
            int r4 = r4 + 1
            r5 = r30
            r7 = r31
            r8 = r32
            goto L_0x03c1
        L_0x0410:
            r31 = r7
            r32 = r8
            if (r10 != 0) goto L_0x045b
            if (r2 == 0) goto L_0x045b
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r4 = r4.B()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = "Marking event as conversion"
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.r r7 = r7.h()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            java.lang.String r7 = r7.a((java.lang.String) r8)     // Catch:{ all -> 0x0ed6 }
            r4.a(r6, r7)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r4 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r6 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            int r6 = r6.length     // Catch:{ all -> 0x0ed6 }
            r7 = 1
            int r6 = r6 + r7
            java.lang.Object[] r4 = java.util.Arrays.copyOf(r4, r6)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r4 = (c.e.a.b.g.f.K[]) r4     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K$a r6 = c.e.a.b.g.f.K.B()     // Catch:{ all -> 0x0ed6 }
            r6.a((java.lang.String) r9)     // Catch:{ all -> 0x0ed6 }
            r7 = 1
            r6.a((long) r7)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.Sb r6 = r6.o()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.nb r6 = (c.e.a.b.g.f.C0852nb) r6     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K r6 = (c.e.a.b.g.f.K) r6     // Catch:{ all -> 0x0ed6 }
            int r7 = r4.length     // Catch:{ all -> 0x0ed6 }
            r8 = 1
            int r7 = r7 - r8
            r4[r7] = r6     // Catch:{ all -> 0x0ed6 }
            r12.f10344d = r4     // Catch:{ all -> 0x0ed6 }
        L_0x045b:
            if (r15 != 0) goto L_0x04a0
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r4 = r4.B()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = "Marking event as real-time"
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.r r7 = r7.h()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            java.lang.String r7 = r7.a((java.lang.String) r8)     // Catch:{ all -> 0x0ed6 }
            r4.a(r6, r7)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r4 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r6 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            int r6 = r6.length     // Catch:{ all -> 0x0ed6 }
            r7 = 1
            int r6 = r6 + r7
            java.lang.Object[] r4 = java.util.Arrays.copyOf(r4, r6)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r4 = (c.e.a.b.g.f.K[]) r4     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K$a r6 = c.e.a.b.g.f.K.B()     // Catch:{ all -> 0x0ed6 }
            r6.a((java.lang.String) r5)     // Catch:{ all -> 0x0ed6 }
            r7 = 1
            r6.a((long) r7)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.Sb r6 = r6.o()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.nb r6 = (c.e.a.b.g.f.C0852nb) r6     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K r6 = (c.e.a.b.g.f.K) r6     // Catch:{ all -> 0x0ed6 }
            int r7 = r4.length     // Catch:{ all -> 0x0ed6 }
            r8 = 1
            int r7 = r7 - r8
            r4[r7] = r6     // Catch:{ all -> 0x0ed6 }
            r12.f10344d = r4     // Catch:{ all -> 0x0ed6 }
        L_0x04a0:
            c.e.a.b.h.b.sc r33 = r44.l()     // Catch:{ all -> 0x0ed6 }
            long r34 = r44.s()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r4 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r4 = r4.r     // Catch:{ all -> 0x0ed6 }
            r37 = 0
            r38 = 0
            r39 = 0
            r40 = 0
            r41 = 1
            r36 = r4
            c.e.a.b.h.b.tc r4 = r33.a(r34, r36, r37, r38, r39, r40, r41)     // Catch:{ all -> 0x0ed6 }
            long r6 = r4.f11070e     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.pc r4 = r4.k()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r8 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r8.r     // Catch:{ all -> 0x0ed6 }
            int r4 = r4.d(r8)     // Catch:{ all -> 0x0ed6 }
            r8 = r11
            long r10 = (long) r4     // Catch:{ all -> 0x0ed6 }
            int r4 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r4 <= 0) goto L_0x0507
            r4 = 0
        L_0x04d3:
            c.e.a.b.g.f.K[] r6 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            int r6 = r6.length     // Catch:{ all -> 0x0ed6 }
            if (r4 >= r6) goto L_0x0509
            c.e.a.b.g.f.K[] r6 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            r6 = r6[r4]     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = r6.q()     // Catch:{ all -> 0x0ed6 }
            boolean r6 = r5.equals(r6)     // Catch:{ all -> 0x0ed6 }
            if (r6 == 0) goto L_0x0504
            c.e.a.b.g.f.K[] r5 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            int r5 = r5.length     // Catch:{ all -> 0x0ed6 }
            r6 = 1
            int r5 = r5 - r6
            c.e.a.b.g.f.K[] r5 = new c.e.a.b.g.f.K[r5]     // Catch:{ all -> 0x0ed6 }
            if (r4 <= 0) goto L_0x04f5
            c.e.a.b.g.f.K[] r6 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            r7 = 0
            java.lang.System.arraycopy(r6, r7, r5, r7, r4)     // Catch:{ all -> 0x0ed6 }
        L_0x04f5:
            int r6 = r5.length     // Catch:{ all -> 0x0ed6 }
            if (r4 >= r6) goto L_0x0501
            c.e.a.b.g.f.K[] r6 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            int r7 = r4 + 1
            int r10 = r5.length     // Catch:{ all -> 0x0ed6 }
            int r10 = r10 - r4
            java.lang.System.arraycopy(r6, r7, r5, r4, r10)     // Catch:{ all -> 0x0ed6 }
        L_0x0501:
            r12.f10344d = r5     // Catch:{ all -> 0x0ed6 }
            goto L_0x0509
        L_0x0504:
            int r4 = r4 + 1
            goto L_0x04d3
        L_0x0507:
            r18 = 1
        L_0x0509:
            java.lang.String r4 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            boolean r4 = c.e.a.b.h.b.cc.a((java.lang.String) r4)     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x05dd
            if (r2 == 0) goto L_0x05dd
            c.e.a.b.h.b.sc r33 = r44.l()     // Catch:{ all -> 0x0ed6 }
            long r34 = r44.s()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r4 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r4 = r4.r     // Catch:{ all -> 0x0ed6 }
            r37 = 0
            r38 = 0
            r39 = 1
            r40 = 0
            r41 = 0
            r36 = r4
            c.e.a.b.h.b.tc r4 = r33.a(r34, r36, r37, r38, r39, r40, r41)     // Catch:{ all -> 0x0ed6 }
            long r4 = r4.f11068c     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.pc r6 = r6.k()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r7 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r7 = r7.r     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.k$a<java.lang.Integer> r10 = c.e.a.b.h.b.C0931k.B     // Catch:{ all -> 0x0ed6 }
            int r6 = r6.b(r7, r10)     // Catch:{ all -> 0x0ed6 }
            long r6 = (long) r6     // Catch:{ all -> 0x0ed6 }
            int r10 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r10 <= 0) goto L_0x05dd
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r4 = r4.w()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r5 = "Too many conversions. Not logging as conversion. appId"
            c.e.a.b.g.f.da r6 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = r6.r     // Catch:{ all -> 0x0ed6 }
            java.lang.Object r6 = c.e.a.b.h.b.C0957t.a((java.lang.String) r6)     // Catch:{ all -> 0x0ed6 }
            r4.a(r5, r6)     // Catch:{ all -> 0x0ed6 }
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = -1
        L_0x0561:
            c.e.a.b.g.f.K[] r10 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            int r10 = r10.length     // Catch:{ all -> 0x0ed6 }
            if (r4 >= r10) goto L_0x058a
            c.e.a.b.g.f.K[] r10 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            r10 = r10[r4]     // Catch:{ all -> 0x0ed6 }
            java.lang.String r11 = r10.q()     // Catch:{ all -> 0x0ed6 }
            boolean r11 = r9.equals(r11)     // Catch:{ all -> 0x0ed6 }
            if (r11 == 0) goto L_0x057c
            c.e.a.b.g.f.nb$a r6 = r10.k()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K$a r6 = (c.e.a.b.g.f.K.a) r6     // Catch:{ all -> 0x0ed6 }
            r7 = r4
            goto L_0x0587
        L_0x057c:
            java.lang.String r10 = r10.q()     // Catch:{ all -> 0x0ed6 }
            boolean r10 = r14.equals(r10)     // Catch:{ all -> 0x0ed6 }
            if (r10 == 0) goto L_0x0587
            r5 = 1
        L_0x0587:
            int r4 = r4 + 1
            goto L_0x0561
        L_0x058a:
            if (r5 == 0) goto L_0x05a7
            if (r6 == 0) goto L_0x05a7
            c.e.a.b.g.f.K[] r4 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            r5 = 1
            c.e.a.b.g.f.K[] r7 = new c.e.a.b.g.f.K[r5]     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.Sb r5 = r6.o()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.nb r5 = (c.e.a.b.g.f.C0852nb) r5     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K r5 = (c.e.a.b.g.f.K) r5     // Catch:{ all -> 0x0ed6 }
            r6 = 0
            r7[r6] = r5     // Catch:{ all -> 0x0ed6 }
            java.lang.Object[] r4 = c.e.a.b.d.g.b.a((T[]) r4, (T[]) r7)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r4 = (c.e.a.b.g.f.K[]) r4     // Catch:{ all -> 0x0ed6 }
            r12.f10344d = r4     // Catch:{ all -> 0x0ed6 }
            goto L_0x05dd
        L_0x05a7:
            if (r6 == 0) goto L_0x05c6
            java.lang.Object r4 = r6.clone()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.nb$a r4 = (c.e.a.b.g.f.C0852nb.a) r4     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K$a r4 = (c.e.a.b.g.f.K.a) r4     // Catch:{ all -> 0x0ed6 }
            r4.a((java.lang.String) r14)     // Catch:{ all -> 0x0ed6 }
            r5 = 10
            r4.a((long) r5)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.Sb r4 = r4.o()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.nb r4 = (c.e.a.b.g.f.C0852nb) r4     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K r4 = (c.e.a.b.g.f.K) r4     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r5 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            r5[r7] = r4     // Catch:{ all -> 0x0ed6 }
            goto L_0x05dd
        L_0x05c6:
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r4 = r4.t()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r5 = "Did not find conversion parameter. appId"
            c.e.a.b.g.f.da r6 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = r6.r     // Catch:{ all -> 0x0ed6 }
            java.lang.Object r6 = c.e.a.b.h.b.C0957t.a((java.lang.String) r6)     // Catch:{ all -> 0x0ed6 }
            r4.a(r5, r6)     // Catch:{ all -> 0x0ed6 }
        L_0x05dd:
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.pc r4 = r4.k()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r5 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r5 = r5.r     // Catch:{ all -> 0x0ed6 }
            boolean r4 = r4.q(r5)     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x069f
            if (r2 == 0) goto L_0x069f
            c.e.a.b.g.f.K[] r2 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            r4 = 0
            r5 = -1
            r6 = -1
        L_0x05f4:
            int r7 = r2.length     // Catch:{ all -> 0x0ed6 }
            if (r4 >= r7) goto L_0x0619
            java.lang.String r7 = "value"
            r10 = r2[r4]     // Catch:{ all -> 0x0ed6 }
            java.lang.String r10 = r10.q()     // Catch:{ all -> 0x0ed6 }
            boolean r7 = r7.equals(r10)     // Catch:{ all -> 0x0ed6 }
            if (r7 == 0) goto L_0x0607
            r5 = r4
            goto L_0x0616
        L_0x0607:
            java.lang.String r7 = "currency"
            r10 = r2[r4]     // Catch:{ all -> 0x0ed6 }
            java.lang.String r10 = r10.q()     // Catch:{ all -> 0x0ed6 }
            boolean r7 = r7.equals(r10)     // Catch:{ all -> 0x0ed6 }
            if (r7 == 0) goto L_0x0616
            r6 = r4
        L_0x0616:
            int r4 = r4 + 1
            goto L_0x05f4
        L_0x0619:
            r4 = -1
            if (r5 == r4) goto L_0x064b
            r4 = r2[r5]     // Catch:{ all -> 0x0ed6 }
            boolean r4 = r4.v()     // Catch:{ all -> 0x0ed6 }
            if (r4 != 0) goto L_0x064d
            r4 = r2[r5]     // Catch:{ all -> 0x0ed6 }
            boolean r4 = r4.y()     // Catch:{ all -> 0x0ed6 }
            if (r4 != 0) goto L_0x064d
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r4 = r4.y()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = "Value must be specified with a numeric type."
            r4.a(r6)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r2 = a((c.e.a.b.g.f.K[]) r2, (int) r5)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r2 = a((c.e.a.b.g.f.K[]) r2, (java.lang.String) r9)     // Catch:{ all -> 0x0ed6 }
            r4 = 18
            java.lang.String r5 = "value"
            c.e.a.b.g.f.K[] r2 = a(r2, r4, r5)     // Catch:{ all -> 0x0ed6 }
        L_0x064b:
            r7 = 3
            goto L_0x069c
        L_0x064d:
            r4 = -1
            if (r6 != r4) goto L_0x0653
            r4 = 1
            r7 = 3
            goto L_0x067b
        L_0x0653:
            r4 = r2[r6]     // Catch:{ all -> 0x0ed6 }
            java.lang.String r4 = r4.t()     // Catch:{ all -> 0x0ed6 }
            int r6 = r4.length()     // Catch:{ all -> 0x0ed6 }
            r7 = 3
            if (r6 == r7) goto L_0x0662
        L_0x0660:
            r4 = 1
            goto L_0x067b
        L_0x0662:
            r6 = 0
        L_0x0663:
            int r10 = r4.length()     // Catch:{ all -> 0x0ed6 }
            if (r6 >= r10) goto L_0x067a
            int r10 = r4.codePointAt(r6)     // Catch:{ all -> 0x0ed6 }
            boolean r11 = java.lang.Character.isLetter(r10)     // Catch:{ all -> 0x0ed6 }
            if (r11 != 0) goto L_0x0674
            goto L_0x0660
        L_0x0674:
            int r10 = java.lang.Character.charCount(r10)     // Catch:{ all -> 0x0ed6 }
            int r6 = r6 + r10
            goto L_0x0663
        L_0x067a:
            r4 = 0
        L_0x067b:
            if (r4 == 0) goto L_0x069c
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r4 = r4.y()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."
            r4.a(r6)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r2 = a((c.e.a.b.g.f.K[]) r2, (int) r5)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r2 = a((c.e.a.b.g.f.K[]) r2, (java.lang.String) r9)     // Catch:{ all -> 0x0ed6 }
            r4 = 19
            java.lang.String r5 = "currency"
            c.e.a.b.g.f.K[] r2 = a(r2, r4, r5)     // Catch:{ all -> 0x0ed6 }
        L_0x069c:
            r12.f10344d = r2     // Catch:{ all -> 0x0ed6 }
            goto L_0x06a0
        L_0x069f:
            r7 = 3
        L_0x06a0:
            c.e.a.b.h.b.Y r2 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.pc r2 = r2.k()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r4 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r4 = r4.r     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.k$a<java.lang.Boolean> r5 = c.e.a.b.h.b.C0931k.wa     // Catch:{ all -> 0x0ed6 }
            boolean r2 = r2.e(r4, r5)     // Catch:{ all -> 0x0ed6 }
            if (r2 == 0) goto L_0x072e
            java.lang.String r2 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            boolean r2 = r13.equals(r2)     // Catch:{ all -> 0x0ed6 }
            if (r2 == 0) goto L_0x06f0
            r44.j()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r2 = "_fr"
            c.e.a.b.g.f.K r2 = c.e.a.b.h.b.Zb.a((c.e.a.b.g.f.C0803ba) r12, (java.lang.String) r2)     // Catch:{ all -> 0x0ed6 }
            if (r2 != 0) goto L_0x06ed
            if (r32 == 0) goto L_0x06e9
            r2 = r32
            java.lang.Long r4 = r2.f10346f     // Catch:{ all -> 0x0ed6 }
            long r4 = r4.longValue()     // Catch:{ all -> 0x0ed6 }
            java.lang.Long r6 = r12.f10346f     // Catch:{ all -> 0x0ed6 }
            long r9 = r6.longValue()     // Catch:{ all -> 0x0ed6 }
            long r4 = r4 - r9
            long r4 = java.lang.Math.abs(r4)     // Catch:{ all -> 0x0ed6 }
            r9 = 1000(0x3e8, double:4.94E-321)
            int r6 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
            if (r6 > 0) goto L_0x06eb
            boolean r4 = r1.a((c.e.a.b.g.f.C0803ba) r12, (c.e.a.b.g.f.C0803ba) r2)     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x06eb
        L_0x06e6:
            r2 = 0
            r4 = 0
            goto L_0x0732
        L_0x06e9:
            r2 = r32
        L_0x06eb:
            r4 = r12
            goto L_0x0732
        L_0x06ed:
            r2 = r32
            goto L_0x072b
        L_0x06f0:
            r2 = r32
            java.lang.String r4 = "_vs"
            java.lang.String r5 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            boolean r4 = r4.equals(r5)     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x072b
            r44.j()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K r4 = c.e.a.b.h.b.Zb.a((c.e.a.b.g.f.C0803ba) r12, (java.lang.String) r8)     // Catch:{ all -> 0x0ed6 }
            if (r4 != 0) goto L_0x072b
            if (r31 == 0) goto L_0x0727
            r4 = r31
            java.lang.Long r2 = r4.f10346f     // Catch:{ all -> 0x0ed6 }
            long r5 = r2.longValue()     // Catch:{ all -> 0x0ed6 }
            java.lang.Long r2 = r12.f10346f     // Catch:{ all -> 0x0ed6 }
            long r9 = r2.longValue()     // Catch:{ all -> 0x0ed6 }
            long r5 = r5 - r9
            long r5 = java.lang.Math.abs(r5)     // Catch:{ all -> 0x0ed6 }
            r9 = 1000(0x3e8, double:4.94E-321)
            int r2 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r2 > 0) goto L_0x0729
            boolean r2 = r1.a((c.e.a.b.g.f.C0803ba) r4, (c.e.a.b.g.f.C0803ba) r12)     // Catch:{ all -> 0x0ed6 }
            if (r2 == 0) goto L_0x0729
            goto L_0x06e6
        L_0x0727:
            r4 = r31
        L_0x0729:
            r2 = r12
            goto L_0x0732
        L_0x072b:
            r4 = r31
            goto L_0x0732
        L_0x072e:
            r4 = r31
            r2 = r32
        L_0x0732:
            if (r30 == 0) goto L_0x0789
            if (r29 != 0) goto L_0x0789
            java.lang.String r5 = r12.f10345e     // Catch:{ all -> 0x0ed6 }
            boolean r5 = r13.equals(r5)     // Catch:{ all -> 0x0ed6 }
            if (r5 == 0) goto L_0x0789
            c.e.a.b.g.f.K[] r5 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            if (r5 == 0) goto L_0x0772
            c.e.a.b.g.f.K[] r5 = r12.f10344d     // Catch:{ all -> 0x0ed6 }
            int r5 = r5.length     // Catch:{ all -> 0x0ed6 }
            if (r5 != 0) goto L_0x0748
            goto L_0x0772
        L_0x0748:
            r44.j()     // Catch:{ all -> 0x0ed6 }
            java.lang.Object r5 = c.e.a.b.h.b.Zb.b(r12, r8)     // Catch:{ all -> 0x0ed6 }
            java.lang.Long r5 = (java.lang.Long) r5     // Catch:{ all -> 0x0ed6 }
            if (r5 != 0) goto L_0x076b
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r5 = r5.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r5 = r5.w()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = "Engagement event does not include duration. appId"
            c.e.a.b.g.f.da r8 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r8.r     // Catch:{ all -> 0x0ed6 }
            java.lang.Object r8 = c.e.a.b.h.b.C0957t.a((java.lang.String) r8)     // Catch:{ all -> 0x0ed6 }
            r5.a(r6, r8)     // Catch:{ all -> 0x0ed6 }
            goto L_0x0789
        L_0x076b:
            long r5 = r5.longValue()     // Catch:{ all -> 0x0ed6 }
            long r14 = r19 + r5
            goto L_0x078b
        L_0x0772:
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r5 = r5.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r5 = r5.w()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = "Engagement event does not contain any parameters. appId"
            c.e.a.b.g.f.da r8 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r8.r     // Catch:{ all -> 0x0ed6 }
            java.lang.Object r8 = c.e.a.b.h.b.C0957t.a((java.lang.String) r8)     // Catch:{ all -> 0x0ed6 }
            r5.a(r6, r8)     // Catch:{ all -> 0x0ed6 }
        L_0x0789:
            r14 = r19
        L_0x078b:
            r5 = r28
            c.e.a.b.g.f.ba[] r6 = r5.f10370e     // Catch:{ all -> 0x0ed6 }
            int r10 = r27 + 1
            r6[r27] = r12     // Catch:{ all -> 0x0ed6 }
            r8 = r2
            r13 = r18
        L_0x0796:
            int r9 = r25 + 1
            r7 = r4
            r4 = r5
            r2 = r24
            r6 = r29
            r5 = r30
            r11 = 2
            goto L_0x02a2
        L_0x07a3:
            r24 = r2
            r30 = r5
            r29 = r6
            r27 = r10
            r8 = r11
            r5 = r4
            if (r29 == 0) goto L_0x080e
            r14 = r19
            r10 = r27
            r2 = 0
        L_0x07b4:
            if (r2 >= r10) goto L_0x0812
            c.e.a.b.g.f.ba[] r4 = r5.f10370e     // Catch:{ all -> 0x0ed6 }
            r4 = r4[r2]     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = r4.f10345e     // Catch:{ all -> 0x0ed6 }
            boolean r6 = r13.equals(r6)     // Catch:{ all -> 0x0ed6 }
            if (r6 == 0) goto L_0x07df
            r44.j()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = "_fr"
            c.e.a.b.g.f.K r6 = c.e.a.b.h.b.Zb.a((c.e.a.b.g.f.C0803ba) r4, (java.lang.String) r6)     // Catch:{ all -> 0x0ed6 }
            if (r6 == 0) goto L_0x07df
            c.e.a.b.g.f.ba[] r4 = r5.f10370e     // Catch:{ all -> 0x0ed6 }
            int r6 = r2 + 1
            c.e.a.b.g.f.ba[] r7 = r5.f10370e     // Catch:{ all -> 0x0ed6 }
            int r9 = r10 - r2
            r11 = 1
            int r9 = r9 - r11
            java.lang.System.arraycopy(r4, r6, r7, r2, r9)     // Catch:{ all -> 0x0ed6 }
            int r10 = r10 + -1
            int r2 = r2 + -1
            goto L_0x080b
        L_0x07df:
            if (r30 == 0) goto L_0x080b
            r44.j()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K r4 = c.e.a.b.h.b.Zb.a((c.e.a.b.g.f.C0803ba) r4, (java.lang.String) r8)     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x080b
            boolean r6 = r4.v()     // Catch:{ all -> 0x0ed6 }
            if (r6 == 0) goto L_0x07f9
            long r6 = r4.w()     // Catch:{ all -> 0x0ed6 }
            java.lang.Long r4 = java.lang.Long.valueOf(r6)     // Catch:{ all -> 0x0ed6 }
            goto L_0x07fa
        L_0x07f9:
            r4 = 0
        L_0x07fa:
            if (r4 == 0) goto L_0x080b
            long r6 = r4.longValue()     // Catch:{ all -> 0x0ed6 }
            r11 = 0
            int r9 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
            if (r9 <= 0) goto L_0x080b
            long r6 = r4.longValue()     // Catch:{ all -> 0x0ed6 }
            long r14 = r14 + r6
        L_0x080b:
            r4 = 1
            int r2 = r2 + r4
            goto L_0x07b4
        L_0x080e:
            r14 = r19
            r10 = r27
        L_0x0812:
            java.util.List<c.e.a.b.g.f.ba> r2 = r3.f10757c     // Catch:{ all -> 0x0ed6 }
            int r2 = r2.size()     // Catch:{ all -> 0x0ed6 }
            if (r10 >= r2) goto L_0x0824
            c.e.a.b.g.f.ba[] r2 = r5.f10370e     // Catch:{ all -> 0x0ed6 }
            java.lang.Object[] r2 = java.util.Arrays.copyOf(r2, r10)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.ba[] r2 = (c.e.a.b.g.f.C0803ba[]) r2     // Catch:{ all -> 0x0ed6 }
            r5.f10370e = r2     // Catch:{ all -> 0x0ed6 }
        L_0x0824:
            if (r30 == 0) goto L_0x08fb
            c.e.a.b.h.b.sc r2 = r44.l()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r4 = r5.r     // Catch:{ all -> 0x0ed6 }
            r6 = r24
            c.e.a.b.h.b.bc r2 = r2.d(r4, r6)     // Catch:{ all -> 0x0ed6 }
            if (r2 == 0) goto L_0x085f
            java.lang.Object r4 = r2.f10834e     // Catch:{ all -> 0x0ed6 }
            if (r4 != 0) goto L_0x0839
            goto L_0x085f
        L_0x0839:
            c.e.a.b.h.b.bc r4 = new c.e.a.b.h.b.bc     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r5.r     // Catch:{ all -> 0x0ed6 }
            java.lang.String r9 = "auto"
            java.lang.String r10 = "_lte"
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.d.g.e r7 = r7.c()     // Catch:{ all -> 0x0ed6 }
            long r11 = r7.c()     // Catch:{ all -> 0x0ed6 }
            java.lang.Object r2 = r2.f10834e     // Catch:{ all -> 0x0ed6 }
            java.lang.Long r2 = (java.lang.Long) r2     // Catch:{ all -> 0x0ed6 }
            long r19 = r2.longValue()     // Catch:{ all -> 0x0ed6 }
            long r19 = r19 + r14
            java.lang.Long r13 = java.lang.Long.valueOf(r19)     // Catch:{ all -> 0x0ed6 }
            r7 = r4
            r7.<init>(r8, r9, r10, r11, r13)     // Catch:{ all -> 0x0ed6 }
            r2 = r4
            goto L_0x087c
        L_0x085f:
            c.e.a.b.h.b.bc r2 = new c.e.a.b.h.b.bc     // Catch:{ all -> 0x0ed6 }
            java.lang.String r4 = r5.r     // Catch:{ all -> 0x0ed6 }
            java.lang.String r26 = "auto"
            java.lang.String r27 = "_lte"
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.d.g.e r7 = r7.c()     // Catch:{ all -> 0x0ed6 }
            long r28 = r7.c()     // Catch:{ all -> 0x0ed6 }
            java.lang.Long r30 = java.lang.Long.valueOf(r14)     // Catch:{ all -> 0x0ed6 }
            r24 = r2
            r25 = r4
            r24.<init>(r25, r26, r27, r28, r30)     // Catch:{ all -> 0x0ed6 }
        L_0x087c:
            c.e.a.b.g.f.N$a r4 = c.e.a.b.g.f.N.D()     // Catch:{ all -> 0x0ed6 }
            r4.a((java.lang.String) r6)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.d.g.e r7 = r7.c()     // Catch:{ all -> 0x0ed6 }
            long r7 = r7.c()     // Catch:{ all -> 0x0ed6 }
            r4.a((long) r7)     // Catch:{ all -> 0x0ed6 }
            java.lang.Object r7 = r2.f10834e     // Catch:{ all -> 0x0ed6 }
            java.lang.Long r7 = (java.lang.Long) r7     // Catch:{ all -> 0x0ed6 }
            long r7 = r7.longValue()     // Catch:{ all -> 0x0ed6 }
            r4.b((long) r7)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.Sb r4 = r4.o()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.nb r4 = (c.e.a.b.g.f.C0852nb) r4     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N r4 = (c.e.a.b.g.f.N) r4     // Catch:{ all -> 0x0ed6 }
            r7 = 0
        L_0x08a4:
            c.e.a.b.g.f.N[] r8 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            int r8 = r8.length     // Catch:{ all -> 0x0ed6 }
            if (r7 >= r8) goto L_0x08c0
            c.e.a.b.g.f.N[] r8 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            r8 = r8[r7]     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r8.q()     // Catch:{ all -> 0x0ed6 }
            boolean r8 = r6.equals(r8)     // Catch:{ all -> 0x0ed6 }
            if (r8 == 0) goto L_0x08bd
            c.e.a.b.g.f.N[] r6 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            r6[r7] = r4     // Catch:{ all -> 0x0ed6 }
            r6 = 1
            goto L_0x08c1
        L_0x08bd:
            int r7 = r7 + 1
            goto L_0x08a4
        L_0x08c0:
            r6 = 0
        L_0x08c1:
            if (r6 != 0) goto L_0x08dd
            c.e.a.b.g.f.N[] r6 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N[] r7 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            int r7 = r7.length     // Catch:{ all -> 0x0ed6 }
            r8 = 1
            int r7 = r7 + r8
            java.lang.Object[] r6 = java.util.Arrays.copyOf(r6, r7)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N[] r6 = (c.e.a.b.g.f.N[]) r6     // Catch:{ all -> 0x0ed6 }
            r5.f10371f = r6     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N[] r6 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r7 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N[] r7 = r7.f10371f     // Catch:{ all -> 0x0ed6 }
            int r7 = r7.length     // Catch:{ all -> 0x0ed6 }
            r8 = 1
            int r7 = r7 - r8
            r6[r7] = r4     // Catch:{ all -> 0x0ed6 }
        L_0x08dd:
            r6 = 0
            int r4 = (r14 > r6 ? 1 : (r14 == r6 ? 0 : -1))
            if (r4 <= 0) goto L_0x08fb
            c.e.a.b.h.b.sc r4 = r44.l()     // Catch:{ all -> 0x0ed6 }
            r4.a((c.e.a.b.h.b.bc) r2)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.Y r4 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r4 = r4.A()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = "Updated lifetime engagement user property with value. Value"
            java.lang.Object r2 = r2.f10834e     // Catch:{ all -> 0x0ed6 }
            r4.a(r6, r2)     // Catch:{ all -> 0x0ed6 }
        L_0x08fb:
            c.e.a.b.h.b.Y r2 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.pc r2 = r2.k()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r4 = r5.r     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.k$a<java.lang.Boolean> r6 = c.e.a.b.h.b.C0931k.ya     // Catch:{ all -> 0x0ed6 }
            boolean r2 = r2.e(r4, r6)     // Catch:{ all -> 0x0ed6 }
            if (r2 == 0) goto L_0x09ac
            c.e.a.b.h.b.Zb r2 = r44.j()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r4 = r2.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r4 = r4.B()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = "Checking account type status for ad personalization signals"
            r4.a(r6)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.T r4 = r2.q()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = r5.r     // Catch:{ all -> 0x0ed6 }
            boolean r4 = r4.f(r6)     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x09ac
            c.e.a.b.h.b.sc r4 = r2.p()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = r5.r     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b._b r4 = r4.b(r6)     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x09ac
            boolean r4 = r4.D()     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x09ac
            c.e.a.b.h.b.e r4 = r2.m()     // Catch:{ all -> 0x0ed6 }
            boolean r4 = r4.x()     // Catch:{ all -> 0x0ed6 }
            if (r4 == 0) goto L_0x09ac
            c.e.a.b.h.b.t r4 = r2.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r4 = r4.A()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = "Turning off ad personalization due to account type"
            r4.a(r6)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N$a r4 = c.e.a.b.g.f.N.D()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r6 = "_npa"
            r4.a((java.lang.String) r6)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.e r2 = r2.m()     // Catch:{ all -> 0x0ed6 }
            long r6 = r2.v()     // Catch:{ all -> 0x0ed6 }
            r4.a((long) r6)     // Catch:{ all -> 0x0ed6 }
            r6 = 1
            r4.b((long) r6)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.Sb r2 = r4.o()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.nb r2 = (c.e.a.b.g.f.C0852nb) r2     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N r2 = (c.e.a.b.g.f.N) r2     // Catch:{ all -> 0x0ed6 }
            r4 = 0
        L_0x0973:
            c.e.a.b.g.f.N[] r6 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            int r6 = r6.length     // Catch:{ all -> 0x0ed6 }
            if (r4 >= r6) goto L_0x0991
            java.lang.String r6 = "_npa"
            c.e.a.b.g.f.N[] r7 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            r7 = r7[r4]     // Catch:{ all -> 0x0ed6 }
            java.lang.String r7 = r7.q()     // Catch:{ all -> 0x0ed6 }
            boolean r6 = r6.equals(r7)     // Catch:{ all -> 0x0ed6 }
            if (r6 == 0) goto L_0x098e
            c.e.a.b.g.f.N[] r6 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            r6[r4] = r2     // Catch:{ all -> 0x0ed6 }
            r4 = 1
            goto L_0x0992
        L_0x098e:
            int r4 = r4 + 1
            goto L_0x0973
        L_0x0991:
            r4 = 0
        L_0x0992:
            if (r4 != 0) goto L_0x09ac
            c.e.a.b.g.f.N[] r4 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N[] r6 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            int r6 = r6.length     // Catch:{ all -> 0x0ed6 }
            r7 = 1
            int r6 = r6 + r7
            java.lang.Object[] r4 = java.util.Arrays.copyOf(r4, r6)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N[] r4 = (c.e.a.b.g.f.N[]) r4     // Catch:{ all -> 0x0ed6 }
            r5.f10371f = r4     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N[] r4 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N[] r6 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            int r6 = r6.length     // Catch:{ all -> 0x0ed6 }
            r7 = 1
            int r6 = r6 - r7
            r4[r6] = r2     // Catch:{ all -> 0x0ed6 }
        L_0x09ac:
            java.lang.String r2 = r5.r     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.N[] r4 = r5.f10371f     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.ba[] r6 = r5.f10370e     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.d.d.r.b((java.lang.String) r2)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.lc r7 = r44.k()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.H[] r2 = r7.a((java.lang.String) r2, (c.e.a.b.g.f.C0803ba[]) r6, (c.e.a.b.g.f.N[]) r4)     // Catch:{ all -> 0x0ed6 }
            r5.D = r2     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.Y r2 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.pc r2 = r2.k()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r4 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r4 = r4.r     // Catch:{ all -> 0x0ed6 }
            boolean r2 = r2.g(r4)     // Catch:{ all -> 0x0ed6 }
            if (r2 == 0) goto L_0x0cf0
            java.util.HashMap r2 = new java.util.HashMap     // Catch:{ all -> 0x0eb5 }
            r2.<init>()     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.g.f.ba[] r4 = r5.f10370e     // Catch:{ all -> 0x0eb5 }
            int r4 = r4.length     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.g.f.ba[] r4 = new c.e.a.b.g.f.C0803ba[r4]     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.h.b.cc r6 = r6.i()     // Catch:{ all -> 0x0eb5 }
            java.security.SecureRandom r6 = r6.v()     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.g.f.ba[] r7 = r5.f10370e     // Catch:{ all -> 0x0eb5 }
            int r8 = r7.length     // Catch:{ all -> 0x0eb5 }
            r9 = 0
            r10 = 0
        L_0x09e8:
            if (r9 >= r8) goto L_0x0cbf
            r11 = r7[r9]     // Catch:{ all -> 0x0eb5 }
            java.lang.String r12 = r11.f10345e     // Catch:{ all -> 0x0eb5 }
            java.lang.String r13 = "_ep"
            boolean r12 = r12.equals(r13)     // Catch:{ all -> 0x0eb5 }
            if (r12 == 0) goto L_0x0a72
            r44.j()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r12 = "_en"
            java.lang.Object r12 = c.e.a.b.h.b.Zb.b(r11, r12)     // Catch:{ all -> 0x0ed6 }
            java.lang.String r12 = (java.lang.String) r12     // Catch:{ all -> 0x0ed6 }
            java.lang.Object r13 = r2.get(r12)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.g r13 = (c.e.a.b.h.b.C0919g) r13     // Catch:{ all -> 0x0ed6 }
            if (r13 != 0) goto L_0x0a18
            c.e.a.b.h.b.sc r13 = r44.l()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r14 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r14 = r14.r     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.g r13 = r13.b((java.lang.String) r14, (java.lang.String) r12)     // Catch:{ all -> 0x0ed6 }
            r2.put(r12, r13)     // Catch:{ all -> 0x0ed6 }
        L_0x0a18:
            java.lang.Long r12 = r13.f10895h     // Catch:{ all -> 0x0ed6 }
            if (r12 != 0) goto L_0x0a6b
            java.lang.Long r12 = r13.f10896i     // Catch:{ all -> 0x0ed6 }
            long r14 = r12.longValue()     // Catch:{ all -> 0x0ed6 }
            r19 = 1
            int r12 = (r14 > r19 ? 1 : (r14 == r19 ? 0 : -1))
            if (r12 <= 0) goto L_0x0a37
            r44.j()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r12 = r11.f10344d     // Catch:{ all -> 0x0ed6 }
            java.lang.String r14 = "_sr"
            java.lang.Long r15 = r13.f10896i     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r12 = c.e.a.b.h.b.Zb.a((c.e.a.b.g.f.K[]) r12, (java.lang.String) r14, (java.lang.Object) r15)     // Catch:{ all -> 0x0ed6 }
            r11.f10344d = r12     // Catch:{ all -> 0x0ed6 }
        L_0x0a37:
            java.lang.Boolean r12 = r13.f10897j     // Catch:{ all -> 0x0ed6 }
            if (r12 == 0) goto L_0x0a59
            java.lang.Boolean r12 = r13.f10897j     // Catch:{ all -> 0x0ed6 }
            boolean r12 = r12.booleanValue()     // Catch:{ all -> 0x0ed6 }
            if (r12 == 0) goto L_0x0a59
            r44.j()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r12 = r11.f10344d     // Catch:{ all -> 0x0ed6 }
            java.lang.String r13 = "_efs"
            r19 = r7
            r14 = 1
            java.lang.Long r7 = java.lang.Long.valueOf(r14)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r7 = c.e.a.b.h.b.Zb.a((c.e.a.b.g.f.K[]) r12, (java.lang.String) r13, (java.lang.Object) r7)     // Catch:{ all -> 0x0ed6 }
            r11.f10344d = r7     // Catch:{ all -> 0x0ed6 }
            goto L_0x0a5b
        L_0x0a59:
            r19 = r7
        L_0x0a5b:
            int r7 = r10 + 1
            r4[r10] = r11     // Catch:{ all -> 0x0ed6 }
            r28 = r5
            r26 = r6
            r10 = r7
        L_0x0a64:
            r23 = r8
            r20 = r9
        L_0x0a68:
            r6 = r2
            goto L_0x0cb0
        L_0x0a6b:
            r19 = r7
            r28 = r5
            r26 = r6
            goto L_0x0a64
        L_0x0a72:
            r19 = r7
            c.e.a.b.h.b.T r7 = r44.m()     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.g.f.da r12 = r3.f10755a     // Catch:{ all -> 0x0eb5 }
            java.lang.String r12 = r12.r     // Catch:{ all -> 0x0eb5 }
            long r12 = r7.g(r12)     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.h.b.Y r7 = r1.f10752j     // Catch:{ all -> 0x0eb5 }
            r7.i()     // Catch:{ all -> 0x0eb5 }
            java.lang.Long r7 = r11.f10346f     // Catch:{ all -> 0x0eb5 }
            long r14 = r7.longValue()     // Catch:{ all -> 0x0eb5 }
            long r14 = c.e.a.b.h.b.cc.a((long) r14, (long) r12)     // Catch:{ all -> 0x0eb5 }
            java.lang.String r7 = "_dbg"
            r23 = r8
            r20 = 1
            java.lang.Long r8 = java.lang.Long.valueOf(r20)     // Catch:{ all -> 0x0eb5 }
            boolean r20 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0eb5 }
            if (r20 != 0) goto L_0x0af5
            if (r8 != 0) goto L_0x0aa2
            goto L_0x0af5
        L_0x0aa2:
            r28 = r5
            c.e.a.b.g.f.K[] r5 = r11.f10344d     // Catch:{ all -> 0x0ed6 }
            r20 = r9
            int r9 = r5.length     // Catch:{ all -> 0x0ed6 }
            r24 = r12
            r12 = 0
        L_0x0aac:
            if (r12 >= r9) goto L_0x0afb
            r13 = r5[r12]     // Catch:{ all -> 0x0ed6 }
            r26 = r5
            java.lang.String r5 = r13.q()     // Catch:{ all -> 0x0ed6 }
            boolean r5 = r7.equals(r5)     // Catch:{ all -> 0x0ed6 }
            if (r5 == 0) goto L_0x0af0
            boolean r5 = r8 instanceof java.lang.Long     // Catch:{ all -> 0x0ed6 }
            if (r5 == 0) goto L_0x0ace
            long r26 = r13.w()     // Catch:{ all -> 0x0ed6 }
            java.lang.Long r5 = java.lang.Long.valueOf(r26)     // Catch:{ all -> 0x0ed6 }
            boolean r5 = r8.equals(r5)     // Catch:{ all -> 0x0ed6 }
            if (r5 != 0) goto L_0x0aee
        L_0x0ace:
            boolean r5 = r8 instanceof java.lang.String     // Catch:{ all -> 0x0ed6 }
            if (r5 == 0) goto L_0x0adc
            java.lang.String r5 = r13.t()     // Catch:{ all -> 0x0ed6 }
            boolean r5 = r8.equals(r5)     // Catch:{ all -> 0x0ed6 }
            if (r5 != 0) goto L_0x0aee
        L_0x0adc:
            boolean r5 = r8 instanceof java.lang.Double     // Catch:{ all -> 0x0ed6 }
            if (r5 == 0) goto L_0x0afb
            double r12 = r13.z()     // Catch:{ all -> 0x0ed6 }
            java.lang.Double r5 = java.lang.Double.valueOf(r12)     // Catch:{ all -> 0x0ed6 }
            boolean r5 = r8.equals(r5)     // Catch:{ all -> 0x0ed6 }
            if (r5 == 0) goto L_0x0afb
        L_0x0aee:
            r5 = 1
            goto L_0x0afc
        L_0x0af0:
            int r12 = r12 + 1
            r5 = r26
            goto L_0x0aac
        L_0x0af5:
            r28 = r5
            r20 = r9
            r24 = r12
        L_0x0afb:
            r5 = 0
        L_0x0afc:
            if (r5 != 0) goto L_0x0b0d
            c.e.a.b.h.b.T r5 = r44.m()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r7 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r7 = r7.r     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r11.f10345e     // Catch:{ all -> 0x0ed6 }
            int r13 = r5.d(r7, r8)     // Catch:{ all -> 0x0ed6 }
            goto L_0x0b0e
        L_0x0b0d:
            r13 = 1
        L_0x0b0e:
            if (r13 > 0) goto L_0x0b2e
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r5 = r5.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r5 = r5.w()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r7 = "Sample rate must be positive. event, rate"
            java.lang.String r8 = r11.f10345e     // Catch:{ all -> 0x0ed6 }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r13)     // Catch:{ all -> 0x0ed6 }
            r5.a(r7, r8, r9)     // Catch:{ all -> 0x0ed6 }
            int r5 = r10 + 1
            r4[r10] = r11     // Catch:{ all -> 0x0ed6 }
            r10 = r5
            r26 = r6
            goto L_0x0a68
        L_0x0b2e:
            java.lang.String r5 = r11.f10345e     // Catch:{ all -> 0x0eb5 }
            java.lang.Object r5 = r2.get(r5)     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.h.b.g r5 = (c.e.a.b.h.b.C0919g) r5     // Catch:{ all -> 0x0eb5 }
            if (r5 != 0) goto L_0x0b82
            c.e.a.b.h.b.sc r5 = r44.l()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r7 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r7 = r7.r     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r11.f10345e     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.g r5 = r5.b((java.lang.String) r7, (java.lang.String) r8)     // Catch:{ all -> 0x0ed6 }
            if (r5 != 0) goto L_0x0b82
            c.e.a.b.h.b.Y r5 = r1.f10752j     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.t r5 = r5.e()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.v r5 = r5.w()     // Catch:{ all -> 0x0ed6 }
            java.lang.String r7 = "Event being bundled has no eventAggregate. appId, eventName"
            c.e.a.b.g.f.da r8 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r8.r     // Catch:{ all -> 0x0ed6 }
            java.lang.String r9 = r11.f10345e     // Catch:{ all -> 0x0ed6 }
            r5.a(r7, r8, r9)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.g r5 = new c.e.a.b.h.b.g     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.da r7 = r3.f10755a     // Catch:{ all -> 0x0ed6 }
            java.lang.String r7 = r7.r     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r11.f10345e     // Catch:{ all -> 0x0ed6 }
            r32 = 1
            r34 = 1
            java.lang.Long r9 = r11.f10346f     // Catch:{ all -> 0x0ed6 }
            long r36 = r9.longValue()     // Catch:{ all -> 0x0ed6 }
            r38 = 0
            r40 = 0
            r41 = 0
            r42 = 0
            r43 = 0
            r29 = r5
            r30 = r7
            r31 = r8
            r29.<init>(r30, r31, r32, r34, r36, r38, r40, r41, r42, r43)     // Catch:{ all -> 0x0ed6 }
        L_0x0b82:
            r44.j()     // Catch:{ all -> 0x0eb5 }
            java.lang.String r7 = "_eid"
            java.lang.Object r7 = c.e.a.b.h.b.Zb.b(r11, r7)     // Catch:{ all -> 0x0eb5 }
            java.lang.Long r7 = (java.lang.Long) r7     // Catch:{ all -> 0x0eb5 }
            if (r7 == 0) goto L_0x0b91
            r8 = 1
            goto L_0x0b92
        L_0x0b91:
            r8 = 0
        L_0x0b92:
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r8)     // Catch:{ all -> 0x0eb5 }
            r9 = 1
            if (r13 != r9) goto L_0x0bbe
            int r7 = r10 + 1
            r4[r10] = r11     // Catch:{ all -> 0x0ed6 }
            boolean r8 = r8.booleanValue()     // Catch:{ all -> 0x0ed6 }
            if (r8 == 0) goto L_0x0bb9
            java.lang.Long r8 = r5.f10895h     // Catch:{ all -> 0x0ed6 }
            if (r8 != 0) goto L_0x0baf
            java.lang.Long r8 = r5.f10896i     // Catch:{ all -> 0x0ed6 }
            if (r8 != 0) goto L_0x0baf
            java.lang.Boolean r8 = r5.f10897j     // Catch:{ all -> 0x0ed6 }
            if (r8 == 0) goto L_0x0bb9
        L_0x0baf:
            r8 = 0
            c.e.a.b.h.b.g r5 = r5.a(r8, r8, r8)     // Catch:{ all -> 0x0ed6 }
            java.lang.String r8 = r11.f10345e     // Catch:{ all -> 0x0ed6 }
            r2.put(r8, r5)     // Catch:{ all -> 0x0ed6 }
        L_0x0bb9:
            r26 = r6
            r10 = r7
            goto L_0x0a68
        L_0x0bbe:
            int r9 = r6.nextInt(r13)     // Catch:{ all -> 0x0eb5 }
            if (r9 != 0) goto L_0x0bfd
            r44.j()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r7 = r11.f10344d     // Catch:{ all -> 0x0ed6 }
            java.lang.String r9 = "_sr"
            long r12 = (long) r13     // Catch:{ all -> 0x0ed6 }
            r26 = r6
            java.lang.Long r6 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.g.f.K[] r6 = c.e.a.b.h.b.Zb.a((c.e.a.b.g.f.K[]) r7, (java.lang.String) r9, (java.lang.Object) r6)     // Catch:{ all -> 0x0ed6 }
            r11.f10344d = r6     // Catch:{ all -> 0x0ed6 }
            int r6 = r10 + 1
            r4[r10] = r11     // Catch:{ all -> 0x0ed6 }
            boolean r7 = r8.booleanValue()     // Catch:{ all -> 0x0ed6 }
            if (r7 == 0) goto L_0x0beb
            java.lang.Long r7 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x0ed6 }
            r8 = 0
            c.e.a.b.h.b.g r5 = r5.a(r8, r7, r8)     // Catch:{ all -> 0x0ed6 }
        L_0x0beb:
            java.lang.String r7 = r11.f10345e     // Catch:{ all -> 0x0ed6 }
            java.lang.Long r8 = r11.f10346f     // Catch:{ all -> 0x0ed6 }
            long r8 = r8.longValue()     // Catch:{ all -> 0x0ed6 }
            c.e.a.b.h.b.g r5 = r5.a(r8, r14)     // Catch:{ all -> 0x0ed6 }
            r2.put(r7, r5)     // Catch:{ all -> 0x0ed6 }
            r10 = r6
            goto L_0x0a68
        L_0x0bfd:
            r26 = r6
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.h.b.pc r6 = r6.k()     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.g.f.da r9 = r3.f10755a     // Catch:{ all -> 0x0eb5 }
            java.lang.String r9 = r9.r     // Catch:{ all -> 0x0eb5 }
            boolean r6 = r6.s(r9)     // Catch:{ all -> 0x0eb5 }
            if (r6 == 0) goto L_0x0c37
            java.lang.Long r6 = r5.f10894g     // Catch:{ all -> 0x0eb5 }
            if (r6 == 0) goto L_0x0c1c
            java.lang.Long r6 = r5.f10894g     // Catch:{ all -> 0x0ed6 }
            long r24 = r6.longValue()     // Catch:{ all -> 0x0ed6 }
            r12 = r2
            r9 = r7
            goto L_0x0c2f
        L_0x0c1c:
            c.e.a.b.h.b.Y r6 = r1.f10752j     // Catch:{ all -> 0x0eb5 }
            r6.i()     // Catch:{ all -> 0x0eb5 }
            java.lang.Long r6 = r11.f10347g     // Catch:{ all -> 0x0eb5 }
            r9 = r7
            long r6 = r6.longValue()     // Catch:{ all -> 0x0eb5 }
            r12 = r2
            r1 = r24
            long r24 = c.e.a.b.h.b.cc.a((long) r6, (long) r1)     // Catch:{ all -> 0x0eb5 }
        L_0x0c2f:
            int r1 = (r24 > r14 ? 1 : (r24 == r14 ? 0 : -1))
            if (r1 == 0) goto L_0x0c35
        L_0x0c33:
            r1 = 1
            goto L_0x0c4e
        L_0x0c35:
            r1 = 0
            goto L_0x0c4e
        L_0x0c37:
            r12 = r2
            r9 = r7
            long r1 = r5.f10893f     // Catch:{ all -> 0x0eb5 }
            java.lang.Long r6 = r11.f10346f     // Catch:{ all -> 0x0eb5 }
            long r6 = r6.longValue()     // Catch:{ all -> 0x0eb5 }
            long r6 = r6 - r1
            long r1 = java.lang.Math.abs(r6)     // Catch:{ all -> 0x0eb5 }
            r6 = 86400000(0x5265c00, double:4.2687272E-316)
            int r24 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r24 < 0) goto L_0x0c35
            goto L_0x0c33
        L_0x0c4e:
            if (r1 == 0) goto L_0x0c9f
            r44.j()     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.g.f.K[] r1 = r11.f10344d     // Catch:{ all -> 0x0eb5 }
            java.lang.String r2 = "_efs"
            r6 = 1
            java.lang.Long r9 = java.lang.Long.valueOf(r6)     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.g.f.K[] r1 = c.e.a.b.h.b.Zb.a((c.e.a.b.g.f.K[]) r1, (java.lang.String) r2, (java.lang.Object) r9)     // Catch:{ all -> 0x0eb5 }
            r11.f10344d = r1     // Catch:{ all -> 0x0eb5 }
            r44.j()     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.g.f.K[] r1 = r11.f10344d     // Catch:{ all -> 0x0eb5 }
            java.lang.String r2 = "_sr"
            long r6 = (long) r13     // Catch:{ all -> 0x0eb5 }
            java.lang.Long r9 = java.lang.Long.valueOf(r6)     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.g.f.K[] r1 = c.e.a.b.h.b.Zb.a((c.e.a.b.g.f.K[]) r1, (java.lang.String) r2, (java.lang.Object) r9)     // Catch:{ all -> 0x0eb5 }
            r11.f10344d = r1     // Catch:{ all -> 0x0eb5 }
            int r1 = r10 + 1
            r4[r10] = r11     // Catch:{ all -> 0x0eb5 }
            boolean r2 = r8.booleanValue()     // Catch:{ all -> 0x0eb5 }
            if (r2 == 0) goto L_0x0c8d
            java.lang.Long r2 = java.lang.Long.valueOf(r6)     // Catch:{ all -> 0x0eb5 }
            r6 = 1
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r6)     // Catch:{ all -> 0x0eb5 }
            r6 = 0
            c.e.a.b.h.b.g r5 = r5.a(r6, r2, r7)     // Catch:{ all -> 0x0eb5 }
        L_0x0c8d:
            java.lang.String r2 = r11.f10345e     // Catch:{ all -> 0x0eb5 }
            java.lang.Long r6 = r11.f10346f     // Catch:{ all -> 0x0eb5 }
            long r6 = r6.longValue()     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.h.b.g r5 = r5.a(r6, r14)     // Catch:{ all -> 0x0eb5 }
            r6 = r12
            r6.put(r2, r5)     // Catch:{ all -> 0x0eb5 }
            r10 = r1
            goto L_0x0cb0
        L_0x0c9f:
            r6 = r12
            boolean r1 = r8.booleanValue()     // Catch:{ all -> 0x0eb5 }
            if (r1 == 0) goto L_0x0cb0
            java.lang.String r1 = r11.f10345e     // Catch:{ all -> 0x0eb5 }
            r2 = 0
            c.e.a.b.h.b.g r5 = r5.a(r9, r2, r2)     // Catch:{ all -> 0x0eb5 }
            r6.put(r1, r5)     // Catch:{ all -> 0x0eb5 }
        L_0x0cb0:
            int r9 = r20 + 1
            r1 = r44
            r2 = r6
            r7 = r19
            r8 = r23
            r6 = r26
            r5 = r28
            goto L_0x09e8
        L_0x0cbf:
            r6 = r2
            r1 = r5
            c.e.a.b.g.f.ba[] r2 = r1.f10370e     // Catch:{ all -> 0x0eb5 }
            int r2 = r2.length     // Catch:{ all -> 0x0eb5 }
            if (r10 >= r2) goto L_0x0cce
            java.lang.Object[] r2 = java.util.Arrays.copyOf(r4, r10)     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.g.f.ba[] r2 = (c.e.a.b.g.f.C0803ba[]) r2     // Catch:{ all -> 0x0eb5 }
            r1.f10370e = r2     // Catch:{ all -> 0x0eb5 }
        L_0x0cce:
            java.util.Set r2 = r6.entrySet()     // Catch:{ all -> 0x0eb5 }
            java.util.Iterator r2 = r2.iterator()     // Catch:{ all -> 0x0eb5 }
        L_0x0cd6:
            boolean r4 = r2.hasNext()     // Catch:{ all -> 0x0eb5 }
            if (r4 == 0) goto L_0x0cf1
            java.lang.Object r4 = r2.next()     // Catch:{ all -> 0x0eb5 }
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.h.b.sc r5 = r44.l()     // Catch:{ all -> 0x0eb5 }
            java.lang.Object r4 = r4.getValue()     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.h.b.g r4 = (c.e.a.b.h.b.C0919g) r4     // Catch:{ all -> 0x0eb5 }
            r5.a((c.e.a.b.h.b.C0919g) r4)     // Catch:{ all -> 0x0eb5 }
            goto L_0x0cd6
        L_0x0cf0:
            r1 = r5
        L_0x0cf1:
            r4 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            java.lang.Long r2 = java.lang.Long.valueOf(r4)     // Catch:{ all -> 0x0eb5 }
            r1.f10373h = r2     // Catch:{ all -> 0x0eb5 }
            r4 = -9223372036854775808
            java.lang.Long r2 = java.lang.Long.valueOf(r4)     // Catch:{ all -> 0x0eb5 }
            r1.f10374i = r2     // Catch:{ all -> 0x0eb5 }
            r2 = 0
        L_0x0d05:
            c.e.a.b.g.f.ba[] r4 = r1.f10370e     // Catch:{ all -> 0x0eb5 }
            int r4 = r4.length     // Catch:{ all -> 0x0eb5 }
            if (r2 >= r4) goto L_0x0d39
            c.e.a.b.g.f.ba[] r4 = r1.f10370e     // Catch:{ all -> 0x0eb5 }
            r4 = r4[r2]     // Catch:{ all -> 0x0eb5 }
            java.lang.Long r5 = r4.f10346f     // Catch:{ all -> 0x0eb5 }
            long r5 = r5.longValue()     // Catch:{ all -> 0x0eb5 }
            java.lang.Long r7 = r1.f10373h     // Catch:{ all -> 0x0eb5 }
            long r7 = r7.longValue()     // Catch:{ all -> 0x0eb5 }
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 >= 0) goto L_0x0d22
            java.lang.Long r5 = r4.f10346f     // Catch:{ all -> 0x0eb5 }
            r1.f10373h = r5     // Catch:{ all -> 0x0eb5 }
        L_0x0d22:
            java.lang.Long r5 = r4.f10346f     // Catch:{ all -> 0x0eb5 }
            long r5 = r5.longValue()     // Catch:{ all -> 0x0eb5 }
            java.lang.Long r7 = r1.f10374i     // Catch:{ all -> 0x0eb5 }
            long r7 = r7.longValue()     // Catch:{ all -> 0x0eb5 }
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 <= 0) goto L_0x0d36
            java.lang.Long r4 = r4.f10346f     // Catch:{ all -> 0x0eb5 }
            r1.f10374i = r4     // Catch:{ all -> 0x0eb5 }
        L_0x0d36:
            int r2 = r2 + 1
            goto L_0x0d05
        L_0x0d39:
            c.e.a.b.g.f.da r2 = r3.f10755a     // Catch:{ all -> 0x0eb5 }
            java.lang.String r2 = r2.r     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.h.b.sc r4 = r44.l()     // Catch:{ all -> 0x0eb5 }
            c.e.a.b.h.b._b r4 = r4.b(r2)     // Catch:{ all -> 0x0eb5 }
            if (r4 != 0) goto L_0x0d61
            r5 = r44
            c.e.a.b.h.b.Y r4 = r5.f10752j     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.h.b.v r4 = r4.t()     // Catch:{ all -> 0x0ed4 }
            java.lang.String r6 = "Bundling raw events w/o app info. appId"
            c.e.a.b.g.f.da r7 = r3.f10755a     // Catch:{ all -> 0x0ed4 }
            java.lang.String r7 = r7.r     // Catch:{ all -> 0x0ed4 }
            java.lang.Object r7 = c.e.a.b.h.b.C0957t.a((java.lang.String) r7)     // Catch:{ all -> 0x0ed4 }
            r4.a(r6, r7)     // Catch:{ all -> 0x0ed4 }
            goto L_0x0dbf
        L_0x0d61:
            r5 = r44
            c.e.a.b.g.f.ba[] r6 = r1.f10370e     // Catch:{ all -> 0x0ed4 }
            int r6 = r6.length     // Catch:{ all -> 0x0ed4 }
            if (r6 <= 0) goto L_0x0dbf
            long r6 = r4.j()     // Catch:{ all -> 0x0ed4 }
            r8 = 0
            int r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r10 == 0) goto L_0x0d77
            java.lang.Long r8 = java.lang.Long.valueOf(r6)     // Catch:{ all -> 0x0ed4 }
            goto L_0x0d78
        L_0x0d77:
            r8 = 0
        L_0x0d78:
            r1.f10376k = r8     // Catch:{ all -> 0x0ed4 }
            long r8 = r4.i()     // Catch:{ all -> 0x0ed4 }
            r10 = 0
            int r12 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r12 != 0) goto L_0x0d85
            goto L_0x0d86
        L_0x0d85:
            r6 = r8
        L_0x0d86:
            int r8 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r8 == 0) goto L_0x0d8f
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch:{ all -> 0x0ed4 }
            goto L_0x0d90
        L_0x0d8f:
            r6 = 0
        L_0x0d90:
            r1.f10375j = r6     // Catch:{ all -> 0x0ed4 }
            r4.t()     // Catch:{ all -> 0x0ed4 }
            long r6 = r4.q()     // Catch:{ all -> 0x0ed4 }
            int r7 = (int) r6     // Catch:{ all -> 0x0ed4 }
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)     // Catch:{ all -> 0x0ed4 }
            r1.z = r6     // Catch:{ all -> 0x0ed4 }
            java.lang.Long r6 = r1.f10373h     // Catch:{ all -> 0x0ed4 }
            long r6 = r6.longValue()     // Catch:{ all -> 0x0ed4 }
            r4.a((long) r6)     // Catch:{ all -> 0x0ed4 }
            java.lang.Long r6 = r1.f10374i     // Catch:{ all -> 0x0ed4 }
            long r6 = r6.longValue()     // Catch:{ all -> 0x0ed4 }
            r4.b((long) r6)     // Catch:{ all -> 0x0ed4 }
            java.lang.String r6 = r4.B()     // Catch:{ all -> 0x0ed4 }
            r1.A = r6     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.h.b.sc r6 = r44.l()     // Catch:{ all -> 0x0ed4 }
            r6.a((c.e.a.b.h.b._b) r4)     // Catch:{ all -> 0x0ed4 }
        L_0x0dbf:
            c.e.a.b.g.f.ba[] r4 = r1.f10370e     // Catch:{ all -> 0x0ed4 }
            int r4 = r4.length     // Catch:{ all -> 0x0ed4 }
            if (r4 <= 0) goto L_0x0e14
            c.e.a.b.h.b.Y r4 = r5.f10752j     // Catch:{ all -> 0x0ed4 }
            r4.a()     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.h.b.T r4 = r44.m()     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.g.f.da r6 = r3.f10755a     // Catch:{ all -> 0x0ed4 }
            java.lang.String r6 = r6.r     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.g.f.aa r4 = r4.b(r6)     // Catch:{ all -> 0x0ed4 }
            if (r4 == 0) goto L_0x0de1
            java.lang.Long r6 = r4.f10315c     // Catch:{ all -> 0x0ed4 }
            if (r6 != 0) goto L_0x0ddc
            goto L_0x0de1
        L_0x0ddc:
            java.lang.Long r4 = r4.f10315c     // Catch:{ all -> 0x0ed4 }
            r1.J = r4     // Catch:{ all -> 0x0ed4 }
            goto L_0x0e0b
        L_0x0de1:
            c.e.a.b.g.f.da r4 = r3.f10755a     // Catch:{ all -> 0x0ed4 }
            java.lang.String r4 = r4.B     // Catch:{ all -> 0x0ed4 }
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch:{ all -> 0x0ed4 }
            if (r4 == 0) goto L_0x0df4
            r6 = -1
            java.lang.Long r4 = java.lang.Long.valueOf(r6)     // Catch:{ all -> 0x0ed4 }
            r1.J = r4     // Catch:{ all -> 0x0ed4 }
            goto L_0x0e0b
        L_0x0df4:
            c.e.a.b.h.b.Y r4 = r5.f10752j     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.h.b.t r4 = r4.e()     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.h.b.v r4 = r4.w()     // Catch:{ all -> 0x0ed4 }
            java.lang.String r6 = "Did not find measurement config or missing version info. appId"
            c.e.a.b.g.f.da r7 = r3.f10755a     // Catch:{ all -> 0x0ed4 }
            java.lang.String r7 = r7.r     // Catch:{ all -> 0x0ed4 }
            java.lang.Object r7 = c.e.a.b.h.b.C0957t.a((java.lang.String) r7)     // Catch:{ all -> 0x0ed4 }
            r4.a(r6, r7)     // Catch:{ all -> 0x0ed4 }
        L_0x0e0b:
            c.e.a.b.h.b.sc r4 = r44.l()     // Catch:{ all -> 0x0ed4 }
            r12 = r18
            r4.a((c.e.a.b.g.f.C0811da) r1, (boolean) r12)     // Catch:{ all -> 0x0ed4 }
        L_0x0e14:
            c.e.a.b.h.b.sc r1 = r44.l()     // Catch:{ all -> 0x0ed4 }
            java.util.List<java.lang.Long> r3 = r3.f10756b     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.d.d.r.a(r3)     // Catch:{ all -> 0x0ed4 }
            r1.l()     // Catch:{ all -> 0x0ed4 }
            r1.s()     // Catch:{ all -> 0x0ed4 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0ed4 }
            java.lang.String r6 = "rowid in ("
            r4.<init>(r6)     // Catch:{ all -> 0x0ed4 }
            r6 = 0
        L_0x0e2b:
            int r7 = r3.size()     // Catch:{ all -> 0x0ed4 }
            if (r6 >= r7) goto L_0x0e48
            if (r6 == 0) goto L_0x0e38
            java.lang.String r7 = ","
            r4.append(r7)     // Catch:{ all -> 0x0ed4 }
        L_0x0e38:
            java.lang.Object r7 = r3.get(r6)     // Catch:{ all -> 0x0ed4 }
            java.lang.Long r7 = (java.lang.Long) r7     // Catch:{ all -> 0x0ed4 }
            long r7 = r7.longValue()     // Catch:{ all -> 0x0ed4 }
            r4.append(r7)     // Catch:{ all -> 0x0ed4 }
            int r6 = r6 + 1
            goto L_0x0e2b
        L_0x0e48:
            java.lang.String r6 = ")"
            r4.append(r6)     // Catch:{ all -> 0x0ed4 }
            android.database.sqlite.SQLiteDatabase r6 = r1.x()     // Catch:{ all -> 0x0ed4 }
            java.lang.String r7 = "raw_events"
            java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x0ed4 }
            r8 = 0
            int r4 = r6.delete(r7, r4, r8)     // Catch:{ all -> 0x0ed4 }
            int r6 = r3.size()     // Catch:{ all -> 0x0ed4 }
            if (r4 == r6) goto L_0x0e7b
            c.e.a.b.h.b.t r1 = r1.e()     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ all -> 0x0ed4 }
            java.lang.String r6 = "Deleted fewer rows from raw events table than expected"
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x0ed4 }
            int r3 = r3.size()     // Catch:{ all -> 0x0ed4 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x0ed4 }
            r1.a(r6, r4, r3)     // Catch:{ all -> 0x0ed4 }
        L_0x0e7b:
            c.e.a.b.h.b.sc r1 = r44.l()     // Catch:{ all -> 0x0ed4 }
            android.database.sqlite.SQLiteDatabase r3 = r1.x()     // Catch:{ all -> 0x0ed4 }
            java.lang.String r4 = "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"
            r6 = 2
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch:{ SQLiteException -> 0x0e92 }
            r7 = 0
            r6[r7] = r2     // Catch:{ SQLiteException -> 0x0e92 }
            r7 = 1
            r6[r7] = r2     // Catch:{ SQLiteException -> 0x0e92 }
            r3.execSQL(r4, r6)     // Catch:{ SQLiteException -> 0x0e92 }
            goto L_0x0ea5
        L_0x0e92:
            r0 = move-exception
            r3 = r0
            c.e.a.b.h.b.t r1 = r1.e()     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.h.b.v r1 = r1.t()     // Catch:{ all -> 0x0ed4 }
            java.lang.String r4 = "Failed to remove unused event metadata. appId"
            java.lang.Object r2 = c.e.a.b.h.b.C0957t.a((java.lang.String) r2)     // Catch:{ all -> 0x0ed4 }
            r1.a(r4, r2, r3)     // Catch:{ all -> 0x0ed4 }
        L_0x0ea5:
            c.e.a.b.h.b.sc r1 = r44.l()     // Catch:{ all -> 0x0ed4 }
            r1.y()     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.h.b.sc r1 = r44.l()
            r1.w()
            r1 = 1
            return r1
        L_0x0eb5:
            r0 = move-exception
            r5 = r44
            goto L_0x0ed8
        L_0x0eb9:
            r5 = r1
            c.e.a.b.h.b.sc r1 = r44.l()     // Catch:{ all -> 0x0ed4 }
            r1.y()     // Catch:{ all -> 0x0ed4 }
            c.e.a.b.h.b.sc r1 = r44.l()
            r1.w()
            r1 = 0
            return r1
        L_0x0eca:
            r0 = move-exception
            r5 = r1
            goto L_0x0244
        L_0x0ece:
            if (r9 == 0) goto L_0x0ed3
            r9.close()     // Catch:{ all -> 0x0ed4 }
        L_0x0ed3:
            throw r1     // Catch:{ all -> 0x0ed4 }
        L_0x0ed4:
            r0 = move-exception
            goto L_0x0ed8
        L_0x0ed6:
            r0 = move-exception
            r5 = r1
        L_0x0ed8:
            r1 = r0
            c.e.a.b.h.b.sc r2 = r44.l()
            r2.w()
            goto L_0x0ee2
        L_0x0ee1:
            throw r1
        L_0x0ee2:
            goto L_0x0ee1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.Tb.a(java.lang.String, long):boolean");
    }

    public final Boolean b(_b _bVar) {
        try {
            if (_bVar.l() != -2147483648L) {
                if (_bVar.l() == ((long) c.a(this.f10752j.b()).b(_bVar.f(), 0).versionCode)) {
                    return true;
                }
            } else {
                String str = c.a(this.f10752j.b()).b(_bVar.f(), 0).versionName;
                if (_bVar.k() != null && _bVar.k().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final void b(zzga zzga, zzm zzm) {
        C();
        r();
        if (TextUtils.isEmpty(zzm.f13245b) && TextUtils.isEmpty(zzm.r)) {
            return;
        }
        if (!zzm.f13251h) {
            d(zzm);
        } else if (!this.f10752j.k().e(zzm.f13244a, C0931k.ya)) {
            this.f10752j.e().A().a("Removing user property", this.f10752j.h().c(zzga.f13237b));
            l().v();
            try {
                d(zzm);
                l().c(zzm.f13244a, zzga.f13237b);
                l().y();
                this.f10752j.e().A().a("User property removed", this.f10752j.h().c(zzga.f13237b));
            } finally {
                l().w();
            }
        } else if (!"_npa".equals(zzga.f13237b) || zzm.s == null) {
            this.f10752j.e().A().a("Removing user property", this.f10752j.h().c(zzga.f13237b));
            l().v();
            try {
                d(zzm);
                l().c(zzm.f13244a, zzga.f13237b);
                l().y();
                this.f10752j.e().A().a("User property removed", this.f10752j.h().c(zzga.f13237b));
            } finally {
                l().w();
            }
        } else {
            this.f10752j.e().A().a("Falling back to manifest metadata value for ad personalization");
            zzga zzga2 = new zzga("_npa", this.f10752j.c().c(), Long.valueOf(zzm.s.booleanValue() ? 1 : 0), "auto");
            a(zzga2, zzm);
        }
    }

    public final void b(Sb sb) {
        this.p++;
    }

    public final void b(zzr zzr) {
        zzm a2 = a(zzr.f13256a);
        if (a2 != null) {
            b(zzr, a2);
        }
    }

    public final void b(zzr zzr, zzm zzm) {
        r.a(zzr);
        r.b(zzr.f13256a);
        r.a(zzr.f13258c);
        r.b(zzr.f13258c.f13237b);
        C();
        r();
        if (TextUtils.isEmpty(zzm.f13245b) && TextUtils.isEmpty(zzm.r)) {
            return;
        }
        if (!zzm.f13251h) {
            d(zzm);
            return;
        }
        l().v();
        try {
            d(zzm);
            zzr e2 = l().e(zzr.f13256a, zzr.f13258c.f13237b);
            if (e2 != null) {
                this.f10752j.e().A().a("Removing conditional user property", zzr.f13256a, this.f10752j.h().c(zzr.f13258c.f13237b));
                l().f(zzr.f13256a, zzr.f13258c.f13237b);
                if (e2.f13260e) {
                    l().c(zzr.f13256a, zzr.f13258c.f13237b);
                }
                if (zzr.f13266k != null) {
                    Bundle bundle = null;
                    if (zzr.f13266k.f13233b != null) {
                        bundle = zzr.f13266k.f13233b.x();
                    }
                    Bundle bundle2 = bundle;
                    b(this.f10752j.i().a(zzr.f13256a, zzr.f13266k.f13232a, bundle2, e2.f13257b, zzr.f13266k.f13235d, true, false), zzm);
                }
            } else {
                this.f10752j.e().w().a("Conditional user property doesn't exist", C0957t.a(zzr.f13256a), this.f10752j.h().c(zzr.f13258c.f13237b));
            }
            l().y();
        } finally {
            l().w();
        }
    }

    public final boolean a(C0803ba baVar, C0803ba baVar2) {
        String str;
        r.a("_e".equals(baVar.f10345e));
        j();
        K a2 = Zb.a(baVar, "_sc");
        String str2 = null;
        if (a2 == null) {
            str = null;
        } else {
            str = a2.t();
        }
        j();
        K a3 = Zb.a(baVar2, "_pc");
        if (a3 != null) {
            str2 = a3.t();
        }
        if (str2 == null || !str2.equals(str)) {
            return false;
        }
        j();
        K a4 = Zb.a(baVar, "_et");
        if (a4.v() && a4.w() > 0) {
            long w2 = a4.w();
            j();
            K a5 = Zb.a(baVar2, "_et");
            if (a5 != null && a5.w() > 0) {
                w2 += a5.w();
            }
            j();
            baVar2.f10344d = Zb.a(baVar2.f10344d, "_et", (Object) Long.valueOf(w2));
            j();
            baVar.f10344d = Zb.a(baVar.f10344d, "_fr", (Object) 1L);
        }
        return true;
    }

    public static K[] a(K[] kArr, String str) {
        int i2 = 0;
        while (true) {
            if (i2 >= kArr.length) {
                i2 = -1;
                break;
            } else if (str.equals(kArr[i2].q())) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 < 0) {
            return kArr;
        }
        return a(kArr, i2);
    }

    public static K[] a(K[] kArr, int i2) {
        K[] kArr2 = new K[(kArr.length - 1)];
        if (i2 > 0) {
            System.arraycopy(kArr, 0, kArr2, 0, i2);
        }
        if (i2 < kArr2.length) {
            System.arraycopy(kArr, i2 + 1, kArr2, i2, kArr2.length - i2);
        }
        return kArr2;
    }

    public static K[] a(K[] kArr, int i2, String str) {
        for (K q2 : kArr) {
            if ("_err".equals(q2.q())) {
                return kArr;
            }
        }
        K[] kArr2 = new K[(kArr.length + 2)];
        System.arraycopy(kArr, 0, kArr2, 0, kArr.length);
        K.a B = K.B();
        B.a("_err");
        B.a(Long.valueOf((long) i2).longValue());
        K.a B2 = K.B();
        B2.a("_ev");
        B2.b(str);
        kArr2[kArr2.length - 2] = (K) B.o();
        kArr2[kArr2.length - 1] = (K) B2.o();
        return kArr2;
    }

    /* JADX INFO: finally extract failed */
    public final void a(int i2, Throwable th, byte[] bArr, String str) {
        sc l2;
        C();
        r();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.s = false;
                w();
                throw th2;
            }
        }
        List<Long> list = this.w;
        this.w = null;
        boolean z = true;
        if ((i2 == 200 || i2 == 204) && th == null) {
            try {
                this.f10752j.j().f10613f.a(this.f10752j.c().c());
                this.f10752j.j().f10614g.a(0);
                v();
                this.f10752j.e().B().a("Successful upload. Got network response. code, size", Integer.valueOf(i2), Integer.valueOf(bArr.length));
                l().v();
                try {
                    for (Long next : list) {
                        try {
                            l2 = l();
                            long longValue = next.longValue();
                            l2.l();
                            l2.s();
                            if (l2.x().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                                throw new SQLiteException("Deleted fewer rows from queue than expected");
                            }
                        } catch (SQLiteException e2) {
                            l2.e().t().a("Failed to delete a bundle in a queue table", e2);
                            throw e2;
                        } catch (SQLiteException e3) {
                            if (this.x == null || !this.x.contains(next)) {
                                throw e3;
                            }
                        }
                    }
                    l().y();
                    l().w();
                    this.x = null;
                    if (!n().v() || !u()) {
                        this.y = -1;
                        v();
                    } else {
                        t();
                    }
                    this.n = 0;
                } catch (Throwable th3) {
                    l().w();
                    throw th3;
                }
            } catch (SQLiteException e4) {
                this.f10752j.e().t().a("Database error while trying to delete uploaded bundles", e4);
                this.n = this.f10752j.c().a();
                this.f10752j.e().B().a("Disable upload, time", Long.valueOf(this.n));
            }
        } else {
            this.f10752j.e().B().a("Network upload failed. Will retry later. code, error", Integer.valueOf(i2), th);
            this.f10752j.j().f10614g.a(this.f10752j.c().c());
            if (i2 != 503) {
                if (i2 != 429) {
                    z = false;
                }
            }
            if (z) {
                this.f10752j.j().f10615h.a(this.f10752j.c().c());
            }
            if (this.f10752j.k().j(str)) {
                l().a(list);
            }
            v();
        }
        this.s = false;
        w();
    }

    public final void a(_b _bVar) {
        C();
        if (!TextUtils.isEmpty(_bVar.c()) || (pc.x() && !TextUtils.isEmpty(_bVar.g()))) {
            pc k2 = this.f10752j.k();
            Uri.Builder builder = new Uri.Builder();
            String c2 = _bVar.c();
            if (TextUtils.isEmpty(c2) && pc.x()) {
                c2 = _bVar.g();
            }
            C0243b bVar = null;
            Uri.Builder encodedAuthority = builder.scheme(C0931k.s.a(null)).encodedAuthority(C0931k.t.a(null));
            String valueOf = String.valueOf(c2);
            encodedAuthority.path(valueOf.length() != 0 ? "config/app/".concat(valueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", _bVar.a()).appendQueryParameter("platform", C1046a.ANDROID_CLIENT_TYPE).appendQueryParameter("gmp_version", String.valueOf(k2.n()));
            String uri = builder.build().toString();
            try {
                URL url = new URL(uri);
                this.f10752j.e().B().a("Fetching remote configuration", _bVar.f());
                C0799aa b2 = m().b(_bVar.f());
                String c3 = m().c(_bVar.f());
                if (b2 != null && !TextUtils.isEmpty(c3)) {
                    bVar = new C0243b();
                    bVar.put("If-Modified-Since", c3);
                }
                this.r = true;
                C0969x n2 = n();
                String f2 = _bVar.f();
                Wb wb = new Wb(this);
                n2.l();
                n2.s();
                r.a(url);
                r.a(wb);
                U d2 = n2.d();
                C c4 = new C(n2, f2, url, null, bVar, wb);
                d2.b((Runnable) c4);
            } catch (MalformedURLException unused) {
                this.f10752j.e().t().a("Failed to parse config URL. Not fetching. appId", C0957t.a(_bVar.f()), uri);
            }
        } else {
            a(_bVar.f(), 204, null, null, null);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:59:0x013a A[Catch:{ all -> 0x018d, all -> 0x0196 }] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x014a A[Catch:{ all -> 0x018d, all -> 0x0196 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11) {
        /*
            r6 = this;
            r6.C()
            r6.r()
            c.e.a.b.d.d.r.b((java.lang.String) r7)
            r0 = 0
            if (r10 != 0) goto L_0x000e
            byte[] r10 = new byte[r0]     // Catch:{ all -> 0x0196 }
        L_0x000e:
            c.e.a.b.h.b.Y r1 = r6.f10752j     // Catch:{ all -> 0x0196 }
            c.e.a.b.h.b.t r1 = r1.e()     // Catch:{ all -> 0x0196 }
            c.e.a.b.h.b.v r1 = r1.B()     // Catch:{ all -> 0x0196 }
            java.lang.String r2 = "onConfigFetched. Response size"
            int r3 = r10.length     // Catch:{ all -> 0x0196 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x0196 }
            r1.a(r2, r3)     // Catch:{ all -> 0x0196 }
            c.e.a.b.h.b.sc r1 = r6.l()     // Catch:{ all -> 0x0196 }
            r1.v()     // Catch:{ all -> 0x0196 }
            c.e.a.b.h.b.sc r1 = r6.l()     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b._b r1 = r1.b(r7)     // Catch:{ all -> 0x018d }
            r2 = 200(0xc8, float:2.8E-43)
            r3 = 304(0x130, float:4.26E-43)
            r4 = 1
            if (r8 == r2) goto L_0x003e
            r2 = 204(0xcc, float:2.86E-43)
            if (r8 == r2) goto L_0x003e
            if (r8 != r3) goto L_0x0042
        L_0x003e:
            if (r9 != 0) goto L_0x0042
            r2 = 1
            goto L_0x0043
        L_0x0042:
            r2 = 0
        L_0x0043:
            if (r1 != 0) goto L_0x005a
            c.e.a.b.h.b.Y r8 = r6.f10752j     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.t r8 = r8.e()     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.v r8 = r8.w()     // Catch:{ all -> 0x018d }
            java.lang.String r9 = "App does not exist in onConfigFetched. appId"
            java.lang.Object r7 = c.e.a.b.h.b.C0957t.a((java.lang.String) r7)     // Catch:{ all -> 0x018d }
            r8.a(r9, r7)     // Catch:{ all -> 0x018d }
            goto L_0x0179
        L_0x005a:
            r5 = 404(0x194, float:5.66E-43)
            if (r2 != 0) goto L_0x00ca
            if (r8 != r5) goto L_0x0061
            goto L_0x00ca
        L_0x0061:
            c.e.a.b.h.b.Y r10 = r6.f10752j     // Catch:{ all -> 0x018d }
            c.e.a.b.d.g.e r10 = r10.c()     // Catch:{ all -> 0x018d }
            long r10 = r10.c()     // Catch:{ all -> 0x018d }
            r1.i(r10)     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.sc r10 = r6.l()     // Catch:{ all -> 0x018d }
            r10.a((c.e.a.b.h.b._b) r1)     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.Y r10 = r6.f10752j     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.t r10 = r10.e()     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.v r10 = r10.B()     // Catch:{ all -> 0x018d }
            java.lang.String r11 = "Fetching config failed. code, error"
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x018d }
            r10.a(r11, r1, r9)     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.T r9 = r6.m()     // Catch:{ all -> 0x018d }
            r9.d(r7)     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.Y r7 = r6.f10752j     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.F r7 = r7.j()     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.I r7 = r7.f10614g     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.Y r9 = r6.f10752j     // Catch:{ all -> 0x018d }
            c.e.a.b.d.g.e r9 = r9.c()     // Catch:{ all -> 0x018d }
            long r9 = r9.c()     // Catch:{ all -> 0x018d }
            r7.a(r9)     // Catch:{ all -> 0x018d }
            r7 = 503(0x1f7, float:7.05E-43)
            if (r8 == r7) goto L_0x00ae
            r7 = 429(0x1ad, float:6.01E-43)
            if (r8 != r7) goto L_0x00ad
            goto L_0x00ae
        L_0x00ad:
            r4 = 0
        L_0x00ae:
            if (r4 == 0) goto L_0x00c5
            c.e.a.b.h.b.Y r7 = r6.f10752j     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.F r7 = r7.j()     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.I r7 = r7.f10615h     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.Y r8 = r6.f10752j     // Catch:{ all -> 0x018d }
            c.e.a.b.d.g.e r8 = r8.c()     // Catch:{ all -> 0x018d }
            long r8 = r8.c()     // Catch:{ all -> 0x018d }
            r7.a(r8)     // Catch:{ all -> 0x018d }
        L_0x00c5:
            r6.v()     // Catch:{ all -> 0x018d }
            goto L_0x0179
        L_0x00ca:
            r9 = 0
            if (r11 == 0) goto L_0x00d6
            java.lang.String r2 = "Last-Modified"
            java.lang.Object r11 = r11.get(r2)     // Catch:{ all -> 0x018d }
            java.util.List r11 = (java.util.List) r11     // Catch:{ all -> 0x018d }
            goto L_0x00d7
        L_0x00d6:
            r11 = r9
        L_0x00d7:
            if (r11 == 0) goto L_0x00e6
            int r2 = r11.size()     // Catch:{ all -> 0x018d }
            if (r2 <= 0) goto L_0x00e6
            java.lang.Object r11 = r11.get(r0)     // Catch:{ all -> 0x018d }
            java.lang.String r11 = (java.lang.String) r11     // Catch:{ all -> 0x018d }
            goto L_0x00e7
        L_0x00e6:
            r11 = r9
        L_0x00e7:
            if (r8 == r5) goto L_0x0103
            if (r8 != r3) goto L_0x00ec
            goto L_0x0103
        L_0x00ec:
            c.e.a.b.h.b.T r9 = r6.m()     // Catch:{ all -> 0x018d }
            boolean r9 = r9.a(r7, r10, r11)     // Catch:{ all -> 0x018d }
            if (r9 != 0) goto L_0x0124
            c.e.a.b.h.b.sc r7 = r6.l()     // Catch:{ all -> 0x0196 }
            r7.w()     // Catch:{ all -> 0x0196 }
            r6.r = r0
            r6.w()
            return
        L_0x0103:
            c.e.a.b.h.b.T r11 = r6.m()     // Catch:{ all -> 0x018d }
            c.e.a.b.g.f.aa r11 = r11.b(r7)     // Catch:{ all -> 0x018d }
            if (r11 != 0) goto L_0x0124
            c.e.a.b.h.b.T r11 = r6.m()     // Catch:{ all -> 0x018d }
            boolean r9 = r11.a(r7, r9, r9)     // Catch:{ all -> 0x018d }
            if (r9 != 0) goto L_0x0124
            c.e.a.b.h.b.sc r7 = r6.l()     // Catch:{ all -> 0x0196 }
            r7.w()     // Catch:{ all -> 0x0196 }
            r6.r = r0
            r6.w()
            return
        L_0x0124:
            c.e.a.b.h.b.Y r9 = r6.f10752j     // Catch:{ all -> 0x018d }
            c.e.a.b.d.g.e r9 = r9.c()     // Catch:{ all -> 0x018d }
            long r2 = r9.c()     // Catch:{ all -> 0x018d }
            r1.h((long) r2)     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.sc r9 = r6.l()     // Catch:{ all -> 0x018d }
            r9.a((c.e.a.b.h.b._b) r1)     // Catch:{ all -> 0x018d }
            if (r8 != r5) goto L_0x014a
            c.e.a.b.h.b.Y r8 = r6.f10752j     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.t r8 = r8.e()     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.v r8 = r8.y()     // Catch:{ all -> 0x018d }
            java.lang.String r9 = "Config not found. Using empty config. appId"
            r8.a(r9, r7)     // Catch:{ all -> 0x018d }
            goto L_0x0162
        L_0x014a:
            c.e.a.b.h.b.Y r7 = r6.f10752j     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.t r7 = r7.e()     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.v r7 = r7.B()     // Catch:{ all -> 0x018d }
            java.lang.String r9 = "Successfully fetched config. Got network response. code, size"
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x018d }
            int r10 = r10.length     // Catch:{ all -> 0x018d }
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch:{ all -> 0x018d }
            r7.a(r9, r8, r10)     // Catch:{ all -> 0x018d }
        L_0x0162:
            c.e.a.b.h.b.x r7 = r6.n()     // Catch:{ all -> 0x018d }
            boolean r7 = r7.v()     // Catch:{ all -> 0x018d }
            if (r7 == 0) goto L_0x0176
            boolean r7 = r6.u()     // Catch:{ all -> 0x018d }
            if (r7 == 0) goto L_0x0176
            r6.t()     // Catch:{ all -> 0x018d }
            goto L_0x0179
        L_0x0176:
            r6.v()     // Catch:{ all -> 0x018d }
        L_0x0179:
            c.e.a.b.h.b.sc r7 = r6.l()     // Catch:{ all -> 0x018d }
            r7.y()     // Catch:{ all -> 0x018d }
            c.e.a.b.h.b.sc r7 = r6.l()     // Catch:{ all -> 0x0196 }
            r7.w()     // Catch:{ all -> 0x0196 }
            r6.r = r0
            r6.w()
            return
        L_0x018d:
            r7 = move-exception
            c.e.a.b.h.b.sc r8 = r6.l()     // Catch:{ all -> 0x0196 }
            r8.w()     // Catch:{ all -> 0x0196 }
            throw r7     // Catch:{ all -> 0x0196 }
        L_0x0196:
            r7 = move-exception
            r6.r = r0
            r6.w()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.Tb.a(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    public final void a(Runnable runnable) {
        C();
        if (this.o == null) {
            this.o = new ArrayList();
        }
        this.o.add(runnable);
    }

    public final int a(FileChannel fileChannel) {
        C();
        int i2 = 0;
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f10752j.e().t().a("Bad channel to read from");
            return 0;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0);
            int read = fileChannel.read(allocate);
            if (read != 4) {
                if (read != -1) {
                    this.f10752j.e().w().a("Unexpected data length. Bytes read", Integer.valueOf(read));
                }
                return 0;
            }
            allocate.flip();
            i2 = allocate.getInt();
            return i2;
        } catch (IOException e2) {
            this.f10752j.e().t().a("Failed to read from channel", e2);
        }
    }

    public final boolean a(int i2, FileChannel fileChannel) {
        C();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f10752j.e().t().a("Bad channel to read from");
            return false;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i2);
        allocate.flip();
        try {
            fileChannel.truncate(0);
            fileChannel.write(allocate);
            fileChannel.force(true);
            if (fileChannel.size() != 4) {
                this.f10752j.e().t().a("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            }
            return true;
        } catch (IOException e2) {
            this.f10752j.e().t().a("Failed to write to channel", e2);
            return false;
        }
    }

    public final void a(zzm zzm) {
        if (this.w != null) {
            this.x = new ArrayList();
            this.x.addAll(this.w);
        }
        sc l2 = l();
        String str = zzm.f13244a;
        r.b(str);
        l2.l();
        l2.s();
        try {
            SQLiteDatabase x2 = l2.x();
            String[] strArr = {str};
            int delete = x2.delete("apps", "app_id=?", strArr) + 0 + x2.delete("events", "app_id=?", strArr) + x2.delete("user_attributes", "app_id=?", strArr) + x2.delete("conditional_properties", "app_id=?", strArr) + x2.delete("raw_events", "app_id=?", strArr) + x2.delete("raw_events_metadata", "app_id=?", strArr) + x2.delete("queue", "app_id=?", strArr) + x2.delete("audience_filter_values", "app_id=?", strArr) + x2.delete("main_event_params", "app_id=?", strArr);
            if (delete > 0) {
                l2.e().B().a("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e2) {
            l2.e().t().a("Error resetting analytics data. appId, error", C0957t.a(str), e2);
        }
        zzm a2 = a(this.f10752j.b(), zzm.f13244a, zzm.f13245b, zzm.f13251h, zzm.o, zzm.p, zzm.m, zzm.r);
        if (!this.f10752j.k().n(zzm.f13244a) || zzm.f13251h) {
            c(a2);
        }
    }

    public final zzm a(Context context, String str, String str2, boolean z, boolean z2, boolean z3, long j2, String str3) {
        String str4;
        String str5;
        int i2;
        String str6 = str;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            this.f10752j.e().t().a("PackageManager is null, can not log app install information");
            return null;
        }
        try {
            str4 = packageManager.getInstallerPackageName(str6);
        } catch (IllegalArgumentException unused) {
            this.f10752j.e().t().a("Error retrieving installer package name. appId", C0957t.a(str));
            str4 = "Unknown";
        }
        if (str4 == null) {
            str4 = "manual_install";
        } else if ("com.android.vending".equals(str4)) {
            str4 = "";
        }
        String str7 = str4;
        try {
            PackageInfo b2 = c.a(context).b(str6, 0);
            if (b2 != null) {
                CharSequence b3 = c.a(context).b(str6);
                if (!TextUtils.isEmpty(b3)) {
                    String charSequence = b3.toString();
                }
                String str8 = b2.versionName;
                i2 = b2.versionCode;
                str5 = str8;
            } else {
                i2 = Integer.MIN_VALUE;
                str5 = "Unknown";
            }
            this.f10752j.a();
            zzm zzm = new zzm(str, str2, str5, (long) i2, str7, this.f10752j.k().n(), this.f10752j.i().b(context, str6), (String) null, z, false, "", 0, this.f10752j.k().p(str6) ? j2 : 0, 0, z2, z3, false, str3, (Boolean) null, 0);
            return zzm;
        } catch (PackageManager.NameNotFoundException unused2) {
            this.f10752j.e().t().a("Error retrieving newly installed package info. appId, appName", C0957t.a(str), "Unknown");
            return null;
        }
    }

    public final void a(zzga zzga, zzm zzm) {
        C();
        r();
        if (TextUtils.isEmpty(zzm.f13245b) && TextUtils.isEmpty(zzm.r)) {
            return;
        }
        if (!zzm.f13251h) {
            d(zzm);
            return;
        }
        int c2 = this.f10752j.i().c(zzga.f13237b);
        if (c2 != 0) {
            this.f10752j.i();
            String a2 = cc.a(zzga.f13237b, 24, true);
            String str = zzga.f13237b;
            this.f10752j.i().a(zzm.f13244a, c2, "_ev", a2, str != null ? str.length() : 0);
            return;
        }
        int b2 = this.f10752j.i().b(zzga.f13237b, zzga.x());
        if (b2 != 0) {
            this.f10752j.i();
            String a3 = cc.a(zzga.f13237b, 24, true);
            Object x2 = zzga.x();
            this.f10752j.i().a(zzm.f13244a, b2, "_ev", a3, (x2 == null || (!(x2 instanceof String) && !(x2 instanceof CharSequence))) ? 0 : String.valueOf(x2).length());
            return;
        }
        Object c3 = this.f10752j.i().c(zzga.f13237b, zzga.x());
        if (c3 != null) {
            if ("_sid".equals(zzga.f13237b) && this.f10752j.k().u(zzm.f13244a)) {
                long j2 = zzga.f13238c;
                String str2 = zzga.f13242g;
                long j3 = 0;
                bc d2 = l().d(zzm.f13244a, "_sno");
                if (d2 != null) {
                    Object obj = d2.f10834e;
                    if (obj instanceof Long) {
                        j3 = ((Long) obj).longValue();
                        zzga zzga2 = new zzga("_sno", j2, Long.valueOf(j3 + 1), str2);
                        a(zzga2, zzm);
                    }
                }
                if (d2 != null) {
                    this.f10752j.e().w().a("Retrieved last session number from database does not contain a valid (long) value", d2.f10834e);
                }
                if (this.f10752j.k().e(zzm.f13244a, C0931k.ta)) {
                    C0919g b3 = l().b(zzm.f13244a, "_s");
                    if (b3 != null) {
                        j3 = b3.f10890c;
                        this.f10752j.e().B().a("Backfill the session number. Last used session number", Long.valueOf(j3));
                    }
                }
                zzga zzga22 = new zzga("_sno", j2, Long.valueOf(j3 + 1), str2);
                a(zzga22, zzm);
            }
            bc bcVar = new bc(zzm.f13244a, zzga.f13242g, zzga.f13237b, zzga.f13238c, c3);
            this.f10752j.e().A().a("Setting user property", this.f10752j.h().c(bcVar.f10832c), c3);
            l().v();
            try {
                d(zzm);
                boolean a4 = l().a(bcVar);
                l().y();
                if (a4) {
                    this.f10752j.e().A().a("User property set", this.f10752j.h().c(bcVar.f10832c), bcVar.f10834e);
                } else {
                    this.f10752j.e().t().a("Too many unique user properties are set. Ignoring user property", this.f10752j.h().c(bcVar.f10832c), bcVar.f10834e);
                    this.f10752j.i().a(zzm.f13244a, 9, (String) null, (String) null, 0);
                }
            } finally {
                l().w();
            }
        }
    }

    public final zzm a(String str) {
        String str2 = str;
        _b b2 = l().b(str2);
        if (b2 == null || TextUtils.isEmpty(b2.k())) {
            this.f10752j.e().A().a("No app data available; dropping", str2);
            return null;
        }
        Boolean b3 = b(b2);
        if (b3 == null || b3.booleanValue()) {
            _b _bVar = b2;
            zzm zzm = new zzm(str, b2.c(), b2.k(), b2.l(), b2.m(), b2.n(), b2.o(), (String) null, b2.d(), false, b2.b(), _bVar.C(), 0, 0, _bVar.D(), _bVar.E(), false, _bVar.g(), _bVar.F(), _bVar.p());
            return zzm;
        }
        this.f10752j.e().t().a("App version does not match; dropping. appId", C0957t.a(str));
        return null;
    }

    public final void a(zzr zzr) {
        zzm a2 = a(zzr.f13256a);
        if (a2 != null) {
            a(zzr, a2);
        }
    }

    public final void a(zzr zzr, zzm zzm) {
        r.a(zzr);
        r.b(zzr.f13256a);
        r.a(zzr.f13257b);
        r.a(zzr.f13258c);
        r.b(zzr.f13258c.f13237b);
        C();
        r();
        if (TextUtils.isEmpty(zzm.f13245b) && TextUtils.isEmpty(zzm.r)) {
            return;
        }
        if (!zzm.f13251h) {
            d(zzm);
            return;
        }
        zzr zzr2 = new zzr(zzr);
        boolean z = false;
        zzr2.f13260e = false;
        l().v();
        try {
            zzr e2 = l().e(zzr2.f13256a, zzr2.f13258c.f13237b);
            if (e2 != null && !e2.f13257b.equals(zzr2.f13257b)) {
                this.f10752j.e().w().a("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.f10752j.h().c(zzr2.f13258c.f13237b), zzr2.f13257b, e2.f13257b);
            }
            if (e2 != null && e2.f13260e) {
                zzr2.f13257b = e2.f13257b;
                zzr2.f13259d = e2.f13259d;
                zzr2.f13263h = e2.f13263h;
                zzr2.f13261f = e2.f13261f;
                zzr2.f13264i = e2.f13264i;
                zzr2.f13260e = e2.f13260e;
                zzga zzga = new zzga(zzr2.f13258c.f13237b, e2.f13258c.f13238c, zzr2.f13258c.x(), e2.f13258c.f13242g);
                zzr2.f13258c = zzga;
            } else if (TextUtils.isEmpty(zzr2.f13261f)) {
                zzga zzga2 = new zzga(zzr2.f13258c.f13237b, zzr2.f13259d, zzr2.f13258c.x(), zzr2.f13258c.f13242g);
                zzr2.f13258c = zzga2;
                zzr2.f13260e = true;
                z = true;
            }
            if (zzr2.f13260e) {
                zzga zzga3 = zzr2.f13258c;
                bc bcVar = new bc(zzr2.f13256a, zzr2.f13257b, zzga3.f13237b, zzga3.f13238c, zzga3.x());
                if (l().a(bcVar)) {
                    this.f10752j.e().A().a("User property updated immediately", zzr2.f13256a, this.f10752j.h().c(bcVar.f10832c), bcVar.f10834e);
                } else {
                    this.f10752j.e().t().a("(2)Too many active user properties, ignoring", C0957t.a(zzr2.f13256a), this.f10752j.h().c(bcVar.f10832c), bcVar.f10834e);
                }
                if (z && zzr2.f13264i != null) {
                    b(new zzaj(zzr2.f13264i, zzr2.f13259d), zzm);
                }
            }
            if (l().a(zzr2)) {
                this.f10752j.e().A().a("Conditional property added", zzr2.f13256a, this.f10752j.h().c(zzr2.f13258c.f13237b), zzr2.f13258c.x());
            } else {
                this.f10752j.e().t().a("Too many conditional properties, ignoring", C0957t.a(zzr2.f13256a), this.f10752j.h().c(zzr2.f13258c.f13237b), zzr2.f13258c.x());
            }
            l().y();
        } finally {
            l().w();
        }
    }

    public final void a(boolean z) {
        v();
    }
}
