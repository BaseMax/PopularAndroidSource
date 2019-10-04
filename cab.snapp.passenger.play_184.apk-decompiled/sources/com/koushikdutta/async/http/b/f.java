package com.koushikdutta.async.http.b;

import android.net.Uri;
import com.koushikdutta.async.http.b.a;
import com.koushikdutta.async.http.o;
import io.fabric.sdk.android.services.network.c;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

final class f {

    /* renamed from: a  reason: collision with root package name */
    boolean f4667a;

    /* renamed from: b  reason: collision with root package name */
    boolean f4668b;
    int c = -1;
    int d = -1;
    boolean e;
    boolean f;
    private final Uri g;
    private final c h;
    private Date i;
    private Date j;
    private Date k;
    private long l;
    private long m;
    private String n;
    private int o = -1;
    private Set<String> p = Collections.emptySet();
    private String q;
    private String r;
    private long s = -1;
    private String t;
    private String u;
    private String v;

    public f(Uri uri, c cVar) {
        this.g = uri;
        this.h = cVar;
        AnonymousClass1 r9 = new a.C0086a() {
            public final void handle(String str, String str2) {
                if (str.equalsIgnoreCase("no-cache")) {
                    f.this.f4667a = true;
                } else if (str.equalsIgnoreCase("no-store")) {
                    f.this.f4668b = true;
                } else if (str.equalsIgnoreCase("max-age")) {
                    f.this.c = a.parseSeconds(str2);
                } else if (str.equalsIgnoreCase("s-maxage")) {
                    f.this.d = a.parseSeconds(str2);
                } else if (str.equalsIgnoreCase("public")) {
                    f.this.e = true;
                } else {
                    if (str.equalsIgnoreCase("must-revalidate")) {
                        f.this.f = true;
                    }
                }
            }
        };
        for (int i2 = 0; i2 < cVar.length(); i2++) {
            String fieldName = cVar.getFieldName(i2);
            String value = cVar.getValue(i2);
            if (c.HEADER_CACHE_CONTROL.equalsIgnoreCase(fieldName)) {
                a.parseCacheControl(value, r9);
            } else if (c.HEADER_DATE.equalsIgnoreCase(fieldName)) {
                this.i = o.parse(value);
            } else if (c.HEADER_EXPIRES.equalsIgnoreCase(fieldName)) {
                this.k = o.parse(value);
            } else if (c.HEADER_LAST_MODIFIED.equalsIgnoreCase(fieldName)) {
                this.j = o.parse(value);
            } else if (c.HEADER_ETAG.equalsIgnoreCase(fieldName)) {
                this.n = value;
            } else if ("Pragma".equalsIgnoreCase(fieldName)) {
                if (value.equalsIgnoreCase("no-cache")) {
                    this.f4667a = true;
                }
            } else if ("Age".equalsIgnoreCase(fieldName)) {
                this.o = a.parseSeconds(value);
            } else if ("Vary".equalsIgnoreCase(fieldName)) {
                if (this.p.isEmpty()) {
                    this.p = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                }
                for (String trim : value.split(",")) {
                    this.p.add(trim.trim().toLowerCase(Locale.US));
                }
            } else if (c.HEADER_CONTENT_ENCODING.equalsIgnoreCase(fieldName)) {
                this.q = value;
            } else if ("Transfer-Encoding".equalsIgnoreCase(fieldName)) {
                this.r = value;
            } else if (c.HEADER_CONTENT_LENGTH.equalsIgnoreCase(fieldName)) {
                try {
                    this.s = Long.parseLong(value);
                } catch (NumberFormatException unused) {
                }
            } else if ("Connection".equalsIgnoreCase(fieldName)) {
                this.t = value;
            } else if ("Proxy-Authenticate".equalsIgnoreCase(fieldName)) {
                this.u = value;
            } else if ("WWW-Authenticate".equalsIgnoreCase(fieldName)) {
                this.v = value;
            } else if ("X-Android-Sent-Millis".equalsIgnoreCase(fieldName)) {
                this.l = Long.parseLong(value);
            } else if ("X-Android-Received-Millis".equalsIgnoreCase(fieldName)) {
                this.m = Long.parseLong(value);
            }
        }
    }

    public final boolean isContentEncodingGzip() {
        return c.ENCODING_GZIP.equalsIgnoreCase(this.q);
    }

    public final void stripContentEncoding() {
        this.q = null;
        this.h.removeAll(c.HEADER_CONTENT_ENCODING);
    }

    public final boolean isChunked() {
        return "chunked".equalsIgnoreCase(this.r);
    }

    public final boolean hasConnectionClose() {
        return "close".equalsIgnoreCase(this.t);
    }

    public final Uri getUri() {
        return this.g;
    }

    public final c getHeaders() {
        return this.h;
    }

    public final Date getServedDate() {
        return this.i;
    }

    public final Date getLastModified() {
        return this.j;
    }

    public final Date getExpires() {
        return this.k;
    }

    public final boolean isNoCache() {
        return this.f4667a;
    }

    public final boolean isNoStore() {
        return this.f4668b;
    }

    public final int getMaxAgeSeconds() {
        return this.c;
    }

    public final int getSMaxAgeSeconds() {
        return this.d;
    }

    public final boolean isPublic() {
        return this.e;
    }

    public final boolean isMustRevalidate() {
        return this.f;
    }

    public final String getEtag() {
        return this.n;
    }

    public final Set<String> getVaryFields() {
        return this.p;
    }

    public final String getContentEncoding() {
        return this.q;
    }

    public final long getContentLength() {
        return this.s;
    }

    public final String getConnection() {
        return this.t;
    }

    public final String getProxyAuthenticate() {
        return this.u;
    }

    public final String getWwwAuthenticate() {
        return this.v;
    }

    public final void setLocalTimestamps(long j2, long j3) {
        this.l = j2;
        this.h.add("X-Android-Sent-Millis", Long.toString(j2));
        this.m = j3;
        this.h.add("X-Android-Received-Millis", Long.toString(j3));
    }

    public final boolean isCacheable(d dVar) {
        int responseCode = this.h.getResponseCode();
        if (responseCode != 200 && responseCode != 203 && responseCode != 300 && responseCode != 301 && responseCode != 410) {
            return false;
        }
        if ((!dVar.hasAuthorization() || this.e || this.f || this.d != -1) && !this.f4668b) {
            return true;
        }
        return false;
    }

    public final boolean hasVaryAll() {
        return this.p.contains("*");
    }

    public final boolean varyMatches(Map<String, List<String>> map, Map<String, List<String>> map2) {
        for (String next : this.p) {
            if (!b.equal(map.get(next), map2.get(next))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0068, code lost:
        if (r11 > 0) goto L_0x0092;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.koushikdutta.async.http.b.g chooseResponseSource(long r11, com.koushikdutta.async.http.b.d r13) {
        /*
            r10 = this;
            boolean r0 = r10.isCacheable(r13)
            if (r0 != 0) goto L_0x0009
            com.koushikdutta.async.http.b.g r11 = com.koushikdutta.async.http.b.g.NETWORK
            return r11
        L_0x0009:
            boolean r0 = r13.isNoCache()
            if (r0 != 0) goto L_0x0127
            boolean r0 = r13.hasConditions()
            if (r0 == 0) goto L_0x0017
            goto L_0x0127
        L_0x0017:
            java.util.Date r0 = r10.i
            r1 = 0
            if (r0 == 0) goto L_0x0029
            long r3 = r10.m
            long r5 = r0.getTime()
            long r3 = r3 - r5
            long r3 = java.lang.Math.max(r1, r3)
            goto L_0x002a
        L_0x0029:
            r3 = r1
        L_0x002a:
            int r0 = r10.o
            r5 = -1
            if (r0 == r5) goto L_0x003c
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
            int r6 = r10.o
            long r6 = (long) r6
            long r6 = r0.toMillis(r6)
            long r3 = java.lang.Math.max(r3, r6)
        L_0x003c:
            long r6 = r10.m
            long r8 = r10.l
            long r8 = r6 - r8
            long r11 = r11 - r6
            long r3 = r3 + r8
            long r3 = r3 + r11
            int r11 = r10.c
            if (r11 == r5) goto L_0x0053
            java.util.concurrent.TimeUnit r11 = java.util.concurrent.TimeUnit.SECONDS
            int r12 = r10.c
            long r6 = (long) r12
            long r11 = r11.toMillis(r6)
            goto L_0x0092
        L_0x0053:
            java.util.Date r11 = r10.k
            if (r11 == 0) goto L_0x006b
            java.util.Date r11 = r10.i
            if (r11 == 0) goto L_0x005f
            long r6 = r11.getTime()
        L_0x005f:
            java.util.Date r11 = r10.k
            long r11 = r11.getTime()
            long r11 = r11 - r6
            int r0 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0091
            goto L_0x0092
        L_0x006b:
            java.util.Date r11 = r10.j
            if (r11 == 0) goto L_0x0091
            android.net.Uri r11 = r10.g
            java.lang.String r11 = r11.getEncodedQuery()
            if (r11 != 0) goto L_0x0091
            java.util.Date r11 = r10.i
            if (r11 == 0) goto L_0x0080
            long r11 = r11.getTime()
            goto L_0x0082
        L_0x0080:
            long r11 = r10.l
        L_0x0082:
            java.util.Date r0 = r10.j
            long r6 = r0.getTime()
            long r11 = r11 - r6
            int r0 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0091
            r6 = 10
            long r11 = r11 / r6
            goto L_0x0092
        L_0x0091:
            r11 = r1
        L_0x0092:
            int r0 = r13.getMaxAgeSeconds()
            if (r0 == r5) goto L_0x00a7
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
            int r6 = r13.getMaxAgeSeconds()
            long r6 = (long) r6
            long r6 = r0.toMillis(r6)
            long r11 = java.lang.Math.min(r11, r6)
        L_0x00a7:
            int r0 = r13.getMinFreshSeconds()
            if (r0 == r5) goto L_0x00b9
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
            int r6 = r13.getMinFreshSeconds()
            long r6 = (long) r6
            long r6 = r0.toMillis(r6)
            goto L_0x00ba
        L_0x00b9:
            r6 = r1
        L_0x00ba:
            boolean r0 = r10.f
            if (r0 != 0) goto L_0x00cf
            int r0 = r13.getMaxStaleSeconds()
            if (r0 == r5) goto L_0x00cf
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
            int r1 = r13.getMaxStaleSeconds()
            long r1 = (long) r1
            long r1 = r0.toMillis(r1)
        L_0x00cf:
            boolean r0 = r10.f4667a
            if (r0 != 0) goto L_0x0104
            long r6 = r6 + r3
            long r1 = r1 + r11
            int r0 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0104
            java.lang.String r13 = "Warning"
            int r0 = (r6 > r11 ? 1 : (r6 == r11 ? 0 : -1))
            if (r0 < 0) goto L_0x00e6
            com.koushikdutta.async.http.b.c r11 = r10.h
            java.lang.String r12 = "110 HttpURLConnection \"Response is stale\""
            r11.add(r13, r12)
        L_0x00e6:
            r11 = 86400000(0x5265c00, double:4.2687272E-316)
            int r0 = (r3 > r11 ? 1 : (r3 == r11 ? 0 : -1))
            if (r0 <= 0) goto L_0x0101
            int r11 = r10.c
            if (r11 != r5) goto L_0x00f7
            java.util.Date r11 = r10.k
            if (r11 != 0) goto L_0x00f7
            r11 = 1
            goto L_0x00f8
        L_0x00f7:
            r11 = 0
        L_0x00f8:
            if (r11 == 0) goto L_0x0101
            com.koushikdutta.async.http.b.c r11 = r10.h
            java.lang.String r12 = "113 HttpURLConnection \"Heuristic expiration\""
            r11.add(r13, r12)
        L_0x0101:
            com.koushikdutta.async.http.b.g r11 = com.koushikdutta.async.http.b.g.CACHE
            return r11
        L_0x0104:
            java.lang.String r11 = r10.n
            if (r11 == 0) goto L_0x010c
            r13.setIfNoneMatch(r11)
            goto L_0x011b
        L_0x010c:
            java.util.Date r11 = r10.j
            if (r11 == 0) goto L_0x0114
            r13.setIfModifiedSince(r11)
            goto L_0x011b
        L_0x0114:
            java.util.Date r11 = r10.i
            if (r11 == 0) goto L_0x011b
            r13.setIfModifiedSince(r11)
        L_0x011b:
            boolean r11 = r13.hasConditions()
            if (r11 == 0) goto L_0x0124
            com.koushikdutta.async.http.b.g r11 = com.koushikdutta.async.http.b.g.CONDITIONAL_CACHE
            return r11
        L_0x0124:
            com.koushikdutta.async.http.b.g r11 = com.koushikdutta.async.http.b.g.NETWORK
            return r11
        L_0x0127:
            com.koushikdutta.async.http.b.g r11 = com.koushikdutta.async.http.b.g.NETWORK
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.b.f.chooseResponseSource(long, com.koushikdutta.async.http.b.d):com.koushikdutta.async.http.b.g");
    }

    public final boolean validate(f fVar) {
        if (fVar.h.getResponseCode() == 304) {
            return true;
        }
        if (this.j != null) {
            Date date = fVar.j;
            if (date != null && date.getTime() < this.j.getTime()) {
                return true;
            }
        }
        return false;
    }

    public final f combine(f fVar) {
        c cVar = new c();
        for (int i2 = 0; i2 < this.h.length(); i2++) {
            String fieldName = this.h.getFieldName(i2);
            String value = this.h.getValue(i2);
            if ((!fieldName.equals("Warning") || !value.startsWith("1")) && (!a(fieldName) || fVar.h.get(fieldName) == null)) {
                cVar.add(fieldName, value);
            }
        }
        for (int i3 = 0; i3 < fVar.h.length(); i3++) {
            String fieldName2 = fVar.h.getFieldName(i3);
            if (a(fieldName2)) {
                cVar.add(fieldName2, fVar.h.getValue(i3));
            }
        }
        return new f(this.g, cVar);
    }

    private static boolean a(String str) {
        return !str.equalsIgnoreCase("Connection") && !str.equalsIgnoreCase("Keep-Alive") && !str.equalsIgnoreCase("Proxy-Authenticate") && !str.equalsIgnoreCase(c.HEADER_PROXY_AUTHORIZATION) && !str.equalsIgnoreCase("TE") && !str.equalsIgnoreCase("Trailers") && !str.equalsIgnoreCase("Transfer-Encoding") && !str.equalsIgnoreCase("Upgrade");
    }
}
