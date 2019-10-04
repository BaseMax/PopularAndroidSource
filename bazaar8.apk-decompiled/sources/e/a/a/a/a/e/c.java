package e.a.a.a.a.e;

import e.a.a.a.o;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: DefaultHttpRequestFactory */
public class c implements f {

    /* renamed from: a  reason: collision with root package name */
    public final o f13753a;

    /* renamed from: b  reason: collision with root package name */
    public h f13754b;

    /* renamed from: c  reason: collision with root package name */
    public SSLSocketFactory f13755c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f13756d;

    public c() {
        this(new e.a.a.a.c());
    }

    public void a(h hVar) {
        if (this.f13754b != hVar) {
            this.f13754b = hVar;
            c();
        }
    }

    public final synchronized SSLSocketFactory b() {
        SSLSocketFactory a2;
        this.f13756d = true;
        try {
            a2 = g.a(this.f13754b);
            this.f13753a.d("Fabric", "Custom SSL pinning enabled");
        } catch (Exception e2) {
            this.f13753a.b("Fabric", "Exception while validating pinned certs", e2);
            return null;
        }
        return a2;
    }

    public final synchronized void c() {
        this.f13756d = false;
        this.f13755c = null;
    }

    public c(o oVar) {
        this.f13753a = oVar;
    }

    public HttpRequest a(HttpMethod httpMethod, String str) {
        return a(httpMethod, str, Collections.emptyMap());
    }

    public HttpRequest a(HttpMethod httpMethod, String str, Map<String, String> map) {
        HttpRequest httpRequest;
        int i2 = b.f13752a[httpMethod.ordinal()];
        if (i2 == 1) {
            httpRequest = HttpRequest.a((CharSequence) str, (Map<?, ?>) map, true);
        } else if (i2 == 2) {
            httpRequest = HttpRequest.b((CharSequence) str, (Map<?, ?>) map, true);
        } else if (i2 == 3) {
            httpRequest = HttpRequest.e((CharSequence) str);
        } else if (i2 == 4) {
            httpRequest = HttpRequest.a((CharSequence) str);
        } else {
            throw new IllegalArgumentException("Unsupported HTTP method!");
        }
        if (a(str) && this.f13754b != null) {
            SSLSocketFactory a2 = a();
            if (a2 != null) {
                ((HttpsURLConnection) httpRequest.l()).setSSLSocketFactory(a2);
            }
        }
        return httpRequest;
    }

    public final boolean a(String str) {
        return str != null && str.toLowerCase(Locale.US).startsWith("https");
    }

    public final synchronized SSLSocketFactory a() {
        if (this.f13755c == null && !this.f13756d) {
            this.f13755c = b();
        }
        return this.f13755c;
    }
}
