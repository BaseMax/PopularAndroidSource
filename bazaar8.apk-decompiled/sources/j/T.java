package j;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* compiled from: Route */
public final class T {

    /* renamed from: a  reason: collision with root package name */
    public final C1134a f15242a;

    /* renamed from: b  reason: collision with root package name */
    public final Proxy f15243b;

    /* renamed from: c  reason: collision with root package name */
    public final InetSocketAddress f15244c;

    public T(C1134a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        } else if (proxy == null) {
            throw new NullPointerException("proxy == null");
        } else if (inetSocketAddress != null) {
            this.f15242a = aVar;
            this.f15243b = proxy;
            this.f15244c = inetSocketAddress;
        } else {
            throw new NullPointerException("inetSocketAddress == null");
        }
    }

    public C1134a a() {
        return this.f15242a;
    }

    public Proxy b() {
        return this.f15243b;
    }

    public boolean c() {
        return this.f15242a.f15253i != null && this.f15243b.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress d() {
        return this.f15244c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof T) {
            T t = (T) obj;
            if (t.f15242a.equals(this.f15242a) && t.f15243b.equals(this.f15243b) && t.f15244c.equals(this.f15244c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f15242a.hashCode()) * 31) + this.f15243b.hashCode()) * 31) + this.f15244c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f15244c + "}";
    }
}
