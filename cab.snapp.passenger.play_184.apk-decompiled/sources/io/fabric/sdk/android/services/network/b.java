package io.fabric.sdk.android.services.network;

import com.adjust.sdk.Constants;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.l;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private final l f6654a;

    /* renamed from: b  reason: collision with root package name */
    private f f6655b;
    private SSLSocketFactory c;
    private boolean d;

    /* renamed from: io.fabric.sdk.android.services.network.b$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6656a = new int[HttpMethod.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                io.fabric.sdk.android.services.network.HttpMethod[] r0 = io.fabric.sdk.android.services.network.HttpMethod.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f6656a = r0
                int[] r0 = f6656a     // Catch:{ NoSuchFieldError -> 0x0014 }
                io.fabric.sdk.android.services.network.HttpMethod r1 = io.fabric.sdk.android.services.network.HttpMethod.GET     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f6656a     // Catch:{ NoSuchFieldError -> 0x001f }
                io.fabric.sdk.android.services.network.HttpMethod r1 = io.fabric.sdk.android.services.network.HttpMethod.POST     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f6656a     // Catch:{ NoSuchFieldError -> 0x002a }
                io.fabric.sdk.android.services.network.HttpMethod r1 = io.fabric.sdk.android.services.network.HttpMethod.PUT     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f6656a     // Catch:{ NoSuchFieldError -> 0x0035 }
                io.fabric.sdk.android.services.network.HttpMethod r1 = io.fabric.sdk.android.services.network.HttpMethod.DELETE     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.network.b.AnonymousClass1.<clinit>():void");
        }
    }

    public b() {
        this(new io.fabric.sdk.android.b());
    }

    public b(l lVar) {
        this.f6654a = lVar;
    }

    public final f getPinningInfoProvider() {
        return this.f6655b;
    }

    public final void setPinningInfoProvider(f fVar) {
        if (this.f6655b != fVar) {
            this.f6655b = fVar;
            a();
        }
    }

    private synchronized void a() {
        this.d = false;
        this.c = null;
    }

    public final c buildHttpRequest(HttpMethod httpMethod, String str) {
        return buildHttpRequest(httpMethod, str, Collections.emptyMap());
    }

    public final c buildHttpRequest(HttpMethod httpMethod, String str, Map<String, String> map) {
        c cVar;
        int i = AnonymousClass1.f6656a[httpMethod.ordinal()];
        boolean z = true;
        if (i == 1) {
            cVar = c.get((CharSequence) str, (Map<?, ?>) map, true);
        } else if (i == 2) {
            cVar = c.post((CharSequence) str, (Map<?, ?>) map, true);
        } else if (i == 3) {
            cVar = c.put((CharSequence) str);
        } else if (i == 4) {
            cVar = c.delete((CharSequence) str);
        } else {
            throw new IllegalArgumentException("Unsupported HTTP method!");
        }
        if (str == null || !str.toLowerCase(Locale.US).startsWith(Constants.SCHEME)) {
            z = false;
        }
        if (z && this.f6655b != null) {
            SSLSocketFactory b2 = b();
            if (b2 != null) {
                ((HttpsURLConnection) cVar.getConnection()).setSSLSocketFactory(b2);
            }
        }
        return cVar;
    }

    private synchronized SSLSocketFactory b() {
        if (this.c == null && !this.d) {
            this.c = c();
        }
        return this.c;
    }

    private synchronized SSLSocketFactory c() {
        SSLSocketFactory sSLSocketFactory;
        this.d = true;
        try {
            sSLSocketFactory = e.getSSLSocketFactory(this.f6655b);
            this.f6654a.d(c.TAG, "Custom SSL pinning enabled");
        } catch (Exception e) {
            this.f6654a.e(c.TAG, "Exception while validating pinned certs", e);
            return null;
        }
        return sSLSocketFactory;
    }
}
