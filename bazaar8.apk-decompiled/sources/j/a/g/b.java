package j.a.g;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Protocol;
import org.conscrypt.Conscrypt;

/* compiled from: ConscryptPlatform */
public class b extends f {
    public static b f() {
        try {
            Class.forName("org.conscrypt.Conscrypt");
            if (!Conscrypt.isAvailable()) {
                return null;
            }
            return new b();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public void a(SSLSocket sSLSocket, String str, List<Protocol> list) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            if (str != null) {
                Conscrypt.setUseSessionTickets(sSLSocket, true);
                Conscrypt.setHostname(sSLSocket, str);
            }
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) f.a(list).toArray(new String[0]));
            return;
        }
        super.a(sSLSocket, str, list);
    }

    public String b(SSLSocket sSLSocket) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return super.b(sSLSocket);
    }

    public SSLContext d() {
        try {
            return SSLContext.getInstance("TLSv1.3", g());
        } catch (NoSuchAlgorithmException e2) {
            try {
                return SSLContext.getInstance("TLS", g());
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalStateException("No TLS provider", e2);
            }
        }
    }

    public final Provider g() {
        return Conscrypt.newProviderBuilder().provideTrustManager().build();
    }

    public void a(SSLSocketFactory sSLSocketFactory) {
        if (Conscrypt.isConscrypt(sSLSocketFactory)) {
            Conscrypt.setUseEngineSocket(sSLSocketFactory, true);
        }
    }
}
