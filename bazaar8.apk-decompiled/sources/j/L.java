package j;

import j.C;
import j.a.c.g;
import j.a.e;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Request */
public final class L {

    /* renamed from: a  reason: collision with root package name */
    public final D f15193a;

    /* renamed from: b  reason: collision with root package name */
    public final String f15194b;

    /* renamed from: c  reason: collision with root package name */
    public final C f15195c;

    /* renamed from: d  reason: collision with root package name */
    public final O f15196d;

    /* renamed from: e  reason: collision with root package name */
    public final Map<Class<?>, Object> f15197e;

    /* renamed from: f  reason: collision with root package name */
    public volatile C1141h f15198f;

    /* compiled from: Request */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public D f15199a;

        /* renamed from: b  reason: collision with root package name */
        public String f15200b;

        /* renamed from: c  reason: collision with root package name */
        public C.a f15201c;

        /* renamed from: d  reason: collision with root package name */
        public O f15202d;

        /* renamed from: e  reason: collision with root package name */
        public Map<Class<?>, Object> f15203e;

        public a() {
            this.f15203e = Collections.emptyMap();
            this.f15200b = "GET";
            this.f15201c = new C.a();
        }

        public a a(D d2) {
            if (d2 != null) {
                this.f15199a = d2;
                return this;
            }
            throw new NullPointerException("url == null");
        }

        public a b(String str) {
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    str = "http:" + str.substring(3);
                } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    str = "https:" + str.substring(4);
                }
                a(D.b(str));
                return this;
            }
            throw new NullPointerException("url == null");
        }

        public a a(String str, String str2) {
            this.f15201c.a(str, str2);
            return this;
        }

        public a a(String str) {
            this.f15201c.d(str);
            return this;
        }

        public a(L l2) {
            Map<Class<?>, Object> map;
            this.f15203e = Collections.emptyMap();
            this.f15199a = l2.f15193a;
            this.f15200b = l2.f15194b;
            this.f15202d = l2.f15196d;
            if (l2.f15197e.isEmpty()) {
                map = Collections.emptyMap();
            } else {
                map = new LinkedHashMap<>(l2.f15197e);
            }
            this.f15203e = map;
            this.f15201c = l2.f15195c.a();
        }

        public a a(C c2) {
            this.f15201c = c2.a();
            return this;
        }

        public a a(C1141h hVar) {
            String hVar2 = hVar.toString();
            if (hVar2.isEmpty()) {
                a("Cache-Control");
                return this;
            }
            b("Cache-Control", hVar2);
            return this;
        }

        public a b(String str, String str2) {
            this.f15201c.c(str, str2);
            return this;
        }

        public a a(String str, O o) {
            if (str == null) {
                throw new NullPointerException("method == null");
            } else if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            } else if (o != null && !g.b(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            } else if (o != null || !g.e(str)) {
                this.f15200b = str;
                this.f15202d = o;
                return this;
            } else {
                throw new IllegalArgumentException("method " + str + " must have a request body.");
            }
        }

        public <T> a a(Class<? super T> cls, T t) {
            if (cls != null) {
                if (t == null) {
                    this.f15203e.remove(cls);
                } else {
                    if (this.f15203e.isEmpty()) {
                        this.f15203e = new LinkedHashMap();
                    }
                    this.f15203e.put(cls, cls.cast(t));
                }
                return this;
            }
            throw new NullPointerException("type == null");
        }

        public L a() {
            if (this.f15199a != null) {
                return new L(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    public L(a aVar) {
        this.f15193a = aVar.f15199a;
        this.f15194b = aVar.f15200b;
        this.f15195c = aVar.f15201c.a();
        this.f15196d = aVar.f15202d;
        this.f15197e = e.a(aVar.f15203e);
    }

    public String a(String str) {
        return this.f15195c.b(str);
    }

    public List<String> b(String str) {
        return this.f15195c.c(str);
    }

    public C c() {
        return this.f15195c;
    }

    public boolean d() {
        return this.f15193a.h();
    }

    public String e() {
        return this.f15194b;
    }

    public a f() {
        return new a(this);
    }

    public D g() {
        return this.f15193a;
    }

    public String toString() {
        return "Request{method=" + this.f15194b + ", url=" + this.f15193a + ", tags=" + this.f15197e + '}';
    }

    public O a() {
        return this.f15196d;
    }

    public C1141h b() {
        C1141h hVar = this.f15198f;
        if (hVar != null) {
            return hVar;
        }
        C1141h a2 = C1141h.a(this.f15195c);
        this.f15198f = a2;
        return a2;
    }
}
