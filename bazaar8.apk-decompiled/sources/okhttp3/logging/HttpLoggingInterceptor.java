package okhttp3.logging;

import j.C;
import j.E;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import k.g;

public final class HttpLoggingInterceptor implements E {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f15990a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    public final a f15991b;

    /* renamed from: c  reason: collision with root package name */
    public volatile Set<String> f15992c;

    /* renamed from: d  reason: collision with root package name */
    public volatile Level f15993d;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f15995a = new a();

        void a(String str);
    }

    public HttpLoggingInterceptor() {
        this(a.f15995a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:93:0x02ee  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public j.P a(j.E.a r20) {
        /*
            r19 = this;
            r1 = r19
            r0 = r20
            okhttp3.logging.HttpLoggingInterceptor$Level r2 = r1.f15993d
            j.L r3 = r20.e()
            okhttp3.logging.HttpLoggingInterceptor$Level r4 = okhttp3.logging.HttpLoggingInterceptor.Level.NONE
            if (r2 != r4) goto L_0x0013
            j.P r0 = r0.a(r3)
            return r0
        L_0x0013:
            okhttp3.logging.HttpLoggingInterceptor$Level r4 = okhttp3.logging.HttpLoggingInterceptor.Level.BODY
            r5 = 1
            if (r2 != r4) goto L_0x001a
            r4 = 1
            goto L_0x001b
        L_0x001a:
            r4 = 0
        L_0x001b:
            if (r4 != 0) goto L_0x0024
            okhttp3.logging.HttpLoggingInterceptor$Level r7 = okhttp3.logging.HttpLoggingInterceptor.Level.HEADERS
            if (r2 != r7) goto L_0x0022
            goto L_0x0024
        L_0x0022:
            r2 = 0
            goto L_0x0025
        L_0x0024:
            r2 = 1
        L_0x0025:
            j.O r7 = r3.a()
            if (r7 == 0) goto L_0x002c
            goto L_0x002d
        L_0x002c:
            r5 = 0
        L_0x002d:
            j.n r8 = r20.c()
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "--> "
            r9.append(r10)
            java.lang.String r10 = r3.e()
            r9.append(r10)
            r10 = 32
            r9.append(r10)
            j.D r11 = r3.g()
            r9.append(r11)
            java.lang.String r11 = ""
            if (r8 == 0) goto L_0x0068
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = " "
            r12.append(r13)
            okhttp3.Protocol r8 = r8.a()
            r12.append(r8)
            java.lang.String r8 = r12.toString()
            goto L_0x0069
        L_0x0068:
            r8 = r11
        L_0x0069:
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            java.lang.String r9 = "-byte body)"
            java.lang.String r12 = " ("
            if (r2 != 0) goto L_0x0091
            if (r5 == 0) goto L_0x0091
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            r13.append(r8)
            r13.append(r12)
            long r14 = r7.a()
            r13.append(r14)
            r13.append(r9)
            java.lang.String r8 = r13.toString()
        L_0x0091:
            okhttp3.logging.HttpLoggingInterceptor$a r13 = r1.f15991b
            r13.a(r8)
            java.lang.String r8 = "-byte body omitted)"
            r13 = -1
            if (r2 == 0) goto L_0x01c6
            if (r5 == 0) goto L_0x00e0
            j.F r15 = r7.b()
            if (r15 == 0) goto L_0x00be
            okhttp3.logging.HttpLoggingInterceptor$a r15 = r1.f15991b
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r10 = "Content-Type: "
            r6.append(r10)
            j.F r10 = r7.b()
            r6.append(r10)
            java.lang.String r6 = r6.toString()
            r15.a(r6)
        L_0x00be:
            long r16 = r7.a()
            int r6 = (r16 > r13 ? 1 : (r16 == r13 ? 0 : -1))
            if (r6 == 0) goto L_0x00e0
            okhttp3.logging.HttpLoggingInterceptor$a r6 = r1.f15991b
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r15 = "Content-Length: "
            r10.append(r15)
            long r13 = r7.a()
            r10.append(r13)
            java.lang.String r10 = r10.toString()
            r6.a(r10)
        L_0x00e0:
            j.C r6 = r3.c()
            int r10 = r6.b()
            r13 = 0
        L_0x00e9:
            if (r13 >= r10) goto L_0x0105
            java.lang.String r14 = r6.a((int) r13)
            java.lang.String r15 = "Content-Type"
            boolean r15 = r15.equalsIgnoreCase(r14)
            if (r15 != 0) goto L_0x0102
            java.lang.String r15 = "Content-Length"
            boolean r14 = r15.equalsIgnoreCase(r14)
            if (r14 != 0) goto L_0x0102
            r1.a(r6, r13)
        L_0x0102:
            int r13 = r13 + 1
            goto L_0x00e9
        L_0x0105:
            java.lang.String r6 = "--> END "
            if (r4 == 0) goto L_0x01ae
            if (r5 != 0) goto L_0x010d
            goto L_0x01ae
        L_0x010d:
            j.C r5 = r3.c()
            boolean r5 = a((j.C) r5)
            if (r5 == 0) goto L_0x0136
            okhttp3.logging.HttpLoggingInterceptor$a r5 = r1.f15991b
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r6)
            java.lang.String r6 = r3.e()
            r7.append(r6)
            java.lang.String r6 = " (encoded body omitted)"
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            r5.a(r6)
            goto L_0x01c6
        L_0x0136:
            k.g r5 = new k.g
            r5.<init>()
            r7.a(r5)
            java.nio.charset.Charset r10 = f15990a
            j.F r13 = r7.b()
            if (r13 == 0) goto L_0x014c
            java.nio.charset.Charset r10 = f15990a
            java.nio.charset.Charset r10 = r13.a((java.nio.charset.Charset) r10)
        L_0x014c:
            okhttp3.logging.HttpLoggingInterceptor$a r13 = r1.f15991b
            r13.a(r11)
            boolean r13 = a((k.g) r5)
            if (r13 == 0) goto L_0x0186
            okhttp3.logging.HttpLoggingInterceptor$a r13 = r1.f15991b
            java.lang.String r5 = r5.a((java.nio.charset.Charset) r10)
            r13.a(r5)
            okhttp3.logging.HttpLoggingInterceptor$a r5 = r1.f15991b
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r6)
            java.lang.String r6 = r3.e()
            r10.append(r6)
            r10.append(r12)
            long r6 = r7.a()
            r10.append(r6)
            r10.append(r9)
            java.lang.String r6 = r10.toString()
            r5.a(r6)
            goto L_0x01c6
        L_0x0186:
            okhttp3.logging.HttpLoggingInterceptor$a r5 = r1.f15991b
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r6)
            java.lang.String r6 = r3.e()
            r10.append(r6)
            java.lang.String r6 = " (binary "
            r10.append(r6)
            long r6 = r7.a()
            r10.append(r6)
            r10.append(r8)
            java.lang.String r6 = r10.toString()
            r5.a(r6)
            goto L_0x01c6
        L_0x01ae:
            okhttp3.logging.HttpLoggingInterceptor$a r5 = r1.f15991b
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r6)
            java.lang.String r6 = r3.e()
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            r5.a(r6)
        L_0x01c6:
            long r5 = java.lang.System.nanoTime()
            j.P r0 = r0.a(r3)     // Catch:{ Exception -> 0x0392 }
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r13 = java.lang.System.nanoTime()
            long r13 = r13 - r5
            long r5 = r3.toMillis(r13)
            j.S r3 = r0.s()
            long r13 = r3.u()
            r16 = -1
            int r7 = (r13 > r16 ? 1 : (r13 == r16 ? 0 : -1))
            if (r7 == 0) goto L_0x01f9
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r13)
            java.lang.String r10 = "-byte"
            r7.append(r10)
            java.lang.String r7 = r7.toString()
            goto L_0x01fb
        L_0x01f9:
            java.lang.String r7 = "unknown-length"
        L_0x01fb:
            okhttp3.logging.HttpLoggingInterceptor$a r10 = r1.f15991b
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>()
            r16 = r9
            java.lang.String r9 = "<-- "
            r15.append(r9)
            int r9 = r0.v()
            r15.append(r9)
            java.lang.String r9 = r0.z()
            boolean r9 = r9.isEmpty()
            if (r9 == 0) goto L_0x0220
            r9 = r11
            r17 = r13
            r13 = 32
            goto L_0x0237
        L_0x0220:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            r17 = r13
            r13 = 32
            r9.append(r13)
            java.lang.String r14 = r0.z()
            r9.append(r14)
            java.lang.String r9 = r9.toString()
        L_0x0237:
            r15.append(r9)
            r15.append(r13)
            j.L r9 = r0.F()
            j.D r9 = r9.g()
            r15.append(r9)
            r15.append(r12)
            r15.append(r5)
            java.lang.String r5 = "ms"
            r15.append(r5)
            if (r2 != 0) goto L_0x026c
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = ", "
            r5.append(r6)
            r5.append(r7)
            java.lang.String r6 = " body"
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            goto L_0x026d
        L_0x026c:
            r5 = r11
        L_0x026d:
            r15.append(r5)
            r5 = 41
            r15.append(r5)
            java.lang.String r5 = r15.toString()
            r10.a(r5)
            if (r2 == 0) goto L_0x0391
            j.C r2 = r0.x()
            int r5 = r2.b()
            r6 = 0
        L_0x0287:
            if (r6 >= r5) goto L_0x028f
            r1.a(r2, r6)
            int r6 = r6 + 1
            goto L_0x0287
        L_0x028f:
            if (r4 == 0) goto L_0x038a
            boolean r4 = j.a.c.f.b((j.P) r0)
            if (r4 != 0) goto L_0x0299
            goto L_0x038a
        L_0x0299:
            j.C r4 = r0.x()
            boolean r4 = a((j.C) r4)
            if (r4 == 0) goto L_0x02ac
            okhttp3.logging.HttpLoggingInterceptor$a r2 = r1.f15991b
            java.lang.String r3 = "<-- END HTTP (encoded body omitted)"
            r2.a(r3)
            goto L_0x0391
        L_0x02ac:
            k.i r4 = r3.w()
            r5 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r4.d(r5)
            k.g r4 = r4.a()
            java.lang.String r5 = "Content-Encoding"
            java.lang.String r2 = r2.b((java.lang.String) r5)
            java.lang.String r5 = "gzip"
            boolean r2 = r5.equalsIgnoreCase(r2)
            r5 = 0
            if (r2 == 0) goto L_0x02f2
            long r6 = r4.size()
            java.lang.Long r2 = java.lang.Long.valueOf(r6)
            k.m r6 = new k.m     // Catch:{ all -> 0x02eb }
            k.g r4 = r4.clone()     // Catch:{ all -> 0x02eb }
            r6.<init>(r4)     // Catch:{ all -> 0x02eb }
            k.g r4 = new k.g     // Catch:{ all -> 0x02e8 }
            r4.<init>()     // Catch:{ all -> 0x02e8 }
            r4.a((k.z) r6)     // Catch:{ all -> 0x02e8 }
            r6.close()
            goto L_0x02f3
        L_0x02e8:
            r0 = move-exception
            r5 = r6
            goto L_0x02ec
        L_0x02eb:
            r0 = move-exception
        L_0x02ec:
            if (r5 == 0) goto L_0x02f1
            r5.close()
        L_0x02f1:
            throw r0
        L_0x02f2:
            r2 = r5
        L_0x02f3:
            java.nio.charset.Charset r5 = f15990a
            j.F r3 = r3.v()
            if (r3 == 0) goto L_0x0301
            java.nio.charset.Charset r5 = f15990a
            java.nio.charset.Charset r5 = r3.a((java.nio.charset.Charset) r5)
        L_0x0301:
            boolean r3 = a((k.g) r4)
            if (r3 != 0) goto L_0x032a
            okhttp3.logging.HttpLoggingInterceptor$a r2 = r1.f15991b
            r2.a(r11)
            okhttp3.logging.HttpLoggingInterceptor$a r2 = r1.f15991b
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "<-- END HTTP (binary "
            r3.append(r5)
            long r4 = r4.size()
            r3.append(r4)
            r3.append(r8)
            java.lang.String r3 = r3.toString()
            r2.a(r3)
            return r0
        L_0x032a:
            r6 = 0
            int r3 = (r17 > r6 ? 1 : (r17 == r6 ? 0 : -1))
            if (r3 == 0) goto L_0x0342
            okhttp3.logging.HttpLoggingInterceptor$a r3 = r1.f15991b
            r3.a(r11)
            okhttp3.logging.HttpLoggingInterceptor$a r3 = r1.f15991b
            k.g r6 = r4.clone()
            java.lang.String r5 = r6.a((java.nio.charset.Charset) r5)
            r3.a(r5)
        L_0x0342:
            java.lang.String r3 = "<-- END HTTP ("
            if (r2 == 0) goto L_0x036c
            okhttp3.logging.HttpLoggingInterceptor$a r5 = r1.f15991b
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r3)
            long r3 = r4.size()
            r6.append(r3)
            java.lang.String r3 = "-byte, "
            r6.append(r3)
            r6.append(r2)
            java.lang.String r2 = "-gzipped-byte body)"
            r6.append(r2)
            java.lang.String r2 = r6.toString()
            r5.a(r2)
            goto L_0x0391
        L_0x036c:
            okhttp3.logging.HttpLoggingInterceptor$a r2 = r1.f15991b
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r3)
            long r3 = r4.size()
            r5.append(r3)
            r3 = r16
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            r2.a(r3)
            goto L_0x0391
        L_0x038a:
            okhttp3.logging.HttpLoggingInterceptor$a r2 = r1.f15991b
            java.lang.String r3 = "<-- END HTTP"
            r2.a(r3)
        L_0x0391:
            return r0
        L_0x0392:
            r0 = move-exception
            r2 = r0
            okhttp3.logging.HttpLoggingInterceptor$a r0 = r1.f15991b
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "<-- HTTP FAILED: "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            r0.a(r3)
            goto L_0x03ac
        L_0x03ab:
            throw r2
        L_0x03ac:
            goto L_0x03ab
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.logging.HttpLoggingInterceptor.a(j.E$a):j.P");
    }

    public HttpLoggingInterceptor(a aVar) {
        this.f15992c = Collections.emptySet();
        this.f15993d = Level.NONE;
        this.f15991b = aVar;
    }

    public final void a(C c2, int i2) {
        String b2 = this.f15992c.contains(c2.a(i2)) ? "██" : c2.b(i2);
        a aVar = this.f15991b;
        aVar.a(c2.a(i2) + ": " + b2);
    }

    public static boolean a(g gVar) {
        try {
            g gVar2 = new g();
            gVar.a(gVar2, 0, gVar.size() < 64 ? gVar.size() : 64);
            int i2 = 0;
            while (true) {
                if (i2 >= 16) {
                    break;
                } else if (gVar2.d()) {
                    break;
                } else {
                    int u = gVar2.u();
                    if (Character.isISOControl(u) && !Character.isWhitespace(u)) {
                        return false;
                    }
                    i2++;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean a(C c2) {
        String b2 = c2.b("Content-Encoding");
        return b2 != null && !b2.equalsIgnoreCase("identity") && !b2.equalsIgnoreCase("gzip");
    }
}
