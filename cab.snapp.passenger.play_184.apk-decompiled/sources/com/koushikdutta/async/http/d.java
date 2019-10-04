package com.koushikdutta.async.http;

import android.net.Uri;
import com.koushikdutta.async.http.a.a;
import io.fabric.sdk.android.services.network.c;
import java.util.Locale;
import org.eclipse.paho.a.a.w;

public class d {
    public static final int DEFAULT_TIMEOUT = 30000;
    static final /* synthetic */ boolean h = (!d.class.desiredAssertionStatus());

    /* renamed from: a  reason: collision with root package name */
    Uri f4674a;

    /* renamed from: b  reason: collision with root package name */
    int f4675b;
    String c;
    int d;
    String e;
    int f;
    long g;
    /* access modifiers changed from: private */
    public String i;
    private n j;
    private boolean k;
    private a l;

    public void onHandshakeException(com.koushikdutta.async.d dVar) {
    }

    public w getRequestLine() {
        return new w() {
            public final String getUri() {
                return d.this.getUri().toString();
            }

            public final u getProtocolVersion() {
                return new u("HTTP", 1, 1);
            }

            public final String getMethod() {
                return d.this.i;
            }

            public final String toString() {
                if (d.this.c != null) {
                    return String.format(Locale.ENGLISH, "%s %s HTTP/1.1", new Object[]{d.this.i, d.this.getUri()});
                }
                String encodedPath = d.this.getUri().getEncodedPath();
                if (encodedPath == null || encodedPath.length() == 0) {
                    encodedPath = w.TOPIC_LEVEL_SEPARATOR;
                }
                String encodedQuery = d.this.getUri().getEncodedQuery();
                if (!(encodedQuery == null || encodedQuery.length() == 0)) {
                    encodedPath = encodedPath + "?" + encodedQuery;
                }
                return String.format(Locale.ENGLISH, "%s %s HTTP/1.1", new Object[]{d.this.i, encodedPath});
            }
        };
    }

    public String getMethod() {
        return this.i;
    }

    public d setMethod(String str) {
        if (getClass() == d.class) {
            this.i = str;
            return this;
        }
        throw new UnsupportedOperationException("can't change method on a subclass of AsyncHttpRequest");
    }

    public d(Uri uri, String str) {
        this(uri, str, null);
    }

    public static void setDefaultHeaders(n nVar, Uri uri) {
        if (uri != null) {
            String host = uri.getHost();
            if (uri.getPort() != -1) {
                host = host + ":" + uri.getPort();
            }
            if (host != null) {
                nVar.set("Host", host);
            }
        }
        String property = System.getProperty("http.agent");
        if (property == null) {
            property = "Java" + System.getProperty("java.version");
        }
        nVar.set("User-Agent", property);
        nVar.set(c.HEADER_ACCEPT_ENCODING, "gzip, deflate");
        nVar.set("Connection", "keep-alive");
        nVar.set("Accept", "*/*");
    }

    public d(Uri uri, String str, n nVar) {
        this.j = new n();
        this.k = true;
        this.f4675b = DEFAULT_TIMEOUT;
        this.d = -1;
        if (h || uri != null) {
            this.i = str;
            this.f4674a = uri;
            if (nVar == null) {
                this.j = new n();
            } else {
                this.j = nVar;
            }
            if (nVar == null) {
                setDefaultHeaders(this.j, uri);
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    public Uri getUri() {
        return this.f4674a;
    }

    public n getHeaders() {
        return this.j;
    }

    public boolean getFollowRedirect() {
        return this.k;
    }

    public d setFollowRedirect(boolean z) {
        this.k = z;
        return this;
    }

    public void setBody(a aVar) {
        this.l = aVar;
    }

    public a getBody() {
        return this.l;
    }

    public int getTimeout() {
        return this.f4675b;
    }

    public d setTimeout(int i2) {
        this.f4675b = i2;
        return this;
    }

    public d setHeader(String str, String str2) {
        getHeaders().set(str, str2);
        return this;
    }

    public d addHeader(String str, String str2) {
        getHeaders().add(str, str2);
        return this;
    }

    public void enableProxy(String str, int i2) {
        this.c = str;
        this.d = i2;
    }

    public void disableProxy() {
        this.c = null;
        this.d = -1;
    }

    public String getProxyHost() {
        return this.c;
    }

    public int getProxyPort() {
        return this.d;
    }

    public String toString() {
        n nVar = this.j;
        if (nVar == null) {
            return super.toString();
        }
        return nVar.toPrefixString(this.f4674a.toString());
    }

    public void setLogging(String str, int i2) {
        this.e = str;
        this.f = i2;
    }

    public int getLogLevel() {
        return this.f;
    }

    public String getLogTag() {
        return this.e;
    }

    private String a(String str) {
        long j2 = 0;
        if (this.g != 0) {
            j2 = System.currentTimeMillis() - this.g;
        }
        return String.format(Locale.ENGLISH, "(%d ms) %s: %s", new Object[]{Long.valueOf(j2), getUri(), str});
    }

    public void logi(String str) {
        if (this.e != null && this.f <= 4) {
            a(str);
        }
    }

    public void logv(String str) {
        if (this.e != null && this.f <= 2) {
            a(str);
        }
    }

    public void logw(String str) {
        if (this.e != null && this.f <= 5) {
            a(str);
        }
    }

    public void logd(String str) {
        if (this.e != null && this.f <= 3) {
            a(str);
        }
    }

    public void logd(String str, Exception exc) {
        if (this.e != null && this.f <= 3) {
            a(str);
            exc.getMessage();
        }
    }

    public void loge(String str) {
        if (this.e != null && this.f <= 6) {
            a(str);
        }
    }

    public void loge(String str, Exception exc) {
        if (this.e != null && this.f <= 6) {
            a(str);
            exc.getMessage();
        }
    }
}
