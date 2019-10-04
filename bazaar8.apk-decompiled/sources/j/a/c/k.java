package j.a.c;

import j.C1134a;
import j.C1142i;
import j.C1144k;
import j.D;
import j.E;
import j.I;
import j.L;
import j.O;
import j.P;
import j.S;
import j.T;
import j.a.b.f;
import j.a.e;
import j.z;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;

/* compiled from: RetryAndFollowUpInterceptor */
public final class k implements E {

    /* renamed from: a  reason: collision with root package name */
    public final I f15374a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f15375b;

    /* renamed from: c  reason: collision with root package name */
    public volatile f f15376c;

    /* renamed from: d  reason: collision with root package name */
    public Object f15377d;

    /* renamed from: e  reason: collision with root package name */
    public volatile boolean f15378e;

    public k(I i2, boolean z) {
        this.f15374a = i2;
        this.f15375b = z;
    }

    public void a() {
        this.f15378e = true;
        f fVar = this.f15376c;
        if (fVar != null) {
            fVar.a();
        }
    }

    public boolean b() {
        return this.f15378e;
    }

    public void a(Object obj) {
        this.f15377d = obj;
    }

    public P a(E.a aVar) {
        L e2 = aVar.e();
        h hVar = (h) aVar;
        C1142i f2 = hVar.f();
        z g2 = hVar.g();
        f fVar = new f(this.f15374a.f(), a(e2.g()), f2, g2, this.f15377d);
        this.f15376c = fVar;
        P p = null;
        int i2 = 0;
        while (!this.f15378e) {
            try {
                P a2 = hVar.a(e2, fVar, null, null);
                if (p != null) {
                    P.a B = a2.B();
                    P.a B2 = p.B();
                    B2.a((S) null);
                    B.d(B2.a());
                    a2 = B.a();
                }
                try {
                    L a3 = a(a2, fVar.h());
                    if (a3 == null) {
                        fVar.f();
                        return a2;
                    }
                    e.a((Closeable) a2.s());
                    int i3 = i2 + 1;
                    if (i3 <= 20) {
                        a3.a();
                        if (!a(a2, a3.g())) {
                            fVar.f();
                            fVar = new f(this.f15374a.f(), a(a3.g()), f2, g2, this.f15377d);
                            this.f15376c = fVar;
                        } else if (fVar.b() != null) {
                            throw new IllegalStateException("Closing the body of " + a2 + " didn't close its backing stream. Bad interceptor?");
                        }
                        p = a2;
                        e2 = a3;
                        i2 = i3;
                    } else {
                        fVar.f();
                        throw new ProtocolException("Too many follow-up requests: " + i3);
                    }
                } catch (IOException e3) {
                    fVar.f();
                    throw e3;
                }
            } catch (RouteException e4) {
                if (!a(e4.b(), fVar, false, e2)) {
                    throw e4.a();
                }
            } catch (IOException e5) {
                if (!a(e5, fVar, !(e5 instanceof ConnectionShutdownException), e2)) {
                    throw e5;
                }
            } catch (Throwable th) {
                fVar.a((IOException) null);
                fVar.f();
                throw th;
            }
        }
        fVar.f();
        throw new IOException("Canceled");
    }

    public final C1134a a(D d2) {
        C1144k kVar;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        if (d2.h()) {
            SSLSocketFactory D = this.f15374a.D();
            hostnameVerifier = this.f15374a.r();
            sSLSocketFactory = D;
            kVar = this.f15374a.d();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            kVar = null;
        }
        C1134a aVar = new C1134a(d2.g(), d2.k(), this.f15374a.j(), this.f15374a.C(), sSLSocketFactory, hostnameVerifier, kVar, this.f15374a.y(), this.f15374a.x(), this.f15374a.w(), this.f15374a.g(), this.f15374a.z());
        return aVar;
    }

    public final boolean a(IOException iOException, f fVar, boolean z, L l2) {
        fVar.a(iOException);
        if (!this.f15374a.B()) {
            return false;
        }
        if (z) {
            l2.a();
        }
        if (a(iOException, z) && fVar.d()) {
            return true;
        }
        return false;
    }

    public final boolean a(IOException iOException, boolean z) {
        boolean z2 = false;
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if ((iOException instanceof SocketTimeoutException) && !z) {
                z2 = true;
            }
            return z2;
        } else if ((!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException)) {
            return true;
        } else {
            return false;
        }
    }

    public final L a(P p, T t) {
        if (p != null) {
            int v = p.v();
            String e2 = p.F().e();
            O o = null;
            if (v == 307 || v == 308) {
                if (!e2.equals("GET") && !e2.equals("HEAD")) {
                    return null;
                }
            } else if (v == 401) {
                return this.f15374a.a().a(t, p);
            } else {
                if (v != 503) {
                    if (v != 407) {
                        if (v != 408) {
                            switch (v) {
                                case 300:
                                case 301:
                                case 302:
                                case 303:
                                    break;
                                default:
                                    return null;
                            }
                        } else if (!this.f15374a.B()) {
                            return null;
                        } else {
                            p.F().a();
                            if ((p.C() == null || p.C().v() != 408) && a(p, 0) <= 0) {
                                return p.F();
                            }
                            return null;
                        }
                    } else if (t.b().type() == Proxy.Type.HTTP) {
                        return this.f15374a.y().a(t, p);
                    } else {
                        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                    }
                } else if ((p.C() == null || p.C().v() != 503) && a(p, Integer.MAX_VALUE) == 0) {
                    return p.F();
                } else {
                    return null;
                }
            }
            if (!this.f15374a.p()) {
                return null;
            }
            String e3 = p.e("Location");
            if (e3 == null) {
                return null;
            }
            D e4 = p.F().g().e(e3);
            if (e4 == null) {
                return null;
            }
            if (!e4.n().equals(p.F().g().n()) && !this.f15374a.q()) {
                return null;
            }
            L.a f2 = p.F().f();
            if (g.b(e2)) {
                boolean d2 = g.d(e2);
                if (g.c(e2)) {
                    f2.a("GET", (O) null);
                } else {
                    if (d2) {
                        o = p.F().a();
                    }
                    f2.a(e2, o);
                }
                if (!d2) {
                    f2.a("Transfer-Encoding");
                    f2.a("Content-Length");
                    f2.a("Content-Type");
                }
            }
            if (!a(p, e4)) {
                f2.a("Authorization");
            }
            f2.a(e4);
            return f2.a();
        }
        throw new IllegalStateException();
    }

    public final int a(P p, int i2) {
        String e2 = p.e("Retry-After");
        if (e2 == null) {
            return i2;
        }
        if (e2.matches("\\d+")) {
            return Integer.valueOf(e2).intValue();
        }
        return Integer.MAX_VALUE;
    }

    public final boolean a(P p, D d2) {
        D g2 = p.F().g();
        return g2.g().equals(d2.g()) && g2.k() == d2.k() && g2.n().equals(d2.n());
    }
}
