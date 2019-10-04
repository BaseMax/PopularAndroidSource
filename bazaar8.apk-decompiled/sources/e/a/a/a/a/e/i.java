package e.a.a.a.a.e;

import e.a.a.a.f;
import e.a.a.a.o;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* compiled from: PinningTrustManager */
public class i implements X509TrustManager {

    /* renamed from: a  reason: collision with root package name */
    public static final X509Certificate[] f13760a = new X509Certificate[0];

    /* renamed from: b  reason: collision with root package name */
    public final TrustManager[] f13761b;

    /* renamed from: c  reason: collision with root package name */
    public final j f13762c;

    /* renamed from: d  reason: collision with root package name */
    public final long f13763d;

    /* renamed from: e  reason: collision with root package name */
    public final List<byte[]> f13764e = new LinkedList();

    /* renamed from: f  reason: collision with root package name */
    public final Set<X509Certificate> f13765f = Collections.synchronizedSet(new HashSet());

    public i(j jVar, h hVar) {
        this.f13761b = a(jVar);
        this.f13762c = jVar;
        this.f13763d = hVar.getPinCreationTimeInMillis();
        for (String a2 : hVar.getPins()) {
            this.f13764e.add(a(a2));
        }
    }

    public final TrustManager[] a(j jVar) {
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance("X509");
            instance.init(jVar.f13766a);
            return instance.getTrustManagers();
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        } catch (KeyStoreException e3) {
            throw new AssertionError(e3);
        }
    }

    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        throw new CertificateException("Client certificates not supported!");
    }

    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        if (!this.f13765f.contains(x509CertificateArr[0])) {
            a(x509CertificateArr, str);
            a(x509CertificateArr);
            this.f13765f.add(x509CertificateArr[0]);
        }
    }

    public X509Certificate[] getAcceptedIssuers() {
        return f13760a;
    }

    public final boolean a(X509Certificate x509Certificate) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(x509Certificate.getPublicKey().getEncoded());
            for (byte[] equals : this.f13764e) {
                if (Arrays.equals(equals, digest)) {
                    return true;
                }
            }
            return false;
        } catch (NoSuchAlgorithmException e2) {
            throw new CertificateException(e2);
        }
    }

    public final void a(X509Certificate[] x509CertificateArr, String str) {
        for (TrustManager trustManager : this.f13761b) {
            ((X509TrustManager) trustManager).checkServerTrusted(x509CertificateArr, str);
        }
    }

    public final void a(X509Certificate[] x509CertificateArr) {
        if (this.f13763d == -1 || System.currentTimeMillis() - this.f13763d <= 15552000000L) {
            X509Certificate[] a2 = a.a(x509CertificateArr, this.f13762c);
            int length = a2.length;
            int i2 = 0;
            while (i2 < length) {
                if (!a(a2[i2])) {
                    i2++;
                } else {
                    return;
                }
            }
            throw new CertificateException("No valid pins found in chain!");
        }
        o e2 = f.e();
        e2.a("Fabric", "Certificate pins are stale, (" + (System.currentTimeMillis() - this.f13763d) + " millis vs " + 15552000000L + " millis) falling back to system trust.");
    }

    public final byte[] a(String str) {
        int length = str.length();
        byte[] bArr = new byte[(length / 2)];
        for (int i2 = 0; i2 < length; i2 += 2) {
            bArr[i2 / 2] = (byte) ((Character.digit(str.charAt(i2), 16) << 4) + Character.digit(str.charAt(i2 + 1), 16));
        }
        return bArr;
    }
}
