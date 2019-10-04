package cab.snapp.snappnetwork;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.Authenticator;
import okhttp3.CertificatePinner;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final h f1519a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1520b;
    private OkHttpClient c;
    private OkHttpClient d;
    private ApiServiceInterface e;
    private ApiServiceInterface f;

    public final void cancelAllRequests() {
        OkHttpClient okHttpClient = this.c;
        if (okHttpClient != null) {
            okHttpClient.dispatcher().cancelAll();
        }
        OkHttpClient okHttpClient2 = this.d;
        if (okHttpClient2 != null) {
            okHttpClient2.dispatcher().cancelAll();
        }
    }

    @Deprecated
    public c(h hVar, boolean z) {
        this.f1519a = hVar;
        a(new b(hVar), new ArrayList(), null, z);
    }

    @Deprecated
    public c(h hVar, List<Interceptor> list, boolean z) {
        this.f1519a = hVar;
        a(new b(hVar), list, null, z);
    }

    public c(h hVar, CertificatePinner certificatePinner, boolean z) {
        this.f1519a = hVar;
        a(new b(hVar), new ArrayList(), certificatePinner, z);
    }

    public c(h hVar, List<Interceptor> list, CertificatePinner certificatePinner, boolean z) {
        this.f1519a = hVar;
        a(new b(hVar), list, certificatePinner, z);
    }

    public c(h hVar, Authenticator authenticator, List<Interceptor> list, CertificatePinner certificatePinner, boolean z) {
        this.f1519a = hVar;
        a(authenticator, list, certificatePinner, z);
    }

    private void a(Authenticator authenticator, List<Interceptor> list, CertificatePinner certificatePinner, boolean z) {
        this.f1520b = z;
        if (list == null) {
            list = new ArrayList<>();
        }
        g gVar = new g();
        this.c = gVar.a(authenticator, list, certificatePinner, z);
        this.d = gVar.a(authenticator, list, null, z);
        this.e = (ApiServiceInterface) gVar.createRetrofitClient(this.c).create(ApiServiceInterface.class);
        this.f = (ApiServiceInterface) gVar.createRetrofitClient(this.d).create(ApiServiceInterface.class);
    }

    public final h getRefreshTokenAuthenticator() {
        return this.f1519a;
    }

    public final ApiServiceInterface getRestClient(boolean z) {
        if (z) {
            return this.e;
        }
        return this.f;
    }

    public final d buildModule(String str, HashMap<String, String> hashMap) {
        return new d(this, str, hashMap);
    }
}
