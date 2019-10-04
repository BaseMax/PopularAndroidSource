package io.fabric.sdk.android.services.network;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

public final class e {
    private e() {
    }

    public static final SSLSocketFactory getSSLSocketFactory(f fVar) throws KeyManagementException, NoSuchAlgorithmException {
        SSLContext instance = SSLContext.getInstance("TLS");
        instance.init(null, new TrustManager[]{new g(new h(fVar.getKeyStoreStream(), fVar.getKeyStorePassword()), fVar)}, null);
        return instance.getSocketFactory();
    }
}
