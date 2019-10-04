package j.a.b;

import j.C1134a;
import j.C1142i;
import j.D;
import j.T;
import j.z;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: RouteSelector */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final C1134a f15328a;

    /* renamed from: b  reason: collision with root package name */
    public final d f15329b;

    /* renamed from: c  reason: collision with root package name */
    public final C1142i f15330c;

    /* renamed from: d  reason: collision with root package name */
    public final z f15331d;

    /* renamed from: e  reason: collision with root package name */
    public List<Proxy> f15332e = Collections.emptyList();

    /* renamed from: f  reason: collision with root package name */
    public int f15333f;

    /* renamed from: g  reason: collision with root package name */
    public List<InetSocketAddress> f15334g = Collections.emptyList();

    /* renamed from: h  reason: collision with root package name */
    public final List<T> f15335h = new ArrayList();

    /* compiled from: RouteSelector */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<T> f15336a;

        /* renamed from: b  reason: collision with root package name */
        public int f15337b = 0;

        public a(List<T> list) {
            this.f15336a = list;
        }

        public List<T> a() {
            return new ArrayList(this.f15336a);
        }

        public boolean b() {
            return this.f15337b < this.f15336a.size();
        }

        public T c() {
            if (b()) {
                List<T> list = this.f15336a;
                int i2 = this.f15337b;
                this.f15337b = i2 + 1;
                return list.get(i2);
            }
            throw new NoSuchElementException();
        }
    }

    public e(C1134a aVar, d dVar, C1142i iVar, z zVar) {
        this.f15328a = aVar;
        this.f15329b = dVar;
        this.f15330c = iVar;
        this.f15331d = zVar;
        a(aVar.k(), aVar.f());
    }

    public boolean a() {
        return b() || !this.f15335h.isEmpty();
    }

    public final boolean b() {
        return this.f15333f < this.f15332e.size();
    }

    public a c() {
        if (a()) {
            ArrayList arrayList = new ArrayList();
            while (b()) {
                Proxy d2 = d();
                int size = this.f15334g.size();
                for (int i2 = 0; i2 < size; i2++) {
                    T t = new T(this.f15328a, d2, this.f15334g.get(i2));
                    if (this.f15329b.c(t)) {
                        this.f15335h.add(t);
                    } else {
                        arrayList.add(t);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(this.f15335h);
                this.f15335h.clear();
            }
            return new a(arrayList);
        }
        throw new NoSuchElementException();
    }

    public final Proxy d() {
        if (b()) {
            List<Proxy> list = this.f15332e;
            int i2 = this.f15333f;
            this.f15333f = i2 + 1;
            Proxy proxy = list.get(i2);
            a(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f15328a.k().g() + "; exhausted proxy configurations: " + this.f15332e);
    }

    public void a(T t, IOException iOException) {
        if (!(t.b().type() == Proxy.Type.DIRECT || this.f15328a.h() == null)) {
            this.f15328a.h().connectFailed(this.f15328a.k().o(), t.b().address(), iOException);
        }
        this.f15329b.b(t);
    }

    public final void a(D d2, Proxy proxy) {
        List<Proxy> list;
        if (proxy != null) {
            this.f15332e = Collections.singletonList(proxy);
        } else {
            List<Proxy> select = this.f15328a.h().select(d2.o());
            if (select == null || select.isEmpty()) {
                list = j.a.e.a((T[]) new Proxy[]{Proxy.NO_PROXY});
            } else {
                list = j.a.e.a(select);
            }
            this.f15332e = list;
        }
        this.f15333f = 0;
    }

    public final void a(Proxy proxy) {
        String str;
        int i2;
        this.f15334g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            str = this.f15328a.k().g();
            i2 = this.f15328a.k().k();
        } else {
            SocketAddress address = proxy.address();
            if (address instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                str = a(inetSocketAddress);
                i2 = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
        }
        if (i2 < 1 || i2 > 65535) {
            throw new SocketException("No route to " + str + ":" + i2 + "; port is out of range");
        } else if (proxy.type() == Proxy.Type.SOCKS) {
            this.f15334g.add(InetSocketAddress.createUnresolved(str, i2));
        } else {
            this.f15331d.a(this.f15330c, str);
            List<InetAddress> lookup = this.f15328a.c().lookup(str);
            if (!lookup.isEmpty()) {
                this.f15331d.a(this.f15330c, str, lookup);
                int size = lookup.size();
                for (int i3 = 0; i3 < size; i3++) {
                    this.f15334g.add(new InetSocketAddress(lookup.get(i3), i2));
                }
                return;
            }
            throw new UnknownHostException(this.f15328a.c() + " returned no addresses for " + str);
        }
    }

    public static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        if (address == null) {
            return inetSocketAddress.getHostName();
        }
        return address.getHostAddress();
    }
}
