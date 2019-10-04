package j.a.a;

import j.C;
import j.C1141h;
import j.L;
import j.P;
import j.a.c.e;
import j.a.c.f;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* compiled from: CacheStrategy */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final L f15263a;

    /* renamed from: b  reason: collision with root package name */
    public final P f15264b;

    /* compiled from: CacheStrategy */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f15265a;

        /* renamed from: b  reason: collision with root package name */
        public final L f15266b;

        /* renamed from: c  reason: collision with root package name */
        public final P f15267c;

        /* renamed from: d  reason: collision with root package name */
        public Date f15268d;

        /* renamed from: e  reason: collision with root package name */
        public String f15269e;

        /* renamed from: f  reason: collision with root package name */
        public Date f15270f;

        /* renamed from: g  reason: collision with root package name */
        public String f15271g;

        /* renamed from: h  reason: collision with root package name */
        public Date f15272h;

        /* renamed from: i  reason: collision with root package name */
        public long f15273i;

        /* renamed from: j  reason: collision with root package name */
        public long f15274j;

        /* renamed from: k  reason: collision with root package name */
        public String f15275k;

        /* renamed from: l  reason: collision with root package name */
        public int f15276l = -1;

        public a(long j2, L l2, P p) {
            this.f15265a = j2;
            this.f15266b = l2;
            this.f15267c = p;
            if (p != null) {
                this.f15273i = p.G();
                this.f15274j = p.E();
                C x = p.x();
                int b2 = x.b();
                for (int i2 = 0; i2 < b2; i2++) {
                    String a2 = x.a(i2);
                    String b3 = x.b(i2);
                    if ("Date".equalsIgnoreCase(a2)) {
                        this.f15268d = e.a(b3);
                        this.f15269e = b3;
                    } else if ("Expires".equalsIgnoreCase(a2)) {
                        this.f15272h = e.a(b3);
                    } else if ("Last-Modified".equalsIgnoreCase(a2)) {
                        this.f15270f = e.a(b3);
                        this.f15271g = b3;
                    } else if ("ETag".equalsIgnoreCase(a2)) {
                        this.f15275k = b3;
                    } else if ("Age".equalsIgnoreCase(a2)) {
                        this.f15276l = f.a(b3, -1);
                    }
                }
            }
        }

        public final long a() {
            Date date = this.f15268d;
            long j2 = 0;
            if (date != null) {
                j2 = Math.max(0, this.f15274j - date.getTime());
            }
            int i2 = this.f15276l;
            if (i2 != -1) {
                j2 = Math.max(j2, TimeUnit.SECONDS.toMillis((long) i2));
            }
            long j3 = this.f15274j;
            return j2 + (j3 - this.f15273i) + (this.f15265a - j3);
        }

        public final long b() {
            long j2;
            long j3;
            C1141h t = this.f15267c.t();
            if (t.d() != -1) {
                return TimeUnit.SECONDS.toMillis((long) t.d());
            }
            long j4 = 0;
            if (this.f15272h != null) {
                Date date = this.f15268d;
                if (date != null) {
                    j3 = date.getTime();
                } else {
                    j3 = this.f15274j;
                }
                long time = this.f15272h.getTime() - j3;
                if (time > 0) {
                    j4 = time;
                }
                return j4;
            }
            if (this.f15270f != null && this.f15267c.F().g().l() == null) {
                Date date2 = this.f15268d;
                if (date2 != null) {
                    j2 = date2.getTime();
                } else {
                    j2 = this.f15273i;
                }
                long time2 = j2 - this.f15270f.getTime();
                if (time2 > 0) {
                    j4 = time2 / 10;
                }
            }
            return j4;
        }

        public d c() {
            d d2 = d();
            return (d2.f15263a == null || !this.f15266b.b().j()) ? d2 : new d(null, null);
        }

        public final d d() {
            if (this.f15267c == null) {
                return new d(this.f15266b, null);
            }
            if (this.f15266b.d() && this.f15267c.w() == null) {
                return new d(this.f15266b, null);
            }
            if (!d.a(this.f15267c, this.f15266b)) {
                return new d(this.f15266b, null);
            }
            C1141h b2 = this.f15266b.b();
            if (b2.h() || a(this.f15266b)) {
                return new d(this.f15266b, null);
            }
            C1141h t = this.f15267c.t();
            long a2 = a();
            long b3 = b();
            if (b2.d() != -1) {
                b3 = Math.min(b3, TimeUnit.SECONDS.toMillis((long) b2.d()));
            }
            long j2 = 0;
            long millis = b2.f() != -1 ? TimeUnit.SECONDS.toMillis((long) b2.f()) : 0;
            if (!t.g() && b2.e() != -1) {
                j2 = TimeUnit.SECONDS.toMillis((long) b2.e());
            }
            if (!t.h()) {
                long j3 = millis + a2;
                if (j3 < j2 + b3) {
                    P.a B = this.f15267c.B();
                    if (j3 >= b3) {
                        B.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                    }
                    if (a2 > 86400000 && e()) {
                        B.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                    }
                    return new d(null, B.a());
                }
            }
            String str = this.f15275k;
            String str2 = "If-Modified-Since";
            if (str != null) {
                str2 = "If-None-Match";
            } else if (this.f15270f != null) {
                str = this.f15271g;
            } else if (this.f15268d == null) {
                return new d(this.f15266b, null);
            } else {
                str = this.f15269e;
            }
            C.a a3 = this.f15266b.c().a();
            j.a.a.f15256a.a(a3, str2, str);
            L.a f2 = this.f15266b.f();
            f2.a(a3.a());
            return new d(f2.a(), this.f15267c);
        }

        public final boolean e() {
            return this.f15267c.t().d() == -1 && this.f15272h == null;
        }

        public static boolean a(L l2) {
            return (l2.a("If-Modified-Since") == null && l2.a("If-None-Match") == null) ? false : true;
        }
    }

    public d(L l2, P p) {
        this.f15263a = l2;
        this.f15264b = p;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0056, code lost:
        if (r3.t().b() == false) goto L_0x0059;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0059, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(j.P r3, j.L r4) {
        /*
            int r0 = r3.v()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L_0x005a
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L_0x005a
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L_0x005a
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L_0x005a
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L_0x005a
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L_0x005a
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L_0x0031
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L_0x005a
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L_0x005a
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L_0x005a
            switch(r0) {
                case 300: goto L_0x005a;
                case 301: goto L_0x005a;
                case 302: goto L_0x0031;
                default: goto L_0x0030;
            }
        L_0x0030:
            goto L_0x0059
        L_0x0031:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.e(r0)
            if (r0 != 0) goto L_0x005a
            j.h r0 = r3.t()
            int r0 = r0.d()
            r1 = -1
            if (r0 != r1) goto L_0x005a
            j.h r0 = r3.t()
            boolean r0 = r0.c()
            if (r0 != 0) goto L_0x005a
            j.h r0 = r3.t()
            boolean r0 = r0.b()
            if (r0 == 0) goto L_0x0059
            goto L_0x005a
        L_0x0059:
            return r2
        L_0x005a:
            j.h r3 = r3.t()
            boolean r3 = r3.i()
            if (r3 != 0) goto L_0x006f
            j.h r3 = r4.b()
            boolean r3 = r3.i()
            if (r3 != 0) goto L_0x006f
            r2 = 1
        L_0x006f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.a.d.a(j.P, j.L):boolean");
    }
}
