package e.a.a.a.a.e;

import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

/* compiled from: NetworkUtils */
public final class g {
    public static final SSLSocketFactory a(h hVar) {
        SSLContext instance = SSLContext.getInstance("TLS");
        instance.init(null, new TrustManager[]{new i(new j(hVar.getKeyStoreStream(), hVar.getKeyStorePassword()), hVar)}, null);
        return instance.getSocketFactory();
    }
}
