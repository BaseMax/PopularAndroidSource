package com.mapbox.android.telemetry;

import com.adjust.sdk.Constants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.ConnectionSpec;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;

final class ai {
    /* access modifiers changed from: private */
    public static final Map<o, String> h = new HashMap<o, String>() {
        {
            put(o.STAGING, "api-events-staging.tilestream.net");
            put(o.COM, "events.mapbox.com");
            put(o.CHINA, "events.mapbox.cn");
        }
    };

    /* renamed from: a  reason: collision with root package name */
    o f4958a;

    /* renamed from: b  reason: collision with root package name */
    final OkHttpClient f4959b;
    final HttpUrl c;
    final SSLSocketFactory d;
    final X509TrustManager e;
    final HostnameVerifier f;
    boolean g;

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        o f4960a = o.COM;

        /* renamed from: b  reason: collision with root package name */
        OkHttpClient f4961b = new OkHttpClient();
        HttpUrl c = null;
        SSLSocketFactory d = null;
        X509TrustManager e = null;
        HostnameVerifier f = null;
        boolean g = false;

        a() {
        }

        /* access modifiers changed from: package-private */
        public final a a(HttpUrl httpUrl) {
            if (httpUrl != null) {
                this.c = httpUrl;
            }
            return this;
        }

        /* access modifiers changed from: package-private */
        public final ai a() {
            if (this.c == null) {
                this.c = ai.a((String) ai.h.get(this.f4960a));
            }
            return new ai(this);
        }
    }

    private static boolean a(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
        return (sSLSocketFactory == null || x509TrustManager == null) ? false : true;
    }

    ai(a aVar) {
        this.f4958a = aVar.f4960a;
        this.f4959b = aVar.f4961b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
    }

    static HttpUrl a(String str) {
        HttpUrl.Builder scheme = new HttpUrl.Builder().scheme(Constants.SCHEME);
        scheme.host(str);
        return scheme.build();
    }

    /* access modifiers changed from: package-private */
    public final OkHttpClient a(e eVar, Interceptor interceptor) {
        new f();
        OkHttpClient.Builder connectionSpecs = this.f4959b.newBuilder().retryOnConnectionFailure(true).certificatePinner(f.a(this.f4958a, eVar)).connectionSpecs(Arrays.asList(new ConnectionSpec[]{ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS}));
        if (interceptor != null) {
            connectionSpecs.addInterceptor(interceptor);
        }
        if (a(this.d, this.e)) {
            connectionSpecs.sslSocketFactory(this.d, this.e);
            connectionSpecs.hostnameVerifier(this.f);
        }
        return connectionSpecs.build();
    }
}
