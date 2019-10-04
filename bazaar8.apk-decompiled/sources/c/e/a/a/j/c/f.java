package c.e.a.a.j.c;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import c.e.a.a.C;
import c.e.a.a.C0744q;
import c.e.a.a.Z;
import c.e.a.a.j.c.a.n;
import c.e.a.a.j.c.c;
import c.e.a.a.j.c.i;
import c.e.a.a.j.c.k;
import c.e.a.a.j.m;
import c.e.a.a.j.q;
import c.e.a.a.j.r;
import c.e.a.a.j.u;
import c.e.a.a.j.v;
import c.e.a.a.j.w;
import c.e.a.a.n.A;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.n.t;
import c.e.a.a.n.v;
import c.e.a.a.n.x;
import c.e.a.a.n.y;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.crashlytics.android.answers.BackgroundManager;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: DashMediaSource */
public final class f extends m {
    public Handler A;
    public Uri B;
    public Uri C;
    public c.e.a.a.j.c.a.b D;
    public boolean E;
    public long F;
    public long G;
    public long H;
    public int I;
    public long J;
    public int K;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f8618f;

    /* renamed from: g  reason: collision with root package name */
    public final j.a f8619g;

    /* renamed from: h  reason: collision with root package name */
    public final c.a f8620h;

    /* renamed from: i  reason: collision with root package name */
    public final q f8621i;

    /* renamed from: j  reason: collision with root package name */
    public final v f8622j;

    /* renamed from: k  reason: collision with root package name */
    public final long f8623k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f8624l;
    public final w.a m;
    public final y.a<? extends c.e.a.a.j.c.a.b> n;
    public final e o;
    public final Object p;
    public final SparseArray<d> q;
    public final Runnable r;
    public final Runnable s;
    public final k.b t;
    public final x u;
    public final Object v;
    public j w;
    public Loader x;
    public A y;
    public IOException z;

    /* compiled from: DashMediaSource */
    private static final class a extends Z {

        /* renamed from: b  reason: collision with root package name */
        public final long f8625b;

        /* renamed from: c  reason: collision with root package name */
        public final long f8626c;

        /* renamed from: d  reason: collision with root package name */
        public final int f8627d;

        /* renamed from: e  reason: collision with root package name */
        public final long f8628e;

        /* renamed from: f  reason: collision with root package name */
        public final long f8629f;

        /* renamed from: g  reason: collision with root package name */
        public final long f8630g;

        /* renamed from: h  reason: collision with root package name */
        public final c.e.a.a.j.c.a.b f8631h;

        /* renamed from: i  reason: collision with root package name */
        public final Object f8632i;

        public a(long j2, long j3, int i2, long j4, long j5, long j6, c.e.a.a.j.c.a.b bVar, Object obj) {
            this.f8625b = j2;
            this.f8626c = j3;
            this.f8627d = i2;
            this.f8628e = j4;
            this.f8629f = j5;
            this.f8630g = j6;
            this.f8631h = bVar;
            this.f8632i = obj;
        }

        public int a() {
            return this.f8631h.a();
        }

        public int b() {
            return 1;
        }

        public Z.a a(int i2, Z.a aVar, boolean z) {
            C0737e.a(i2, 0, a());
            Integer num = null;
            String str = z ? this.f8631h.a(i2).f8553a : null;
            if (z) {
                num = Integer.valueOf(this.f8627d + i2);
            }
            aVar.a(str, num, 0, this.f8631h.c(i2), C0744q.a(this.f8631h.a(i2).f8554b - this.f8631h.a(0).f8554b) - this.f8628e);
            return aVar;
        }

        public Z.b a(int i2, Z.b bVar, boolean z, long j2) {
            C0737e.a(i2, 0, 1);
            long a2 = a(j2);
            Object obj = z ? this.f8632i : null;
            c.e.a.a.j.c.a.b bVar2 = this.f8631h;
            bVar.a(obj, this.f8625b, this.f8626c, true, bVar2.f8525d && bVar2.f8526e != -9223372036854775807L && bVar2.f8523b == -9223372036854775807L, a2, this.f8629f, 0, a() - 1, this.f8628e);
            return bVar;
        }

        public int a(Object obj) {
            if (!(obj instanceof Integer)) {
                return -1;
            }
            int intValue = ((Integer) obj).intValue() - this.f8627d;
            if (intValue < 0 || intValue >= a()) {
                intValue = -1;
            }
            return intValue;
        }

        public final long a(long j2) {
            long j3 = this.f8630g;
            if (!this.f8631h.f8525d) {
                return j3;
            }
            if (j2 > 0) {
                j3 += j2;
                if (j3 > this.f8629f) {
                    return -9223372036854775807L;
                }
            }
            long c2 = this.f8631h.c(0);
            long j4 = this.f8628e + j3;
            int i2 = 0;
            while (i2 < this.f8631h.a() - 1 && j4 >= c2) {
                j4 -= c2;
                i2++;
                c2 = this.f8631h.c(i2);
            }
            c.e.a.a.j.c.a.f a2 = this.f8631h.a(i2);
            int a3 = a2.a(2);
            if (a3 == -1) {
                return j3;
            }
            g d2 = a2.f8555c.get(a3).f8519c.get(0).d();
            if (!(d2 == null || d2.c(c2) == 0)) {
                j3 = (j3 + d2.a(d2.b(j4, c2))) - j4;
            }
            return j3;
        }

        public Object a(int i2) {
            C0737e.a(i2, 0, a());
            return Integer.valueOf(this.f8627d + i2);
        }
    }

    /* compiled from: DashMediaSource */
    private final class b implements k.b {
        public b() {
        }

        public void a() {
            f.this.f();
        }

        public void a(long j2) {
            f.this.a(j2);
        }
    }

    /* compiled from: DashMediaSource */
    public static final class c implements c.e.a.a.j.a.c {

        /* renamed from: a  reason: collision with root package name */
        public final c.a f8634a;

        /* renamed from: b  reason: collision with root package name */
        public final j.a f8635b;

        /* renamed from: c  reason: collision with root package name */
        public y.a<? extends c.e.a.a.j.c.a.b> f8636c;

        /* renamed from: d  reason: collision with root package name */
        public List<StreamKey> f8637d;

        /* renamed from: e  reason: collision with root package name */
        public q f8638e;

        /* renamed from: f  reason: collision with root package name */
        public v f8639f;

        /* renamed from: g  reason: collision with root package name */
        public long f8640g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f8641h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f8642i;

        /* renamed from: j  reason: collision with root package name */
        public Object f8643j;

        public c(j.a aVar) {
            this(new i.a(aVar), aVar);
        }

        public f createMediaSource(Uri uri) {
            this.f8642i = true;
            if (this.f8636c == null) {
                this.f8636c = new c.e.a.a.j.c.a.c();
            }
            List<StreamKey> list = this.f8637d;
            if (list != null) {
                this.f8636c = new c.e.a.a.h.c(this.f8636c, list);
            }
            C0737e.a(uri);
            f fVar = new f(null, uri, this.f8635b, this.f8636c, this.f8634a, this.f8638e, this.f8639f, this.f8640g, this.f8641h, this.f8643j);
            return fVar;
        }

        public c(c.a aVar, j.a aVar2) {
            C0737e.a(aVar);
            this.f8634a = aVar;
            this.f8635b = aVar2;
            this.f8639f = new t();
            this.f8640g = 30000;
            this.f8638e = new r();
        }
    }

    /* compiled from: DashMediaSource */
    static final class d implements y.a<Long> {

        /* renamed from: a  reason: collision with root package name */
        public static final Pattern f8644a = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        public Long a(Uri uri, InputStream inputStream) {
            String readLine = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("UTF-8"))).readLine();
            try {
                Matcher matcher = f8644a.matcher(readLine);
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
                    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                    long time = simpleDateFormat.parse(group).getTime();
                    if (!"Z".equals(matcher.group(2))) {
                        long j2 = "+".equals(matcher.group(4)) ? 1 : -1;
                        long parseLong = Long.parseLong(matcher.group(5));
                        String group2 = matcher.group(7);
                        time -= j2 * ((((parseLong * 60) + (TextUtils.isEmpty(group2) ? 0 : Long.parseLong(group2))) * 60) * 1000);
                    }
                    return Long.valueOf(time);
                }
                throw new ParserException("Couldn't parse timestamp: " + readLine);
            } catch (ParseException e2) {
                throw new ParserException((Throwable) e2);
            }
        }
    }

    /* compiled from: DashMediaSource */
    private final class e implements Loader.a<y<c.e.a.a.j.c.a.b>> {
        public e() {
        }

        public void a(y<c.e.a.a.j.c.a.b> yVar, long j2, long j3) {
            f.this.b(yVar, j2, j3);
        }

        public void a(y<c.e.a.a.j.c.a.b> yVar, long j2, long j3, boolean z) {
            f.this.a((y<?>) yVar, j2, j3);
        }

        public Loader.b a(y<c.e.a.a.j.c.a.b> yVar, long j2, long j3, IOException iOException, int i2) {
            return f.this.a(yVar, j2, j3, iOException, i2);
        }
    }

    /* renamed from: c.e.a.a.j.c.f$f  reason: collision with other inner class name */
    /* compiled from: DashMediaSource */
    final class C0110f implements x {
        public C0110f() {
        }

        public void a() {
            f.this.x.a();
            b();
        }

        public final void b() {
            if (f.this.z != null) {
                throw f.this.z;
            }
        }
    }

    /* compiled from: DashMediaSource */
    private static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f8647a;

        /* renamed from: b  reason: collision with root package name */
        public final long f8648b;

        /* renamed from: c  reason: collision with root package name */
        public final long f8649c;

        public g(boolean z, long j2, long j3) {
            this.f8647a = z;
            this.f8648b = j2;
            this.f8649c = j3;
        }

        public static g a(c.e.a.a.j.c.a.f fVar, long j2) {
            boolean z;
            int i2;
            boolean z2;
            c.e.a.a.j.c.a.f fVar2 = fVar;
            long j3 = j2;
            int size = fVar2.f8555c.size();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    z = false;
                    break;
                }
                int i5 = fVar2.f8555c.get(i4).f8518b;
                if (i5 == 1 || i5 == 2) {
                    z = true;
                } else {
                    i4++;
                }
            }
            long j4 = Long.MAX_VALUE;
            int i6 = 0;
            boolean z3 = false;
            boolean z4 = false;
            long j5 = 0;
            while (i6 < size) {
                c.e.a.a.j.c.a.a aVar = fVar2.f8555c.get(i6);
                if (!z || aVar.f8518b != 3) {
                    g d2 = aVar.f8519c.get(i3).d();
                    if (d2 == null) {
                        g gVar = new g(true, 0, j2);
                        return gVar;
                    }
                    boolean a2 = d2.a() | z4;
                    int c2 = d2.c(j3);
                    if (c2 == 0) {
                        i2 = size;
                        z2 = z;
                        z4 = a2;
                        z3 = true;
                        j5 = 0;
                        j4 = 0;
                    } else {
                        if (!z3) {
                            z2 = z;
                            long b2 = d2.b();
                            i2 = size;
                            long max = Math.max(j5, d2.a(b2));
                            if (c2 != -1) {
                                long j6 = (b2 + ((long) c2)) - 1;
                                j5 = max;
                                j4 = Math.min(j4, d2.a(j6) + d2.a(j6, j3));
                            } else {
                                j5 = max;
                            }
                        } else {
                            i2 = size;
                            z2 = z;
                        }
                        z4 = a2;
                    }
                } else {
                    i2 = size;
                    z2 = z;
                }
                i6++;
                i3 = 0;
                fVar2 = fVar;
                z = z2;
                size = i2;
            }
            g gVar2 = new g(z4, j5, j4);
            return gVar2;
        }
    }

    /* compiled from: DashMediaSource */
    private final class h implements Loader.a<y<Long>> {
        public h() {
        }

        public void a(y<Long> yVar, long j2, long j3) {
            f.this.c(yVar, j2, j3);
        }

        public void a(y<Long> yVar, long j2, long j3, boolean z) {
            f.this.a((y<?>) yVar, j2, j3);
        }

        public Loader.b a(y<Long> yVar, long j2, long j3, IOException iOException, int i2) {
            return f.this.a(yVar, j2, j3, iOException);
        }
    }

    /* compiled from: DashMediaSource */
    private static final class i implements y.a<Long> {
        public i() {
        }

        public Long a(Uri uri, InputStream inputStream) {
            return Long.valueOf(I.i(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }
    }

    static {
        C.a("goog.exo.dash");
    }

    public void c(y<Long> yVar, long j2, long j3) {
        y<Long> yVar2 = yVar;
        this.m.b(yVar2.f9530a, yVar.f(), yVar.d(), yVar2.f9531b, j2, j3, yVar.c());
        b(yVar.e().longValue() - j2);
    }

    public final long d() {
        if (this.H != 0) {
            return C0744q.a(SystemClock.elapsedRealtime() + this.H);
        }
        return C0744q.a(System.currentTimeMillis());
    }

    public /* synthetic */ void e() {
        a(false);
    }

    public void f() {
        this.A.removeCallbacks(this.s);
        g();
    }

    public final void g() {
        Uri uri;
        this.A.removeCallbacks(this.r);
        if (this.x.c()) {
            this.E = true;
            return;
        }
        synchronized (this.p) {
            uri = this.C;
        }
        this.E = false;
        a(new y(this.w, uri, 4, this.n), this.o, this.f8622j.a(4));
    }

    public f(c.e.a.a.j.c.a.b bVar, Uri uri, j.a aVar, y.a<? extends c.e.a.a.j.c.a.b> aVar2, c.a aVar3, q qVar, v vVar, long j2, boolean z2, Object obj) {
        this.B = uri;
        this.D = bVar;
        this.C = uri;
        this.f8619g = aVar;
        this.n = aVar2;
        this.f8620h = aVar3;
        this.f8622j = vVar;
        this.f8623k = j2;
        this.f8624l = z2;
        this.f8621i = qVar;
        this.v = obj;
        this.f8618f = bVar != null;
        this.m = a((v.a) null);
        this.p = new Object();
        this.q = new SparseArray<>();
        this.t = new b();
        this.J = -9223372036854775807L;
        if (this.f8618f) {
            C0737e.b(!bVar.f8525d);
            this.o = null;
            this.r = null;
            this.s = null;
            this.u = new x.a();
            return;
        }
        this.o = new e();
        this.u = new C0110f();
        this.r = new b(this);
        this.s = new a(this);
    }

    public void a(A a2) {
        this.y = a2;
        if (this.f8618f) {
            a(false);
            return;
        }
        this.w = this.f8619g.a();
        this.x = new Loader("Loader:DashMediaSource");
        this.A = new Handler();
        g();
    }

    public void b() {
        this.E = false;
        this.w = null;
        Loader loader = this.x;
        if (loader != null) {
            loader.d();
            this.x = null;
        }
        this.F = 0;
        this.G = 0;
        this.D = this.f8618f ? this.D : null;
        this.C = this.B;
        this.z = null;
        Handler handler = this.A;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.A = null;
        }
        this.H = 0;
        this.I = 0;
        this.J = -9223372036854775807L;
        this.K = 0;
        this.q.clear();
    }

    public final void c(long j2) {
        this.A.postDelayed(this.r, j2);
    }

    public final long c() {
        return (long) Math.min((this.I - 1) * AnswersRetryFilesSender.BACKOFF_MS, BackgroundManager.BACKGROUND_DELAY);
    }

    public void a() {
        this.u.a();
    }

    public u a(v.a aVar, c.e.a.a.n.e eVar, long j2) {
        v.a aVar2 = aVar;
        int intValue = ((Integer) aVar2.f8976a).intValue() - this.K;
        w.a a2 = a(aVar2, this.D.a(intValue).f8554b);
        d dVar = new d(this.K + intValue, this.D, intValue, this.f8620h, this.y, this.f8622j, a2, this.H, this.u, eVar, this.f8621i, this.t);
        this.q.put(dVar.f8600b, dVar);
        return dVar;
    }

    public void a(u uVar) {
        d dVar = (d) uVar;
        dVar.c();
        this.q.remove(dVar.f8600b);
    }

    public void a(long j2) {
        long j3 = this.J;
        if (j3 == -9223372036854775807L || j3 < j2) {
            this.J = j2;
        }
    }

    public Loader.b a(y<c.e.a.a.j.c.a.b> yVar, long j2, long j3, IOException iOException, int i2) {
        Loader.b bVar;
        y<c.e.a.a.j.c.a.b> yVar2 = yVar;
        long a2 = this.f8622j.a(4, j3, iOException, i2);
        if (a2 == -9223372036854775807L) {
            bVar = Loader.f12877d;
        } else {
            bVar = Loader.a(false, a2);
        }
        this.m.a(yVar2.f9530a, yVar.f(), yVar.d(), yVar2.f9531b, j2, j3, yVar.c(), iOException, !bVar.a());
        return bVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00b9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(c.e.a.a.n.y<c.e.a.a.j.c.a.b> r18, long r19, long r21) {
        /*
            r17 = this;
            r1 = r17
            r0 = r18
            r13 = r19
            c.e.a.a.j.w$a r2 = r1.m
            c.e.a.a.n.l r3 = r0.f9530a
            android.net.Uri r4 = r18.f()
            java.util.Map r5 = r18.d()
            int r6 = r0.f9531b
            long r11 = r18.c()
            r7 = r19
            r9 = r21
            r2.b(r3, r4, r5, r6, r7, r9, r11)
            java.lang.Object r2 = r18.e()
            c.e.a.a.j.c.a.b r2 = (c.e.a.a.j.c.a.b) r2
            c.e.a.a.j.c.a.b r3 = r1.D
            r4 = 0
            if (r3 != 0) goto L_0x002c
            r3 = 0
            goto L_0x0030
        L_0x002c:
            int r3 = r3.a()
        L_0x0030:
            c.e.a.a.j.c.a.f r5 = r2.a((int) r4)
            long r5 = r5.f8554b
            r7 = 0
        L_0x0037:
            if (r7 >= r3) goto L_0x0048
            c.e.a.a.j.c.a.b r8 = r1.D
            c.e.a.a.j.c.a.f r8 = r8.a((int) r7)
            long r8 = r8.f8554b
            int r10 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r10 >= 0) goto L_0x0048
            int r7 = r7 + 1
            goto L_0x0037
        L_0x0048:
            boolean r5 = r2.f8525d
            r6 = 1
            if (r5 == 0) goto L_0x00bb
            int r5 = r3 - r7
            int r8 = r2.a()
            if (r5 <= r8) goto L_0x005e
            java.lang.String r5 = "DashMediaSource"
            java.lang.String r8 = "Loaded out of sync manifest"
            c.e.a.a.o.p.d(r5, r8)
        L_0x005c:
            r5 = 1
            goto L_0x0097
        L_0x005e:
            long r8 = r1.J
            r10 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r5 == 0) goto L_0x0096
            long r10 = r2.f8529h
            r15 = 1000(0x3e8, double:4.94E-321)
            long r10 = r10 * r15
            int r5 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r5 > 0) goto L_0x0096
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r8 = "Loaded stale dynamic manifest: "
            r5.append(r8)
            long r8 = r2.f8529h
            r5.append(r8)
            java.lang.String r8 = ", "
            r5.append(r8)
            long r8 = r1.J
            r5.append(r8)
            java.lang.String r5 = r5.toString()
            java.lang.String r8 = "DashMediaSource"
            c.e.a.a.o.p.d(r8, r5)
            goto L_0x005c
        L_0x0096:
            r5 = 0
        L_0x0097:
            if (r5 == 0) goto L_0x00b9
            int r2 = r1.I
            int r3 = r2 + 1
            r1.I = r3
            c.e.a.a.n.v r3 = r1.f8622j
            int r0 = r0.f9531b
            int r0 = r3.a(r0)
            if (r2 >= r0) goto L_0x00b1
            long r2 = r17.c()
            r1.c(r2)
            goto L_0x00b8
        L_0x00b1:
            com.google.android.exoplayer2.source.dash.DashManifestStaleException r0 = new com.google.android.exoplayer2.source.dash.DashManifestStaleException
            r0.<init>()
            r1.z = r0
        L_0x00b8:
            return
        L_0x00b9:
            r1.I = r4
        L_0x00bb:
            r1.D = r2
            boolean r2 = r1.E
            c.e.a.a.j.c.a.b r5 = r1.D
            boolean r8 = r5.f8525d
            r2 = r2 & r8
            r1.E = r2
            long r8 = r13 - r21
            r1.F = r8
            r1.G = r13
            android.net.Uri r2 = r5.f8531j
            if (r2 == 0) goto L_0x00e9
            java.lang.Object r2 = r1.p
            monitor-enter(r2)
            c.e.a.a.n.l r0 = r0.f9530a     // Catch:{ all -> 0x00e6 }
            android.net.Uri r0 = r0.f9466a     // Catch:{ all -> 0x00e6 }
            android.net.Uri r5 = r1.C     // Catch:{ all -> 0x00e6 }
            if (r0 != r5) goto L_0x00dc
            r4 = 1
        L_0x00dc:
            if (r4 == 0) goto L_0x00e4
            c.e.a.a.j.c.a.b r0 = r1.D     // Catch:{ all -> 0x00e6 }
            android.net.Uri r0 = r0.f8531j     // Catch:{ all -> 0x00e6 }
            r1.C = r0     // Catch:{ all -> 0x00e6 }
        L_0x00e4:
            monitor-exit(r2)     // Catch:{ all -> 0x00e6 }
            goto L_0x00e9
        L_0x00e6:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x00e6 }
            throw r0
        L_0x00e9:
            if (r3 != 0) goto L_0x00fd
            c.e.a.a.j.c.a.b r0 = r1.D
            boolean r2 = r0.f8525d
            if (r2 == 0) goto L_0x00f9
            c.e.a.a.j.c.a.n r0 = r0.f8530i
            if (r0 == 0) goto L_0x00f9
            r1.a((c.e.a.a.j.c.a.n) r0)
            goto L_0x0105
        L_0x00f9:
            r1.a((boolean) r6)
            goto L_0x0105
        L_0x00fd:
            int r0 = r1.K
            int r0 = r0 + r7
            r1.K = r0
            r1.a((boolean) r6)
        L_0x0105:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.c.f.b(c.e.a.a.n.y, long, long):void");
    }

    public Loader.b a(y<Long> yVar, long j2, long j3, IOException iOException) {
        y<Long> yVar2 = yVar;
        w.a aVar = this.m;
        l lVar = yVar2.f9530a;
        Uri f2 = yVar.f();
        Map<String, List<String>> d2 = yVar.d();
        int i2 = yVar2.f9531b;
        aVar.a(lVar, f2, d2, i2, j2, j3, yVar.c(), iOException, true);
        a(iOException);
        return Loader.f12876c;
    }

    public void a(y<?> yVar, long j2, long j3) {
        y<?> yVar2 = yVar;
        this.m.a(yVar2.f9530a, yVar.f(), yVar.d(), yVar2.f9531b, j2, j3, yVar.c());
    }

    public final void a(n nVar) {
        String str = nVar.f8596a;
        if (I.a((Object) str, (Object) "urn:mpeg:dash:utc:direct:2014") || I.a((Object) str, (Object) "urn:mpeg:dash:utc:direct:2012")) {
            b(nVar);
        } else if (I.a((Object) str, (Object) "urn:mpeg:dash:utc:http-iso:2014") || I.a((Object) str, (Object) "urn:mpeg:dash:utc:http-iso:2012")) {
            a(nVar, new d());
        } else if (I.a((Object) str, (Object) "urn:mpeg:dash:utc:http-xsdate:2014") || I.a((Object) str, (Object) "urn:mpeg:dash:utc:http-xsdate:2012")) {
            a(nVar, new i());
        } else {
            a(new IOException("Unsupported UTC timing scheme"));
        }
    }

    public final void a(n nVar, y.a<Long> aVar) {
        a(new y(this.w, Uri.parse(nVar.f8597b), 5, aVar), new h(), 1);
    }

    public final void a(IOException iOException) {
        p.a("DashMediaSource", "Failed to resolve UtcTiming element.", iOException);
        a(true);
    }

    public final void b(n nVar) {
        try {
            b(I.i(nVar.f8597b) - this.G);
        } catch (ParserException e2) {
            a((IOException) e2);
        }
    }

    public final void a(boolean z2) {
        long j2;
        boolean z3;
        long j3;
        long j4;
        for (int i2 = 0; i2 < this.q.size(); i2++) {
            int keyAt = this.q.keyAt(i2);
            if (keyAt >= this.K) {
                this.q.valueAt(i2).a(this.D, keyAt - this.K);
            }
        }
        int a2 = this.D.a() - 1;
        g a3 = g.a(this.D.a(0), this.D.c(0));
        g a4 = g.a(this.D.a(a2), this.D.c(a2));
        long j5 = a3.f8648b;
        long j6 = a4.f8649c;
        if (!this.D.f8525d || a4.f8647a) {
            j2 = j5;
            z3 = false;
        } else {
            j6 = Math.min((d() - C0744q.a(this.D.f8522a)) - C0744q.a(this.D.a(a2).f8554b), j6);
            long j7 = this.D.f8527f;
            if (j7 != -9223372036854775807L) {
                long a5 = j6 - C0744q.a(j7);
                while (a5 < 0 && a2 > 0) {
                    a2--;
                    a5 += this.D.c(a2);
                }
                if (a2 == 0) {
                    j4 = Math.max(j5, a5);
                } else {
                    j4 = this.D.c(0);
                }
                j5 = j4;
            }
            j2 = j5;
            z3 = true;
        }
        long j8 = j6 - j2;
        for (int i3 = 0; i3 < this.D.a() - 1; i3++) {
            j8 += this.D.c(i3);
        }
        c.e.a.a.j.c.a.b bVar = this.D;
        if (bVar.f8525d) {
            long j9 = this.f8623k;
            if (!this.f8624l) {
                long j10 = bVar.f8528g;
                if (j10 != -9223372036854775807L) {
                    j9 = j10;
                }
            }
            long a6 = j8 - C0744q.a(j9);
            if (a6 < 5000000) {
                a6 = Math.min(5000000, j8 / 2);
            }
            j3 = a6;
        } else {
            j3 = 0;
        }
        c.e.a.a.j.c.a.b bVar2 = this.D;
        long b2 = bVar2.f8522a + bVar2.a(0).f8554b + C0744q.b(j2);
        c.e.a.a.j.c.a.b bVar3 = this.D;
        a aVar = new a(bVar3.f8522a, b2, this.K, j2, j8, j3, bVar3, this.v);
        a((Z) aVar, (Object) this.D);
        if (!this.f8618f) {
            this.A.removeCallbacks(this.s);
            if (z3) {
                this.A.postDelayed(this.s, 5000);
            }
            if (this.E) {
                g();
            } else if (z2) {
                c.e.a.a.j.c.a.b bVar4 = this.D;
                if (bVar4.f8525d) {
                    long j11 = bVar4.f8526e;
                    if (j11 != -9223372036854775807L) {
                        if (j11 == 0) {
                            j11 = 5000;
                        }
                        c(Math.max(0, (this.F + j11) - SystemClock.elapsedRealtime()));
                    }
                }
            }
        }
    }

    public final void b(long j2) {
        this.H = j2;
        a(true);
    }

    public final <T> void a(y<T> yVar, Loader.a<y<T>> aVar, int i2) {
        this.m.a(yVar.f9530a, yVar.f9531b, this.x.a(yVar, aVar, i2));
    }
}
