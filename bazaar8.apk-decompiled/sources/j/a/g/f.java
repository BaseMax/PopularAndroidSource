package j.a.g;

import j.I;
import j.a.i.a;
import j.a.i.b;
import j.a.i.c;
import j.a.i.e;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import k.g;
import okhttp3.Protocol;

/* compiled from: Platform */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f15595a = a();

    /* renamed from: b  reason: collision with root package name */
    public static final Logger f15596b = Logger.getLogger(I.class.getName());

    public static f b() {
        return f15595a;
    }

    public static boolean e() {
        if ("conscrypt".equals(System.getProperty("okhttp.platform"))) {
            return true;
        }
        return "Conscrypt".equals(Security.getProviders()[0].getName());
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i2) {
        socket.connect(inetSocketAddress, i2);
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void a(SSLSocket sSLSocket, String str, List<Protocol> list) {
    }

    public void a(SSLSocketFactory sSLSocketFactory) {
    }

    public String b(SSLSocket sSLSocket) {
        return null;
    }

    public boolean b(String str) {
        return true;
    }

    public String c() {
        return "OkHttp";
    }

    public SSLContext d() {
        if ("1.7".equals(System.getProperty("java.specification.version"))) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("No TLS provider", e2);
        }
    }

    public String toString() {
        return getClass().getSimpleName();
    }

    public static byte[] b(List<Protocol> list) {
        g gVar = new g();
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Protocol protocol = list.get(i2);
            if (protocol != Protocol.HTTP_1_0) {
                gVar.writeByte(protocol.toString().length());
                gVar.a(protocol.toString());
            }
        }
        return gVar.c();
    }

    public void a(int i2, String str, Throwable th) {
        f15596b.log(i2 == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public Object a(String str) {
        if (f15596b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public void a(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        a(5, str, (Throwable) obj);
    }

    public static List<String> a(List<Protocol> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Protocol protocol = list.get(i2);
            if (protocol != Protocol.HTTP_1_0) {
                arrayList.add(protocol.toString());
            }
        }
        return arrayList;
    }

    public e b(X509TrustManager x509TrustManager) {
        return new b(x509TrustManager.getAcceptedIssuers());
    }

    public c a(X509TrustManager x509TrustManager) {
        return new a(b(x509TrustManager));
    }

    public static f a() {
        f f2 = a.f();
        if (f2 != null) {
            return f2;
        }
        if (e()) {
            b f3 = b.f();
            if (f3 != null) {
                return f3;
            }
        }
        c f4 = c.f();
        if (f4 != null) {
            return f4;
        }
        f f5 = d.f();
        if (f5 != null) {
            return f5;
        }
        return new f();
    }
}
