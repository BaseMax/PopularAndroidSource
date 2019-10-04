package j;

import j.a.e;
import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import okhttp3.TlsVersion;

/* compiled from: Handshake */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    public final TlsVersion f15112a;

    /* renamed from: b  reason: collision with root package name */
    public final C1146m f15113b;

    /* renamed from: c  reason: collision with root package name */
    public final List<Certificate> f15114c;

    /* renamed from: d  reason: collision with root package name */
    public final List<Certificate> f15115d;

    public B(TlsVersion tlsVersion, C1146m mVar, List<Certificate> list, List<Certificate> list2) {
        this.f15112a = tlsVersion;
        this.f15113b = mVar;
        this.f15114c = list;
        this.f15115d = list2;
    }

    public static B a(SSLSession sSLSession) {
        Certificate[] certificateArr;
        List list;
        List list2;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        } else if (!"SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            C1146m a2 = C1146m.a(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null");
            } else if (!"NONE".equals(protocol)) {
                TlsVersion a3 = TlsVersion.a(protocol);
                try {
                    certificateArr = sSLSession.getPeerCertificates();
                } catch (SSLPeerUnverifiedException unused) {
                    certificateArr = null;
                }
                if (certificateArr != null) {
                    list = e.a((T[]) certificateArr);
                } else {
                    list = Collections.emptyList();
                }
                Certificate[] localCertificates = sSLSession.getLocalCertificates();
                if (localCertificates != null) {
                    list2 = e.a((T[]) localCertificates);
                } else {
                    list2 = Collections.emptyList();
                }
                return new B(a3, a2, list, list2);
            } else {
                throw new IOException("tlsVersion == NONE");
            }
        } else {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
    }

    public List<Certificate> b() {
        return this.f15115d;
    }

    public List<Certificate> c() {
        return this.f15114c;
    }

    public TlsVersion d() {
        return this.f15112a;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof B)) {
            return false;
        }
        B b2 = (B) obj;
        if (this.f15112a.equals(b2.f15112a) && this.f15113b.equals(b2.f15113b) && this.f15114c.equals(b2.f15114c) && this.f15115d.equals(b2.f15115d)) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return ((((((527 + this.f15112a.hashCode()) * 31) + this.f15113b.hashCode()) * 31) + this.f15114c.hashCode()) * 31) + this.f15115d.hashCode();
    }

    public static B a(TlsVersion tlsVersion, C1146m mVar, List<Certificate> list, List<Certificate> list2) {
        if (tlsVersion == null) {
            throw new NullPointerException("tlsVersion == null");
        } else if (mVar != null) {
            return new B(tlsVersion, mVar, e.a(list), e.a(list2));
        } else {
            throw new NullPointerException("cipherSuite == null");
        }
    }

    public C1146m a() {
        return this.f15113b;
    }
}
