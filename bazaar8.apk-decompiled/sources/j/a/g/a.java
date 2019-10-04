package j.a.g;

import android.os.Build;
import android.util.Log;
import j.a.i.e;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;

/* compiled from: AndroidPlatform */
public class a extends f {

    /* renamed from: c  reason: collision with root package name */
    public final Class<?> f15569c;

    /* renamed from: d  reason: collision with root package name */
    public final e<Socket> f15570d;

    /* renamed from: e  reason: collision with root package name */
    public final e<Socket> f15571e;

    /* renamed from: f  reason: collision with root package name */
    public final e<Socket> f15572f;

    /* renamed from: g  reason: collision with root package name */
    public final e<Socket> f15573g;

    /* renamed from: h  reason: collision with root package name */
    public final c f15574h = c.a();

    /* renamed from: j.a.g.a$a  reason: collision with other inner class name */
    /* compiled from: AndroidPlatform */
    static final class C0152a extends j.a.i.c {

        /* renamed from: a  reason: collision with root package name */
        public final Object f15575a;

        /* renamed from: b  reason: collision with root package name */
        public final Method f15576b;

        public C0152a(Object obj, Method method) {
            this.f15575a = obj;
            this.f15576b = method;
        }

        public List<Certificate> a(List<Certificate> list, String str) {
            try {
                return (List) this.f15576b.invoke(this.f15575a, new Object[]{(X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str});
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            } catch (IllegalAccessException e3) {
                throw new AssertionError(e3);
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C0152a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* compiled from: AndroidPlatform */
    static final class b implements e {

        /* renamed from: a  reason: collision with root package name */
        public final X509TrustManager f15577a;

        /* renamed from: b  reason: collision with root package name */
        public final Method f15578b;

        public b(X509TrustManager x509TrustManager, Method method) {
            this.f15578b = method;
            this.f15577a = x509TrustManager;
        }

        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f15578b.invoke(this.f15577a, new Object[]{x509Certificate});
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e2) {
                throw j.a.e.a("unable to get issues and signature", (Exception) e2);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (!this.f15577a.equals(bVar.f15577a) || !this.f15578b.equals(bVar.f15578b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return this.f15577a.hashCode() + (this.f15578b.hashCode() * 31);
        }
    }

    /* compiled from: AndroidPlatform */
    static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final Method f15579a;

        /* renamed from: b  reason: collision with root package name */
        public final Method f15580b;

        /* renamed from: c  reason: collision with root package name */
        public final Method f15581c;

        public c(Method method, Method method2, Method method3) {
            this.f15579a = method;
            this.f15580b = method2;
            this.f15581c = method3;
        }

        public Object a(String str) {
            Method method = this.f15579a;
            if (method != null) {
                try {
                    Object invoke = method.invoke(null, new Object[0]);
                    this.f15580b.invoke(invoke, new Object[]{str});
                    return invoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        public boolean a(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                this.f15581c.invoke(obj, new Object[0]);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }

        public static c a() {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", new Class[0]);
                method = cls.getMethod("open", new Class[]{String.class});
                method2 = cls.getMethod("warnIfOpen", new Class[0]);
                method3 = method4;
            } catch (Exception unused) {
                method2 = null;
                method = null;
            }
            return new c(method3, method, method2);
        }
    }

    public a(Class<?> cls, e<Socket> eVar, e<Socket> eVar2, e<Socket> eVar3, e<Socket> eVar4) {
        this.f15569c = cls;
        this.f15570d = eVar;
        this.f15571e = eVar2;
        this.f15572f = eVar3;
        this.f15573g = eVar4;
    }

    public static f f() {
        Class<?> cls;
        e eVar;
        e eVar2;
        try {
            cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
        } catch (ClassNotFoundException unused) {
            try {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            } catch (ClassNotFoundException unused2) {
                return null;
            }
        }
        Class<?> cls2 = cls;
        e eVar3 = new e(null, "setUseSessionTickets", Boolean.TYPE);
        e eVar4 = new e(null, "setHostname", String.class);
        if (g()) {
            e eVar5 = new e(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
            eVar = new e(null, "setAlpnProtocols", byte[].class);
            eVar2 = eVar5;
        } else {
            eVar2 = null;
            eVar = null;
        }
        a aVar = new a(cls2, eVar3, eVar4, eVar2, eVar);
        return aVar;
    }

    public static boolean g() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i2) {
        try {
            socket.connect(inetSocketAddress, i2);
        } catch (AssertionError e2) {
            if (j.a.e.a(e2)) {
                throw new IOException(e2);
            }
            throw e2;
        } catch (SecurityException e3) {
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e3);
            throw iOException;
        } catch (ClassCastException e4) {
            if (Build.VERSION.SDK_INT == 26) {
                IOException iOException2 = new IOException("Exception in connect");
                iOException2.initCause(e4);
                throw iOException2;
            }
            throw e4;
        }
    }

    public String b(SSLSocket sSLSocket) {
        e<Socket> eVar = this.f15572f;
        String str = null;
        if (eVar == null || !eVar.a(sSLSocket)) {
            return null;
        }
        byte[] bArr = (byte[]) this.f15572f.d(sSLSocket, new Object[0]);
        if (bArr != null) {
            str = new String(bArr, j.a.e.f15418j);
        }
        return str;
    }

    public SSLContext d() {
        boolean z = true;
        try {
            if (Build.VERSION.SDK_INT < 16 || Build.VERSION.SDK_INT >= 22) {
                z = false;
            }
        } catch (NoClassDefFoundError unused) {
        }
        if (z) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("No TLS provider", e2);
        }
    }

    public boolean b(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return b(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.b(str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            throw j.a.e.a("unable to determine cleartext support", e2);
        }
    }

    public final boolean b(String str, Class<?> cls, Object obj) {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[]{String.class}).invoke(obj, new Object[]{str})).booleanValue();
        } catch (NoSuchMethodException unused) {
            return a(str, cls, obj);
        }
    }

    public void a(SSLSocket sSLSocket, String str, List<Protocol> list) {
        if (str != null) {
            this.f15570d.c(sSLSocket, true);
            this.f15571e.c(sSLSocket, str);
        }
        e<Socket> eVar = this.f15573g;
        if (eVar != null && eVar.a(sSLSocket)) {
            this.f15573g.d(sSLSocket, f.b(list));
        }
    }

    public e b(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", new Class[]{X509Certificate.class});
            declaredMethod.setAccessible(true);
            return new b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.b(x509TrustManager);
        }
    }

    public void a(int i2, String str, Throwable th) {
        int min;
        int i3 = 5;
        if (i2 != 5) {
            i3 = 3;
        }
        if (th != null) {
            str = str + 10 + Log.getStackTraceString(th);
        }
        int i4 = 0;
        int length = str.length();
        while (i4 < length) {
            int indexOf = str.indexOf(10, i4);
            if (indexOf == -1) {
                indexOf = length;
            }
            while (true) {
                min = Math.min(indexOf, i4 + 4000);
                Log.println(i3, "OkHttp", str.substring(i4, min));
                if (min >= indexOf) {
                    break;
                }
                i4 = min;
            }
            i4 = min + 1;
        }
    }

    public Object a(String str) {
        return this.f15574h.a(str);
    }

    public void a(String str, Object obj) {
        if (!this.f15574h.a(obj)) {
            a(5, str, (Throwable) null);
        }
    }

    public final boolean a(String str, Class<?> cls, Object obj) {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.b(str);
        }
    }

    public j.a.i.c a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0152a(cls.getConstructor(new Class[]{X509TrustManager.class}).newInstance(new Object[]{x509TrustManager}), cls.getMethod("checkServerTrusted", new Class[]{X509Certificate[].class, String.class, String.class}));
        } catch (Exception unused) {
            return super.a(x509TrustManager);
        }
    }
}
