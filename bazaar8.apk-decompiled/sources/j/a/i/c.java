package j.a.i;

import j.a.g.f;
import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.X509TrustManager;

/* compiled from: CertificateChainCleaner */
public abstract class c {
    public static c a(X509TrustManager x509TrustManager) {
        return f.b().a(x509TrustManager);
    }

    public abstract List<Certificate> a(List<Certificate> list, String str);
}
