package j;

import e.a.a.a.a.b.C1046a;
import j.C1142i;
import j.a.a.j;
import j.a.e;
import j.a.g.f;
import j.a.i.c;
import j.a.i.d;
import j.z;
import java.net.Proxy;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;

/* compiled from: OkHttpClient */
public class I implements Cloneable, C1142i.a, U {

    /* renamed from: a  reason: collision with root package name */
    public static final List<Protocol> f15159a = e.a((T[]) new Protocol[]{Protocol.HTTP_2, Protocol.HTTP_1_1});

    /* renamed from: b  reason: collision with root package name */
    public static final List<C1150q> f15160b = e.a((T[]) new C1150q[]{C1150q.f15686d, C1150q.f15688f});
    public final int A;
    public final int B;
    public final int C;
    public final int D;

    /* renamed from: c  reason: collision with root package name */
    public final C1153u f15161c;

    /* renamed from: d  reason: collision with root package name */
    public final Proxy f15162d;

    /* renamed from: e  reason: collision with root package name */
    public final List<Protocol> f15163e;

    /* renamed from: f  reason: collision with root package name */
    public final List<C1150q> f15164f;

    /* renamed from: g  reason: collision with root package name */
    public final List<E> f15165g;

    /* renamed from: h  reason: collision with root package name */
    public final List<E> f15166h;

    /* renamed from: i  reason: collision with root package name */
    public final z.a f15167i;

    /* renamed from: j  reason: collision with root package name */
    public final ProxySelector f15168j;

    /* renamed from: k  reason: collision with root package name */
    public final C1152t f15169k;

    /* renamed from: l  reason: collision with root package name */
    public final C1139f f15170l;
    public final j m;
    public final SocketFactory n;
    public final SSLSocketFactory o;
    public final c p;
    public final HostnameVerifier q;
    public final C1144k r;
    public final C1136c s;
    public final C1136c t;
    public final C1149p u;
    public final w v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final int z;

    /* compiled from: OkHttpClient */
    public static final class a {
        public int A;
        public int B;

        /* renamed from: a  reason: collision with root package name */
        public C1153u f15171a = new C1153u();

        /* renamed from: b  reason: collision with root package name */
        public Proxy f15172b;

        /* renamed from: c  reason: collision with root package name */
        public List<Protocol> f15173c = I.f15159a;

        /* renamed from: d  reason: collision with root package name */
        public List<C1150q> f15174d = I.f15160b;

        /* renamed from: e  reason: collision with root package name */
        public final List<E> f15175e = new ArrayList();

        /* renamed from: f  reason: collision with root package name */
        public final List<E> f15176f = new ArrayList();

        /* renamed from: g  reason: collision with root package name */
        public z.a f15177g = z.a(z.f15719a);

        /* renamed from: h  reason: collision with root package name */
        public ProxySelector f15178h = ProxySelector.getDefault();

        /* renamed from: i  reason: collision with root package name */
        public C1152t f15179i;

        /* renamed from: j  reason: collision with root package name */
        public C1139f f15180j;

        /* renamed from: k  reason: collision with root package name */
        public j f15181k;

        /* renamed from: l  reason: collision with root package name */
        public SocketFactory f15182l;
        public SSLSocketFactory m;
        public c n;
        public HostnameVerifier o;
        public C1144k p;
        public C1136c q;
        public C1136c r;
        public C1149p s;
        public w t;
        public boolean u;
        public boolean v;
        public boolean w;
        public int x;
        public int y;
        public int z;

        public a() {
            if (this.f15178h == null) {
                this.f15178h = new j.a.h.a();
            }
            this.f15179i = C1152t.f15709a;
            this.f15182l = SocketFactory.getDefault();
            this.o = d.f15599a;
            this.p = C1144k.f15655a;
            C1136c cVar = C1136c.f15600a;
            this.q = cVar;
            this.r = cVar;
            this.s = new C1149p();
            this.t = w.f15717a;
            this.u = true;
            this.v = true;
            this.w = true;
            this.x = 0;
            this.y = C1046a.DEFAULT_TIMEOUT;
            this.z = C1046a.DEFAULT_TIMEOUT;
            this.A = C1046a.DEFAULT_TIMEOUT;
            this.B = 0;
        }

        public a a(long j2, TimeUnit timeUnit) {
            this.y = e.a("timeout", j2, timeUnit);
            return this;
        }

        public a b(long j2, TimeUnit timeUnit) {
            this.z = e.a("timeout", j2, timeUnit);
            return this;
        }

        public a a(C1139f fVar) {
            this.f15180j = fVar;
            this.f15181k = null;
            return this;
        }

        public a a(C1136c cVar) {
            if (cVar != null) {
                this.r = cVar;
                return this;
            }
            throw new NullPointerException("authenticator == null");
        }

        public a a(E e2) {
            if (e2 != null) {
                this.f15175e.add(e2);
                return this;
            }
            throw new IllegalArgumentException("interceptor == null");
        }

        public I a() {
            return new I(this);
        }
    }

    static {
        j.a.a.f15256a = new H();
    }

    public I() {
        this(new a());
    }

    public static SSLSocketFactory a(X509TrustManager x509TrustManager) {
        try {
            SSLContext d2 = f.b().d();
            d2.init(null, new TrustManager[]{x509TrustManager}, null);
            return d2.getSocketFactory();
        } catch (GeneralSecurityException e2) {
            throw e.a("No System TLS", (Exception) e2);
        }
    }

    public int A() {
        return this.B;
    }

    public boolean B() {
        return this.y;
    }

    public SocketFactory C() {
        return this.n;
    }

    public SSLSocketFactory D() {
        return this.o;
    }

    public int E() {
        return this.C;
    }

    public C1139f b() {
        return this.f15170l;
    }

    public int c() {
        return this.z;
    }

    public C1144k d() {
        return this.r;
    }

    public int e() {
        return this.A;
    }

    public C1149p f() {
        return this.u;
    }

    public List<C1150q> g() {
        return this.f15164f;
    }

    public C1152t h() {
        return this.f15169k;
    }

    public C1153u i() {
        return this.f15161c;
    }

    public w j() {
        return this.v;
    }

    public z.a k() {
        return this.f15167i;
    }

    public boolean p() {
        return this.x;
    }

    public boolean q() {
        return this.w;
    }

    public HostnameVerifier r() {
        return this.q;
    }

    public List<E> s() {
        return this.f15165g;
    }

    public j t() {
        C1139f fVar = this.f15170l;
        return fVar != null ? fVar.f15605a : this.m;
    }

    public List<E> u() {
        return this.f15166h;
    }

    public int v() {
        return this.D;
    }

    public List<Protocol> w() {
        return this.f15163e;
    }

    public Proxy x() {
        return this.f15162d;
    }

    public C1136c y() {
        return this.s;
    }

    public ProxySelector z() {
        return this.f15168j;
    }

    public I(a aVar) {
        boolean z2;
        this.f15161c = aVar.f15171a;
        this.f15162d = aVar.f15172b;
        this.f15163e = aVar.f15173c;
        this.f15164f = aVar.f15174d;
        this.f15165g = e.a(aVar.f15175e);
        this.f15166h = e.a(aVar.f15176f);
        this.f15167i = aVar.f15177g;
        this.f15168j = aVar.f15178h;
        this.f15169k = aVar.f15179i;
        this.f15170l = aVar.f15180j;
        this.m = aVar.f15181k;
        this.n = aVar.f15182l;
        Iterator<C1150q> it = this.f15164f.iterator();
        loop0:
        while (true) {
            z2 = false;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                C1150q next = it.next();
                if (z2 || next.b()) {
                    z2 = true;
                }
            }
        }
        if (aVar.m != null || !z2) {
            this.o = aVar.m;
            this.p = aVar.n;
        } else {
            X509TrustManager a2 = e.a();
            this.o = a(a2);
            this.p = c.a(a2);
        }
        if (this.o != null) {
            f.b().a(this.o);
        }
        this.q = aVar.o;
        this.r = aVar.p.a(this.p);
        this.s = aVar.q;
        this.t = aVar.r;
        this.u = aVar.s;
        this.v = aVar.t;
        this.w = aVar.u;
        this.x = aVar.v;
        this.y = aVar.w;
        this.z = aVar.x;
        this.A = aVar.y;
        this.B = aVar.z;
        this.C = aVar.A;
        this.D = aVar.B;
        if (this.f15165g.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f15165g);
        } else if (this.f15166h.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.f15166h);
        }
    }

    public C1136c a() {
        return this.t;
    }

    public C1142i a(L l2) {
        return K.a(this, l2, false);
    }
}
