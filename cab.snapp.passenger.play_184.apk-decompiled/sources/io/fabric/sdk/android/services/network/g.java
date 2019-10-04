package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.c;
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

final class g implements X509TrustManager {

    /* renamed from: a  reason: collision with root package name */
    private static final X509Certificate[] f6679a = new X509Certificate[0];

    /* renamed from: b  reason: collision with root package name */
    private final TrustManager[] f6680b;
    private final h c;
    private final long d;
    private final List<byte[]> e = new LinkedList();
    private final Set<X509Certificate> f = Collections.synchronizedSet(new HashSet());

    public g(h hVar, f fVar) {
        this.f6680b = a(hVar);
        this.c = hVar;
        this.d = fVar.getPinCreationTimeInMillis();
        for (String a2 : fVar.getPins()) {
            this.e.add(a(a2));
        }
    }

    private static TrustManager[] a(h hVar) {
        try {
            TrustManagerFactory instance = TrustManagerFactory.getInstance("X509");
            instance.init(hVar.f6681a);
            return instance.getTrustManagers();
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        } catch (KeyStoreException e3) {
            throw new AssertionError(e3);
        }
    }

    private boolean a(X509Certificate x509Certificate) throws CertificateException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(x509Certificate.getPublicKey().getEncoded());
            for (byte[] equals : this.e) {
                if (Arrays.equals(equals, digest)) {
                    return true;
                }
            }
            return false;
        } catch (NoSuchAlgorithmException e2) {
            throw new CertificateException(e2);
        }
    }

    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        throw new CertificateException("Client certificates not supported!");
    }

    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        if (!this.f.contains(x509CertificateArr[0])) {
            for (TrustManager trustManager : this.f6680b) {
                ((X509TrustManager) trustManager).checkServerTrusted(x509CertificateArr, str);
            }
            if (this.d == -1 || System.currentTimeMillis() - this.d <= 15552000000L) {
                X509Certificate[] cleanChain = a.getCleanChain(x509CertificateArr, this.c);
                int length = cleanChain.length;
                int i = 0;
                while (i < length) {
                    if (!a(cleanChain[i])) {
                        i++;
                    }
                }
                throw new CertificateException("No valid pins found in chain!");
            }
            c.getLogger().w(c.TAG, "Certificate pins are stale, (" + (System.currentTimeMillis() - this.d) + " millis vs 15552000000 millis) falling back to system trust.");
            this.f.add(x509CertificateArr[0]);
        }
    }

    public final X509Certificate[] getAcceptedIssuers() {
        return f6679a;
    }

    private static byte[] a(String str) {
        int length = str.length();
        byte[] bArr = new byte[(length / 2)];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }
}
