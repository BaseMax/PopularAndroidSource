package j;

import j.D;
import j.a.e;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Protocol;

/* renamed from: j.a  reason: case insensitive filesystem */
/* compiled from: Address */
public final class C1134a {

    /* renamed from: a  reason: collision with root package name */
    public final D f15245a;

    /* renamed from: b  reason: collision with root package name */
    public final w f15246b;

    /* renamed from: c  reason: collision with root package name */
    public final SocketFactory f15247c;

    /* renamed from: d  reason: collision with root package name */
    public final C1136c f15248d;

    /* renamed from: e  reason: collision with root package name */
    public final List<Protocol> f15249e;

    /* renamed from: f  reason: collision with root package name */
    public final List<C1150q> f15250f;

    /* renamed from: g  reason: collision with root package name */
    public final ProxySelector f15251g;

    /* renamed from: h  reason: collision with root package name */
    public final Proxy f15252h;

    /* renamed from: i  reason: collision with root package name */
    public final SSLSocketFactory f15253i;

    /* renamed from: j  reason: collision with root package name */
    public final HostnameVerifier f15254j;

    /* renamed from: k  reason: collision with root package name */
    public final C1144k f15255k;

    public C1134a(String str, int i2, w wVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, C1144k kVar, C1136c cVar, Proxy proxy, List<Protocol> list, List<C1150q> list2, ProxySelector proxySelector) {
        D.a aVar = new D.a();
        aVar.f(sSLSocketFactory != null ? "https" : "http");
        aVar.b(str);
        aVar.a(i2);
        this.f15245a = aVar.a();
        if (wVar != null) {
            this.f15246b = wVar;
            if (socketFactory != null) {
                this.f15247c = socketFactory;
                if (cVar != null) {
                    this.f15248d = cVar;
                    if (list != null) {
                        this.f15249e = e.a(list);
                        if (list2 != null) {
                            this.f15250f = e.a(list2);
                            if (proxySelector != null) {
                                this.f15251g = proxySelector;
                                this.f15252h = proxy;
                                this.f15253i = sSLSocketFactory;
                                this.f15254j = hostnameVerifier;
                                this.f15255k = kVar;
                                return;
                            }
                            throw new NullPointerException("proxySelector == null");
                        }
                        throw new NullPointerException("connectionSpecs == null");
                    }
                    throw new NullPointerException("protocols == null");
                }
                throw new NullPointerException("proxyAuthenticator == null");
            }
            throw new NullPointerException("socketFactory == null");
        }
        throw new NullPointerException("dns == null");
    }

    public C1144k a() {
        return this.f15255k;
    }

    public List<C1150q> b() {
        return this.f15250f;
    }

    public w c() {
        return this.f15246b;
    }

    public HostnameVerifier d() {
        return this.f15254j;
    }

    public List<Protocol> e() {
        return this.f15249e;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C1134a) {
            C1134a aVar = (C1134a) obj;
            if (this.f15245a.equals(aVar.f15245a) && a(aVar)) {
                return true;
            }
        }
        return false;
    }

    public Proxy f() {
        return this.f15252h;
    }

    public C1136c g() {
        return this.f15248d;
    }

    public ProxySelector h() {
        return this.f15251g;
    }

    public int hashCode() {
        int hashCode = (((((((((((527 + this.f15245a.hashCode()) * 31) + this.f15246b.hashCode()) * 31) + this.f15248d.hashCode()) * 31) + this.f15249e.hashCode()) * 31) + this.f15250f.hashCode()) * 31) + this.f15251g.hashCode()) * 31;
        Proxy proxy = this.f15252h;
        int i2 = 0;
        int hashCode2 = (hashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.f15253i;
        int hashCode3 = (hashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f15254j;
        int hashCode4 = (hashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        C1144k kVar = this.f15255k;
        if (kVar != null) {
            i2 = kVar.hashCode();
        }
        return hashCode4 + i2;
    }

    public SocketFactory i() {
        return this.f15247c;
    }

    public SSLSocketFactory j() {
        return this.f15253i;
    }

    public D k() {
        return this.f15245a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.f15245a.g());
        sb.append(":");
        sb.append(this.f15245a.k());
        if (this.f15252h != null) {
            sb.append(", proxy=");
            sb.append(this.f15252h);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.f15251g);
        }
        sb.append("}");
        return sb.toString();
    }

    public boolean a(C1134a aVar) {
        return this.f15246b.equals(aVar.f15246b) && this.f15248d.equals(aVar.f15248d) && this.f15249e.equals(aVar.f15249e) && this.f15250f.equals(aVar.f15250f) && this.f15251g.equals(aVar.f15251g) && e.a((Object) this.f15252h, (Object) aVar.f15252h) && e.a((Object) this.f15253i, (Object) aVar.f15253i) && e.a((Object) this.f15254j, (Object) aVar.f15254j) && e.a((Object) this.f15255k, (Object) aVar.f15255k) && k().k() == aVar.k().k();
    }
}
