package com.koushikdutta.ion.conscrypt;

import android.content.Context;
import com.google.android.gms.b.a;
import com.koushikdutta.async.f;
import com.koushikdutta.async.http.b;
import com.koushikdutta.async.http.h;
import com.koushikdutta.async.http.y;
import java.security.Provider;
import java.security.Security;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

public class ConscryptMiddleware extends y {
    private static final String LOGTAG = "IonConscrypt";
    static boolean initialized;
    static final Object lock = new Object();
    static boolean success;
    Context context;
    boolean enabled = true;
    boolean instanceInitialized;
    h middleware;

    public void enable(boolean z) {
        this.enabled = z;
        if (!z) {
            this.instanceInitialized = false;
            this.middleware.setSSLContext(null);
        }
    }

    public static void initialize(Context context2) {
        try {
            synchronized (lock) {
                if (!initialized) {
                    initialized = true;
                    if (Security.getProvider(a.PROVIDER_NAME) != null) {
                        success = true;
                        return;
                    }
                    SSLContext sSLContext = SSLContext.getDefault();
                    SSLSocketFactory defaultSSLSocketFactory = HttpsURLConnection.getDefaultSSLSocketFactory();
                    a.installIfNeeded(context2);
                    Provider[] providers = Security.getProviders();
                    Provider provider = Security.getProvider(a.PROVIDER_NAME);
                    Security.removeProvider(a.PROVIDER_NAME);
                    Security.insertProviderAt(provider, providers.length);
                    SSLContext.setDefault(sSLContext);
                    HttpsURLConnection.setDefaultSSLSocketFactory(defaultSSLSocketFactory);
                    success = true;
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void initialize() {
        initialize(this.context);
        if (success && !this.instanceInitialized && this.enabled) {
            this.instanceInitialized = true;
            try {
                SSLContext instance = SSLContext.getInstance("TLS", a.PROVIDER_NAME);
                instance.init(null, null, null);
                if (this.middleware.getSSLContext() == f.getDefaultSSLContext()) {
                    this.middleware.setSSLContext(instance);
                }
            } catch (Exception unused) {
            }
        }
    }

    public ConscryptMiddleware(Context context2, h hVar) {
        this.middleware = hVar;
        this.context = context2.getApplicationContext();
    }

    public com.koushikdutta.async.b.a getSocket(b.a aVar) {
        if (!this.enabled) {
            return null;
        }
        initialize();
        return super.getSocket(aVar);
    }
}
