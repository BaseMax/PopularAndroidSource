package c.e.a.b.h.b;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class dc extends SSLSocketFactory {

    /* renamed from: a  reason: collision with root package name */
    public final SSLSocketFactory f10861a;

    public dc() {
        this(HttpsURLConnection.getDefaultSSLSocketFactory());
    }

    public final SSLSocket a(SSLSocket sSLSocket) {
        return new ec(this, sSLSocket);
    }

    public final Socket createSocket(Socket socket, String str, int i2, boolean z) {
        return a((SSLSocket) this.f10861a.createSocket(socket, str, i2, z));
    }

    public final String[] getDefaultCipherSuites() {
        return this.f10861a.getDefaultCipherSuites();
    }

    public final String[] getSupportedCipherSuites() {
        return this.f10861a.getSupportedCipherSuites();
    }

    public dc(SSLSocketFactory sSLSocketFactory) {
        this.f10861a = sSLSocketFactory;
    }

    public final Socket createSocket(String str, int i2) {
        return a((SSLSocket) this.f10861a.createSocket(str, i2));
    }

    public final Socket createSocket(InetAddress inetAddress, int i2) {
        return a((SSLSocket) this.f10861a.createSocket(inetAddress, i2));
    }

    public final Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) {
        return a((SSLSocket) this.f10861a.createSocket(str, i2, inetAddress, i3));
    }

    public final Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) {
        return a((SSLSocket) this.f10861a.createSocket(inetAddress, i2, inetAddress2, i3));
    }

    public final Socket createSocket() {
        return a((SSLSocket) this.f10861a.createSocket());
    }
}
