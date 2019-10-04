package j.a.b;

import j.C1150q;
import j.a.a;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* compiled from: ConnectionSpecSelector */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final List<C1150q> f15312a;

    /* renamed from: b  reason: collision with root package name */
    public int f15313b = 0;

    /* renamed from: c  reason: collision with root package name */
    public boolean f15314c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f15315d;

    public b(List<C1150q> list) {
        this.f15312a = list;
    }

    public C1150q a(SSLSocket sSLSocket) {
        C1150q qVar;
        int i2 = this.f15313b;
        int size = this.f15312a.size();
        while (true) {
            if (i2 >= size) {
                qVar = null;
                break;
            }
            qVar = this.f15312a.get(i2);
            if (qVar.a(sSLSocket)) {
                this.f15313b = i2 + 1;
                break;
            }
            i2++;
        }
        if (qVar != null) {
            this.f15314c = b(sSLSocket);
            a.f15256a.a(qVar, sSLSocket, this.f15315d);
            return qVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f15315d + ", modes=" + this.f15312a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public final boolean b(SSLSocket sSLSocket) {
        for (int i2 = this.f15313b; i2 < this.f15312a.size(); i2++) {
            if (this.f15312a.get(i2).a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public boolean a(IOException iOException) {
        boolean z = true;
        this.f15315d = true;
        if (!this.f15314c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z2 = iOException instanceof SSLHandshakeException;
        if ((z2 && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        if (!z2 && !(iOException instanceof SSLProtocolException) && !(iOException instanceof SSLException)) {
            z = false;
        }
        return z;
    }
}
