package okhttp3.logging;

import b.c;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.internal.platform.Platform;

public final class HttpLoggingInterceptor implements Interceptor {
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private volatile Set<String> headersToRedact;
    private volatile Level level;
    private final Logger logger;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface Logger {
        public static final Logger DEFAULT = new Logger() {
            public void log(String str) {
                Platform.get().log(4, str, null);
            }
        };

        void log(String str);
    }

    public HttpLoggingInterceptor() {
        this(Logger.DEFAULT);
    }

    public HttpLoggingInterceptor(Logger logger2) {
        this.headersToRedact = Collections.emptySet();
        this.level = Level.NONE;
        this.logger = logger2;
    }

    public final void redactHeader(String str) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        treeSet.addAll(this.headersToRedact);
        treeSet.add(str);
        this.headersToRedact = treeSet;
    }

    public final HttpLoggingInterceptor setLevel(Level level2) {
        if (level2 != null) {
            this.level = level2;
            return this;
        }
        throw new NullPointerException("level == null. Use Level.NONE instead.");
    }

    public final Level getLevel() {
        return this.level;
    }

    /* JADX WARNING: Removed duplicated region for block: B:94:0x02d2  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final okhttp3.Response intercept(okhttp3.Interceptor.Chain r21) throws java.io.IOException {
        /*
            r20 = this;
            r1 = r20
            r0 = r21
            okhttp3.logging.HttpLoggingInterceptor$Level r2 = r1.level
            okhttp3.Request r3 = r21.request()
            okhttp3.logging.HttpLoggingInterceptor$Level r4 = okhttp3.logging.HttpLoggingInterceptor.Level.NONE
            if (r2 != r4) goto L_0x0013
            okhttp3.Response r0 = r0.proceed(r3)
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
            okhttp3.RequestBody r7 = r3.body()
            if (r7 == 0) goto L_0x002c
            goto L_0x002d
        L_0x002c:
            r5 = 0
        L_0x002d:
            okhttp3.Connection r8 = r21.connection()
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r10 = "--> "
            r9.<init>(r10)
            java.lang.String r10 = r3.method()
            r9.append(r10)
            r10 = 32
            r9.append(r10)
            okhttp3.HttpUrl r11 = r3.url()
            r9.append(r11)
            java.lang.String r11 = " "
            java.lang.String r12 = ""
            if (r8 == 0) goto L_0x0062
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>(r11)
            okhttp3.Protocol r8 = r8.protocol()
            r13.append(r8)
            java.lang.String r8 = r13.toString()
            goto L_0x0063
        L_0x0062:
            r8 = r12
        L_0x0063:
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            java.lang.String r9 = "-byte body)"
            java.lang.String r13 = " ("
            if (r2 != 0) goto L_0x008e
            if (r5 == 0) goto L_0x008e
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>()
            r14.append(r8)
            r14.append(r13)
            r16 = r11
            long r10 = r7.contentLength()
            r14.append(r10)
            r14.append(r9)
            java.lang.String r8 = r14.toString()
            goto L_0x0090
        L_0x008e:
            r16 = r11
        L_0x0090:
            okhttp3.logging.HttpLoggingInterceptor$Logger r10 = r1.logger
            r10.log(r8)
            java.lang.String r8 = "-byte body omitted)"
            r10 = -1
            if (r2 == 0) goto L_0x01b3
            if (r5 == 0) goto L_0x00d9
            okhttp3.MediaType r14 = r7.contentType()
            if (r14 == 0) goto L_0x00ba
            okhttp3.logging.HttpLoggingInterceptor$Logger r14 = r1.logger
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r15 = "Content-Type: "
            r6.<init>(r15)
            okhttp3.MediaType r15 = r7.contentType()
            r6.append(r15)
            java.lang.String r6 = r6.toString()
            r14.log(r6)
        L_0x00ba:
            long r14 = r7.contentLength()
            int r6 = (r14 > r10 ? 1 : (r14 == r10 ? 0 : -1))
            if (r6 == 0) goto L_0x00d9
            okhttp3.logging.HttpLoggingInterceptor$Logger r6 = r1.logger
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            java.lang.String r15 = "Content-Length: "
            r14.<init>(r15)
            long r10 = r7.contentLength()
            r14.append(r10)
            java.lang.String r10 = r14.toString()
            r6.log(r10)
        L_0x00d9:
            okhttp3.Headers r6 = r3.headers()
            int r10 = r6.size()
            r11 = 0
        L_0x00e2:
            if (r11 >= r10) goto L_0x00fe
            java.lang.String r14 = r6.name(r11)
            java.lang.String r15 = "Content-Type"
            boolean r15 = r15.equalsIgnoreCase(r14)
            if (r15 != 0) goto L_0x00fb
            java.lang.String r15 = "Content-Length"
            boolean r14 = r15.equalsIgnoreCase(r14)
            if (r14 != 0) goto L_0x00fb
            r1.logHeader(r6, r11)
        L_0x00fb:
            int r11 = r11 + 1
            goto L_0x00e2
        L_0x00fe:
            java.lang.String r6 = "--> END "
            if (r4 == 0) goto L_0x019e
            if (r5 != 0) goto L_0x0106
            goto L_0x019e
        L_0x0106:
            okhttp3.Headers r5 = r3.headers()
            boolean r5 = bodyHasUnknownEncoding(r5)
            if (r5 == 0) goto L_0x012c
            okhttp3.logging.HttpLoggingInterceptor$Logger r5 = r1.logger
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r6)
            java.lang.String r6 = r3.method()
            r7.append(r6)
            java.lang.String r6 = " (encoded body omitted)"
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            r5.log(r6)
            goto L_0x01b3
        L_0x012c:
            b.c r5 = new b.c
            r5.<init>()
            r7.writeTo(r5)
            java.nio.charset.Charset r10 = UTF8
            okhttp3.MediaType r11 = r7.contentType()
            if (r11 == 0) goto L_0x0142
            java.nio.charset.Charset r10 = UTF8
            java.nio.charset.Charset r10 = r11.charset(r10)
        L_0x0142:
            okhttp3.logging.HttpLoggingInterceptor$Logger r11 = r1.logger
            r11.log(r12)
            boolean r11 = isPlaintext(r5)
            if (r11 == 0) goto L_0x0179
            okhttp3.logging.HttpLoggingInterceptor$Logger r11 = r1.logger
            java.lang.String r5 = r5.readString(r10)
            r11.log(r5)
            okhttp3.logging.HttpLoggingInterceptor$Logger r5 = r1.logger
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>(r6)
            java.lang.String r6 = r3.method()
            r10.append(r6)
            r10.append(r13)
            long r6 = r7.contentLength()
            r10.append(r6)
            r10.append(r9)
            java.lang.String r6 = r10.toString()
            r5.log(r6)
            goto L_0x01b3
        L_0x0179:
            okhttp3.logging.HttpLoggingInterceptor$Logger r5 = r1.logger
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>(r6)
            java.lang.String r6 = r3.method()
            r10.append(r6)
            java.lang.String r6 = " (binary "
            r10.append(r6)
            long r6 = r7.contentLength()
            r10.append(r6)
            r10.append(r8)
            java.lang.String r6 = r10.toString()
            r5.log(r6)
            goto L_0x01b3
        L_0x019e:
            okhttp3.logging.HttpLoggingInterceptor$Logger r5 = r1.logger
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r6)
            java.lang.String r6 = r3.method()
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            r5.log(r6)
        L_0x01b3:
            long r5 = java.lang.System.nanoTime()
            okhttp3.Response r0 = r0.proceed(r3)     // Catch:{ Exception -> 0x036d }
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r10 = java.lang.System.nanoTime()
            long r10 = r10 - r5
            long r5 = r3.toMillis(r10)
            okhttp3.ResponseBody r3 = r0.body()
            long r10 = r3.contentLength()
            r14 = -1
            int r7 = (r10 > r14 ? 1 : (r10 == r14 ? 0 : -1))
            if (r7 == 0) goto L_0x01e6
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r10)
            java.lang.String r14 = "-byte"
            r7.append(r14)
            java.lang.String r7 = r7.toString()
            goto L_0x01e8
        L_0x01e6:
            java.lang.String r7 = "unknown-length"
        L_0x01e8:
            okhttp3.logging.HttpLoggingInterceptor$Logger r14 = r1.logger
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r17 = r9
            java.lang.String r9 = "<-- "
            r15.<init>(r9)
            int r9 = r0.code()
            r15.append(r9)
            java.lang.String r9 = r0.message()
            boolean r9 = r9.isEmpty()
            if (r9 == 0) goto L_0x0208
            r18 = r10
            r9 = r12
            goto L_0x021c
        L_0x0208:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r18 = r10
            r10 = r16
            r9.<init>(r10)
            java.lang.String r10 = r0.message()
            r9.append(r10)
            java.lang.String r9 = r9.toString()
        L_0x021c:
            r15.append(r9)
            r9 = 32
            r15.append(r9)
            okhttp3.Request r9 = r0.request()
            okhttp3.HttpUrl r9 = r9.url()
            r15.append(r9)
            r15.append(r13)
            r15.append(r5)
            java.lang.String r5 = "ms"
            r15.append(r5)
            if (r2 != 0) goto L_0x0250
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = ", "
            r5.<init>(r6)
            r5.append(r7)
            java.lang.String r6 = " body"
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            goto L_0x0251
        L_0x0250:
            r5 = r12
        L_0x0251:
            r15.append(r5)
            r5 = 41
            r15.append(r5)
            java.lang.String r5 = r15.toString()
            r14.log(r5)
            if (r2 == 0) goto L_0x036c
            okhttp3.Headers r2 = r0.headers()
            int r5 = r2.size()
            r6 = 0
        L_0x026b:
            if (r6 >= r5) goto L_0x0273
            r1.logHeader(r2, r6)
            int r6 = r6 + 1
            goto L_0x026b
        L_0x0273:
            if (r4 == 0) goto L_0x0365
            boolean r4 = okhttp3.internal.http.HttpHeaders.hasBody(r0)
            if (r4 != 0) goto L_0x027d
            goto L_0x0365
        L_0x027d:
            okhttp3.Headers r4 = r0.headers()
            boolean r4 = bodyHasUnknownEncoding(r4)
            if (r4 == 0) goto L_0x0290
            okhttp3.logging.HttpLoggingInterceptor$Logger r2 = r1.logger
            java.lang.String r3 = "<-- END HTTP (encoded body omitted)"
            r2.log(r3)
            goto L_0x036c
        L_0x0290:
            b.e r4 = r3.source()
            r5 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r4.request(r5)
            b.c r4 = r4.buffer()
            java.lang.String r5 = "Content-Encoding"
            java.lang.String r2 = r2.get(r5)
            java.lang.String r5 = "gzip"
            boolean r2 = r5.equalsIgnoreCase(r2)
            r5 = 0
            if (r2 == 0) goto L_0x02d6
            long r6 = r4.size()
            java.lang.Long r2 = java.lang.Long.valueOf(r6)
            b.l r6 = new b.l     // Catch:{ all -> 0x02cf }
            b.c r4 = r4.clone()     // Catch:{ all -> 0x02cf }
            r6.<init>(r4)     // Catch:{ all -> 0x02cf }
            b.c r4 = new b.c     // Catch:{ all -> 0x02cc }
            r4.<init>()     // Catch:{ all -> 0x02cc }
            r4.writeAll(r6)     // Catch:{ all -> 0x02cc }
            r6.close()
            goto L_0x02d7
        L_0x02cc:
            r0 = move-exception
            r5 = r6
            goto L_0x02d0
        L_0x02cf:
            r0 = move-exception
        L_0x02d0:
            if (r5 == 0) goto L_0x02d5
            r5.close()
        L_0x02d5:
            throw r0
        L_0x02d6:
            r2 = r5
        L_0x02d7:
            java.nio.charset.Charset r5 = UTF8
            okhttp3.MediaType r3 = r3.contentType()
            if (r3 == 0) goto L_0x02e5
            java.nio.charset.Charset r5 = UTF8
            java.nio.charset.Charset r5 = r3.charset(r5)
        L_0x02e5:
            boolean r3 = isPlaintext(r4)
            if (r3 != 0) goto L_0x030b
            okhttp3.logging.HttpLoggingInterceptor$Logger r2 = r1.logger
            r2.log(r12)
            okhttp3.logging.HttpLoggingInterceptor$Logger r2 = r1.logger
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r5 = "<-- END HTTP (binary "
            r3.<init>(r5)
            long r4 = r4.size()
            r3.append(r4)
            r3.append(r8)
            java.lang.String r3 = r3.toString()
            r2.log(r3)
            return r0
        L_0x030b:
            r6 = 0
            int r3 = (r18 > r6 ? 1 : (r18 == r6 ? 0 : -1))
            if (r3 == 0) goto L_0x0323
            okhttp3.logging.HttpLoggingInterceptor$Logger r3 = r1.logger
            r3.log(r12)
            okhttp3.logging.HttpLoggingInterceptor$Logger r3 = r1.logger
            b.c r6 = r4.clone()
            java.lang.String r5 = r6.readString(r5)
            r3.log(r5)
        L_0x0323:
            java.lang.String r3 = "<-- END HTTP ("
            if (r2 == 0) goto L_0x034a
            okhttp3.logging.HttpLoggingInterceptor$Logger r5 = r1.logger
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r3)
            long r3 = r4.size()
            r6.append(r3)
            java.lang.String r3 = "-byte, "
            r6.append(r3)
            r6.append(r2)
            java.lang.String r2 = "-gzipped-byte body)"
            r6.append(r2)
            java.lang.String r2 = r6.toString()
            r5.log(r2)
            goto L_0x036c
        L_0x034a:
            okhttp3.logging.HttpLoggingInterceptor$Logger r2 = r1.logger
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>(r3)
            long r3 = r4.size()
            r5.append(r3)
            r3 = r17
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            r2.log(r3)
            goto L_0x036c
        L_0x0365:
            okhttp3.logging.HttpLoggingInterceptor$Logger r2 = r1.logger
            java.lang.String r3 = "<-- END HTTP"
            r2.log(r3)
        L_0x036c:
            return r0
        L_0x036d:
            r0 = move-exception
            r2 = r0
            okhttp3.logging.HttpLoggingInterceptor$Logger r0 = r1.logger
            java.lang.String r3 = java.lang.String.valueOf(r2)
            java.lang.String r4 = "<-- HTTP FAILED: "
            java.lang.String r3 = r4.concat(r3)
            r0.log(r3)
            goto L_0x0380
        L_0x037f:
            throw r2
        L_0x0380:
            goto L_0x037f
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.logging.HttpLoggingInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }

    private void logHeader(Headers headers, int i) {
        String value = this.headersToRedact.contains(headers.name(i)) ? "██" : headers.value(i);
        Logger logger2 = this.logger;
        logger2.log(headers.name(i) + ": " + value);
    }

    static boolean isPlaintext(c cVar) {
        try {
            c cVar2 = new c();
            cVar.copyTo(cVar2, 0, cVar.size() < 64 ? cVar.size() : 64);
            for (int i = 0; i < 16 && !cVar2.exhausted(); i++) {
                int readUtf8CodePoint = cVar2.readUtf8CodePoint();
                if (Character.isISOControl(readUtf8CodePoint) && !Character.isWhitespace(readUtf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    private static boolean bodyHasUnknownEncoding(Headers headers) {
        String str = headers.get(io.fabric.sdk.android.services.network.c.HEADER_CONTENT_ENCODING);
        return str != null && !str.equalsIgnoreCase("identity") && !str.equalsIgnoreCase(io.fabric.sdk.android.services.network.c.ENCODING_GZIP);
    }
}
