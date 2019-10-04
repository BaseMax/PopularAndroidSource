package j.a.g;

import j.a.e;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import okhttp3.Protocol;

/* compiled from: Jdk9Platform */
public final class c extends f {

    /* renamed from: c  reason: collision with root package name */
    public final Method f15582c;

    /* renamed from: d  reason: collision with root package name */
    public final Method f15583d;

    public c(Method method, Method method2) {
        this.f15582c = method;
        this.f15583d = method2;
    }

    public static c f() {
        try {
            return new c(SSLParameters.class.getMethod("setApplicationProtocols", new Class[]{String[].class}), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public void a(SSLSocket sSLSocket, String str, List<Protocol> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> a2 = f.a(list);
            this.f15582c.invoke(sSLParameters, new Object[]{a2.toArray(new String[a2.size()])});
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw e.a("unable to set ssl parameters", (Exception) e2);
        }
    }

    public String b(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f15583d.invoke(sSLSocket, new Object[0]);
            if (str == null || str.equals("")) {
                return null;
            }
            return str;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw e.a("unable to get selected protocols", (Exception) e2);
        }
    }
}
