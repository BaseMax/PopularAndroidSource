package com.koushikdutta.async.http.b;

import android.net.Uri;
import com.koushikdutta.async.http.b.a;
import com.koushikdutta.async.http.o;
import io.fabric.sdk.android.services.network.c;
import java.util.Date;
import java.util.List;
import java.util.Map;

final class d {

    /* renamed from: a  reason: collision with root package name */
    boolean f4650a;

    /* renamed from: b  reason: collision with root package name */
    int f4651b = -1;
    int c = -1;
    int d = -1;
    boolean e;
    private final Uri f;
    private final c g;
    private boolean h;
    private int i = -1;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;

    public d(Uri uri, c cVar) {
        this.f = uri;
        this.g = cVar;
        AnonymousClass1 r6 = new a.C0086a() {
            public final void handle(String str, String str2) {
                if (str.equalsIgnoreCase("no-cache")) {
                    d.this.f4650a = true;
                } else if (str.equalsIgnoreCase("max-age")) {
                    d.this.f4651b = a.parseSeconds(str2);
                } else if (str.equalsIgnoreCase("max-stale")) {
                    d.this.c = a.parseSeconds(str2);
                } else if (str.equalsIgnoreCase("min-fresh")) {
                    d.this.d = a.parseSeconds(str2);
                } else {
                    if (str.equalsIgnoreCase("only-if-cached")) {
                        d.this.e = true;
                    }
                }
            }
        };
        for (int i2 = 0; i2 < cVar.length(); i2++) {
            String fieldName = cVar.getFieldName(i2);
            String value = cVar.getValue(i2);
            if (c.HEADER_CACHE_CONTROL.equalsIgnoreCase(fieldName)) {
                a.parseCacheControl(value, r6);
            } else if ("Pragma".equalsIgnoreCase(fieldName)) {
                if (value.equalsIgnoreCase("no-cache")) {
                    this.f4650a = true;
                }
            } else if (c.HEADER_IF_NONE_MATCH.equalsIgnoreCase(fieldName)) {
                this.q = value;
            } else if ("If-Modified-Since".equalsIgnoreCase(fieldName)) {
                this.p = value;
            } else if (c.HEADER_AUTHORIZATION.equalsIgnoreCase(fieldName)) {
                this.h = true;
            } else if (c.HEADER_CONTENT_LENGTH.equalsIgnoreCase(fieldName)) {
                try {
                    this.i = Integer.parseInt(value);
                } catch (NumberFormatException unused) {
                }
            } else if ("Transfer-Encoding".equalsIgnoreCase(fieldName)) {
                this.j = value;
            } else if ("User-Agent".equalsIgnoreCase(fieldName)) {
                this.k = value;
            } else if ("Host".equalsIgnoreCase(fieldName)) {
                this.l = value;
            } else if ("Connection".equalsIgnoreCase(fieldName)) {
                this.m = value;
            } else if (c.HEADER_ACCEPT_ENCODING.equalsIgnoreCase(fieldName)) {
                this.n = value;
            } else if (c.HEADER_CONTENT_TYPE.equalsIgnoreCase(fieldName)) {
                this.o = value;
            } else if (c.HEADER_PROXY_AUTHORIZATION.equalsIgnoreCase(fieldName)) {
                this.r = value;
            }
        }
    }

    public final boolean isChunked() {
        return "chunked".equalsIgnoreCase(this.j);
    }

    public final boolean hasConnectionClose() {
        return "close".equalsIgnoreCase(this.m);
    }

    public final Uri getUri() {
        return this.f;
    }

    public final c getHeaders() {
        return this.g;
    }

    public final boolean isNoCache() {
        return this.f4650a;
    }

    public final int getMaxAgeSeconds() {
        return this.f4651b;
    }

    public final int getMaxStaleSeconds() {
        return this.c;
    }

    public final int getMinFreshSeconds() {
        return this.d;
    }

    public final boolean isOnlyIfCached() {
        return this.e;
    }

    public final boolean hasAuthorization() {
        return this.h;
    }

    public final int getContentLength() {
        return this.i;
    }

    public final String getTransferEncoding() {
        return this.j;
    }

    public final String getUserAgent() {
        return this.k;
    }

    public final String getHost() {
        return this.l;
    }

    public final String getConnection() {
        return this.m;
    }

    public final String getAcceptEncoding() {
        return this.n;
    }

    public final String getContentType() {
        return this.o;
    }

    public final String getIfModifiedSince() {
        return this.p;
    }

    public final String getIfNoneMatch() {
        return this.q;
    }

    public final String getProxyAuthorization() {
        return this.r;
    }

    public final void setChunked() {
        if (this.j != null) {
            this.g.removeAll("Transfer-Encoding");
        }
        this.g.add("Transfer-Encoding", "chunked");
        this.j = "chunked";
    }

    public final void setContentLength(int i2) {
        if (this.i != -1) {
            this.g.removeAll(c.HEADER_CONTENT_LENGTH);
        }
        if (i2 != -1) {
            this.g.add(c.HEADER_CONTENT_LENGTH, Integer.toString(i2));
        }
        this.i = i2;
    }

    public final void setUserAgent(String str) {
        if (this.k != null) {
            this.g.removeAll("User-Agent");
        }
        this.g.add("User-Agent", str);
        this.k = str;
    }

    public final void setHost(String str) {
        if (this.l != null) {
            this.g.removeAll("Host");
        }
        this.g.add("Host", str);
        this.l = str;
    }

    public final void setConnection(String str) {
        if (this.m != null) {
            this.g.removeAll("Connection");
        }
        this.g.add("Connection", str);
        this.m = str;
    }

    public final void setAcceptEncoding(String str) {
        if (this.n != null) {
            this.g.removeAll(c.HEADER_ACCEPT_ENCODING);
        }
        this.g.add(c.HEADER_ACCEPT_ENCODING, str);
        this.n = str;
    }

    public final void setContentType(String str) {
        if (this.o != null) {
            this.g.removeAll(c.HEADER_CONTENT_TYPE);
        }
        this.g.add(c.HEADER_CONTENT_TYPE, str);
        this.o = str;
    }

    public final void setIfModifiedSince(Date date) {
        if (this.p != null) {
            this.g.removeAll("If-Modified-Since");
        }
        String format = o.format(date);
        this.g.add("If-Modified-Since", format);
        this.p = format;
    }

    public final void setIfNoneMatch(String str) {
        if (this.q != null) {
            this.g.removeAll(c.HEADER_IF_NONE_MATCH);
        }
        this.g.add(c.HEADER_IF_NONE_MATCH, str);
        this.q = str;
    }

    public final boolean hasConditions() {
        return (this.p == null && this.q == null) ? false : true;
    }

    public final void addCookies(Map<String, List<String>> map) {
        for (Map.Entry next : map.entrySet()) {
            String str = (String) next.getKey();
            if ("Cookie".equalsIgnoreCase(str) || "Cookie2".equalsIgnoreCase(str)) {
                this.g.addAll(str, (List) next.getValue());
            }
        }
    }
}
