package j;

import j.C;
import java.io.Closeable;
import okhttp3.Protocol;

/* compiled from: Response */
public final class P implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final L f15210a;

    /* renamed from: b  reason: collision with root package name */
    public final Protocol f15211b;

    /* renamed from: c  reason: collision with root package name */
    public final int f15212c;

    /* renamed from: d  reason: collision with root package name */
    public final String f15213d;

    /* renamed from: e  reason: collision with root package name */
    public final B f15214e;

    /* renamed from: f  reason: collision with root package name */
    public final C f15215f;

    /* renamed from: g  reason: collision with root package name */
    public final S f15216g;

    /* renamed from: h  reason: collision with root package name */
    public final P f15217h;

    /* renamed from: i  reason: collision with root package name */
    public final P f15218i;

    /* renamed from: j  reason: collision with root package name */
    public final P f15219j;

    /* renamed from: k  reason: collision with root package name */
    public final long f15220k;

    /* renamed from: l  reason: collision with root package name */
    public final long f15221l;
    public volatile C1141h m;

    /* compiled from: Response */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public L f15222a;

        /* renamed from: b  reason: collision with root package name */
        public Protocol f15223b;

        /* renamed from: c  reason: collision with root package name */
        public int f15224c;

        /* renamed from: d  reason: collision with root package name */
        public String f15225d;

        /* renamed from: e  reason: collision with root package name */
        public B f15226e;

        /* renamed from: f  reason: collision with root package name */
        public C.a f15227f;

        /* renamed from: g  reason: collision with root package name */
        public S f15228g;

        /* renamed from: h  reason: collision with root package name */
        public P f15229h;

        /* renamed from: i  reason: collision with root package name */
        public P f15230i;

        /* renamed from: j  reason: collision with root package name */
        public P f15231j;

        /* renamed from: k  reason: collision with root package name */
        public long f15232k;

        /* renamed from: l  reason: collision with root package name */
        public long f15233l;

        public a() {
            this.f15224c = -1;
            this.f15227f = new C.a();
        }

        public a a(L l2) {
            this.f15222a = l2;
            return this;
        }

        public a b(String str, String str2) {
            this.f15227f.c(str, str2);
            return this;
        }

        public a c(P p) {
            if (p != null) {
                a("networkResponse", p);
            }
            this.f15229h = p;
            return this;
        }

        public a d(P p) {
            if (p != null) {
                b(p);
            }
            this.f15231j = p;
            return this;
        }

        public a a(Protocol protocol) {
            this.f15223b = protocol;
            return this;
        }

        public final void b(P p) {
            if (p.f15216g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public a a(int i2) {
            this.f15224c = i2;
            return this;
        }

        public a(P p) {
            this.f15224c = -1;
            this.f15222a = p.f15210a;
            this.f15223b = p.f15211b;
            this.f15224c = p.f15212c;
            this.f15225d = p.f15213d;
            this.f15226e = p.f15214e;
            this.f15227f = p.f15215f.a();
            this.f15228g = p.f15216g;
            this.f15229h = p.f15217h;
            this.f15230i = p.f15218i;
            this.f15231j = p.f15219j;
            this.f15232k = p.f15220k;
            this.f15233l = p.f15221l;
        }

        public a a(String str) {
            this.f15225d = str;
            return this;
        }

        public a b(long j2) {
            this.f15232k = j2;
            return this;
        }

        public a a(B b2) {
            this.f15226e = b2;
            return this;
        }

        public a a(String str, String str2) {
            this.f15227f.a(str, str2);
            return this;
        }

        public a a(C c2) {
            this.f15227f = c2.a();
            return this;
        }

        public a a(S s) {
            this.f15228g = s;
            return this;
        }

        public a a(P p) {
            if (p != null) {
                a("cacheResponse", p);
            }
            this.f15230i = p;
            return this;
        }

        public final void a(String str, P p) {
            if (p.f15216g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            } else if (p.f15217h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            } else if (p.f15218i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            } else if (p.f15219j != null) {
                throw new IllegalArgumentException(str + ".priorResponse != null");
            }
        }

        public a a(long j2) {
            this.f15233l = j2;
            return this;
        }

        public P a() {
            if (this.f15222a == null) {
                throw new IllegalStateException("request == null");
            } else if (this.f15223b == null) {
                throw new IllegalStateException("protocol == null");
            } else if (this.f15224c < 0) {
                throw new IllegalStateException("code < 0: " + this.f15224c);
            } else if (this.f15225d != null) {
                return new P(this);
            } else {
                throw new IllegalStateException("message == null");
            }
        }
    }

    public P(a aVar) {
        this.f15210a = aVar.f15222a;
        this.f15211b = aVar.f15223b;
        this.f15212c = aVar.f15224c;
        this.f15213d = aVar.f15225d;
        this.f15214e = aVar.f15226e;
        this.f15215f = aVar.f15227f.a();
        this.f15216g = aVar.f15228g;
        this.f15217h = aVar.f15229h;
        this.f15218i = aVar.f15230i;
        this.f15219j = aVar.f15231j;
        this.f15220k = aVar.f15232k;
        this.f15221l = aVar.f15233l;
    }

    public P A() {
        return this.f15217h;
    }

    public a B() {
        return new a(this);
    }

    public P C() {
        return this.f15219j;
    }

    public Protocol D() {
        return this.f15211b;
    }

    public long E() {
        return this.f15221l;
    }

    public L F() {
        return this.f15210a;
    }

    public long G() {
        return this.f15220k;
    }

    public String a(String str, String str2) {
        String b2 = this.f15215f.b(str);
        return b2 != null ? b2 : str2;
    }

    public void close() {
        S s = this.f15216g;
        if (s != null) {
            s.close();
            return;
        }
        throw new IllegalStateException("response is not eligible for a body and must not be closed");
    }

    public String e(String str) {
        return a(str, null);
    }

    public S s() {
        return this.f15216g;
    }

    public C1141h t() {
        C1141h hVar = this.m;
        if (hVar != null) {
            return hVar;
        }
        C1141h a2 = C1141h.a(this.f15215f);
        this.m = a2;
        return a2;
    }

    public String toString() {
        return "Response{protocol=" + this.f15211b + ", code=" + this.f15212c + ", message=" + this.f15213d + ", url=" + this.f15210a.g() + '}';
    }

    public P u() {
        return this.f15218i;
    }

    public int v() {
        return this.f15212c;
    }

    public B w() {
        return this.f15214e;
    }

    public C x() {
        return this.f15215f;
    }

    public boolean y() {
        int i2 = this.f15212c;
        return i2 >= 200 && i2 < 300;
    }

    public String z() {
        return this.f15213d;
    }
}
