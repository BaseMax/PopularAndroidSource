package j.a.g;

import j.a.e;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;
import okhttp3.Protocol;

/* compiled from: JdkWithJettyBootPlatform */
public class d extends f {

    /* renamed from: c  reason: collision with root package name */
    public final Method f15584c;

    /* renamed from: d  reason: collision with root package name */
    public final Method f15585d;

    /* renamed from: e  reason: collision with root package name */
    public final Method f15586e;

    /* renamed from: f  reason: collision with root package name */
    public final Class<?> f15587f;

    /* renamed from: g  reason: collision with root package name */
    public final Class<?> f15588g;

    /* compiled from: JdkWithJettyBootPlatform */
    private static class a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        public final List<String> f15589a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f15590b;

        /* renamed from: c  reason: collision with root package name */
        public String f15591c;

        public a(List<String> list) {
            this.f15589a = list;
        }

        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = e.f15410b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return true;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f15590b = true;
                return null;
            } else if (name.equals("protocols") && objArr.length == 0) {
                return this.f15589a;
            } else {
                if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1 && (objArr[0] instanceof List)) {
                    List list = (List) objArr[0];
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (this.f15589a.contains(list.get(i2))) {
                            String str = (String) list.get(i2);
                            this.f15591c = str;
                            return str;
                        }
                    }
                    String str2 = this.f15589a.get(0);
                    this.f15591c = str2;
                    return str2;
                } else if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                } else {
                    this.f15591c = (String) objArr[0];
                    return null;
                }
            }
        }
    }

    public d(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f15584c = method;
        this.f15585d = method2;
        this.f15586e = method3;
        this.f15587f = cls;
        this.f15588g = cls2;
    }

    public static f f() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN" + "$Provider");
            Class<?> cls3 = Class.forName("org.eclipse.jetty.alpn.ALPN" + "$ClientProvider");
            Class<?> cls4 = Class.forName("org.eclipse.jetty.alpn.ALPN" + "$ServerProvider");
            Method method = cls.getMethod("put", new Class[]{SSLSocket.class, cls2});
            Method method2 = method;
            d dVar = new d(method2, cls.getMethod("get", new Class[]{SSLSocket.class}), cls.getMethod("remove", new Class[]{SSLSocket.class}), cls3, cls4);
            return dVar;
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    public void a(SSLSocket sSLSocket, String str, List<Protocol> list) {
        List<String> a2 = f.a(list);
        try {
            Object newProxyInstance = Proxy.newProxyInstance(f.class.getClassLoader(), new Class[]{this.f15587f, this.f15588g}, new a(a2));
            this.f15584c.invoke(null, new Object[]{sSLSocket, newProxyInstance});
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw e.a("unable to set alpn", (Exception) e2);
        }
    }

    public String b(SSLSocket sSLSocket) {
        try {
            Object[] objArr = {sSLSocket};
            String str = null;
            a aVar = (a) Proxy.getInvocationHandler(this.f15585d.invoke(null, objArr));
            if (aVar.f15590b || aVar.f15591c != null) {
                if (!aVar.f15590b) {
                    str = aVar.f15591c;
                }
                return str;
            }
            f.b().a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw e.a("unable to get selected protocol", (Exception) e2);
        }
    }

    public void a(SSLSocket sSLSocket) {
        try {
            this.f15586e.invoke(null, new Object[]{sSLSocket});
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw e.a("unable to remove alpn", (Exception) e2);
        }
    }
}
