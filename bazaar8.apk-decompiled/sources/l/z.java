package l;

import j.C;
import j.G;
import j.O;
import java.io.IOException;
import java.util.Map;

/* compiled from: ParameterHandler */
public abstract class z<T> {

    /* compiled from: ParameterHandler */
    static final class a<T> extends z<T> {

        /* renamed from: a  reason: collision with root package name */
        public final j<T, O> f15955a;

        public a(j<T, O> jVar) {
            this.f15955a = jVar;
        }

        public void a(B b2, T t) {
            if (t != null) {
                try {
                    b2.a(this.f15955a.a(t));
                } catch (IOException e2) {
                    throw new RuntimeException("Unable to convert " + t + " to RequestBody", e2);
                }
            } else {
                throw new IllegalArgumentException("Body parameter value must not be null.");
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class b<T> extends z<T> {

        /* renamed from: a  reason: collision with root package name */
        public final String f15956a;

        /* renamed from: b  reason: collision with root package name */
        public final j<T, String> f15957b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f15958c;

        public b(String str, j<T, String> jVar, boolean z) {
            H.a(str, "name == null");
            this.f15956a = str;
            this.f15957b = jVar;
            this.f15958c = z;
        }

        public void a(B b2, T t) {
            if (t != null) {
                String a2 = this.f15957b.a(t);
                if (a2 != null) {
                    b2.a(this.f15956a, a2, this.f15958c);
                }
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class c<T> extends z<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        public final j<T, String> f15959a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f15960b;

        public c(j<T, String> jVar, boolean z) {
            this.f15959a = jVar;
            this.f15960b = z;
        }

        public void a(B b2, Map<String, T> map) {
            if (map != null) {
                for (Map.Entry next : map.entrySet()) {
                    String str = (String) next.getKey();
                    if (str != null) {
                        Object value = next.getValue();
                        if (value != null) {
                            String a2 = this.f15959a.a(value);
                            if (a2 != null) {
                                b2.a(str, a2, this.f15960b);
                            } else {
                                throw new IllegalArgumentException("Field map value '" + value + "' converted to null by " + this.f15959a.getClass().getName() + " for key '" + str + "'.");
                            }
                        } else {
                            throw new IllegalArgumentException("Field map contained null value for key '" + str + "'.");
                        }
                    } else {
                        throw new IllegalArgumentException("Field map contained null key.");
                    }
                }
                return;
            }
            throw new IllegalArgumentException("Field map was null.");
        }
    }

    /* compiled from: ParameterHandler */
    static final class d<T> extends z<T> {

        /* renamed from: a  reason: collision with root package name */
        public final String f15961a;

        /* renamed from: b  reason: collision with root package name */
        public final j<T, String> f15962b;

        public d(String str, j<T, String> jVar) {
            H.a(str, "name == null");
            this.f15961a = str;
            this.f15962b = jVar;
        }

        public void a(B b2, T t) {
            if (t != null) {
                String a2 = this.f15962b.a(t);
                if (a2 != null) {
                    b2.a(this.f15961a, a2);
                }
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class e<T> extends z<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        public final j<T, String> f15963a;

        public e(j<T, String> jVar) {
            this.f15963a = jVar;
        }

        public void a(B b2, Map<String, T> map) {
            if (map != null) {
                for (Map.Entry next : map.entrySet()) {
                    String str = (String) next.getKey();
                    if (str != null) {
                        Object value = next.getValue();
                        if (value != null) {
                            b2.a(str, this.f15963a.a(value));
                        } else {
                            throw new IllegalArgumentException("Header map contained null value for key '" + str + "'.");
                        }
                    } else {
                        throw new IllegalArgumentException("Header map contained null key.");
                    }
                }
                return;
            }
            throw new IllegalArgumentException("Header map was null.");
        }
    }

    /* compiled from: ParameterHandler */
    static final class f<T> extends z<T> {

        /* renamed from: a  reason: collision with root package name */
        public final C f15964a;

        /* renamed from: b  reason: collision with root package name */
        public final j<T, O> f15965b;

        public f(C c2, j<T, O> jVar) {
            this.f15964a = c2;
            this.f15965b = jVar;
        }

        public void a(B b2, T t) {
            if (t != null) {
                try {
                    b2.a(this.f15964a, this.f15965b.a(t));
                } catch (IOException e2) {
                    throw new RuntimeException("Unable to convert " + t + " to RequestBody", e2);
                }
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class g<T> extends z<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        public final j<T, O> f15966a;

        /* renamed from: b  reason: collision with root package name */
        public final String f15967b;

        public g(j<T, O> jVar, String str) {
            this.f15966a = jVar;
            this.f15967b = str;
        }

        public void a(B b2, Map<String, T> map) {
            if (map != null) {
                for (Map.Entry next : map.entrySet()) {
                    String str = (String) next.getKey();
                    if (str != null) {
                        Object value = next.getValue();
                        if (value != null) {
                            b2.a(C.a("Content-Disposition", "form-data; name=\"" + str + "\"", "Content-Transfer-Encoding", this.f15967b), this.f15966a.a(value));
                        } else {
                            throw new IllegalArgumentException("Part map contained null value for key '" + str + "'.");
                        }
                    } else {
                        throw new IllegalArgumentException("Part map contained null key.");
                    }
                }
                return;
            }
            throw new IllegalArgumentException("Part map was null.");
        }
    }

    /* compiled from: ParameterHandler */
    static final class h<T> extends z<T> {

        /* renamed from: a  reason: collision with root package name */
        public final String f15968a;

        /* renamed from: b  reason: collision with root package name */
        public final j<T, String> f15969b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f15970c;

        public h(String str, j<T, String> jVar, boolean z) {
            H.a(str, "name == null");
            this.f15968a = str;
            this.f15969b = jVar;
            this.f15970c = z;
        }

        public void a(B b2, T t) {
            if (t != null) {
                b2.b(this.f15968a, this.f15969b.a(t), this.f15970c);
                return;
            }
            throw new IllegalArgumentException("Path parameter \"" + this.f15968a + "\" value must not be null.");
        }
    }

    /* compiled from: ParameterHandler */
    static final class i<T> extends z<T> {

        /* renamed from: a  reason: collision with root package name */
        public final String f15971a;

        /* renamed from: b  reason: collision with root package name */
        public final j<T, String> f15972b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f15973c;

        public i(String str, j<T, String> jVar, boolean z) {
            H.a(str, "name == null");
            this.f15971a = str;
            this.f15972b = jVar;
            this.f15973c = z;
        }

        public void a(B b2, T t) {
            if (t != null) {
                String a2 = this.f15972b.a(t);
                if (a2 != null) {
                    b2.c(this.f15971a, a2, this.f15973c);
                }
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class j<T> extends z<Map<String, T>> {

        /* renamed from: a  reason: collision with root package name */
        public final j<T, String> f15974a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f15975b;

        public j(j<T, String> jVar, boolean z) {
            this.f15974a = jVar;
            this.f15975b = z;
        }

        public void a(B b2, Map<String, T> map) {
            if (map != null) {
                for (Map.Entry next : map.entrySet()) {
                    String str = (String) next.getKey();
                    if (str != null) {
                        Object value = next.getValue();
                        if (value != null) {
                            String a2 = this.f15974a.a(value);
                            if (a2 != null) {
                                b2.c(str, a2, this.f15975b);
                            } else {
                                throw new IllegalArgumentException("Query map value '" + value + "' converted to null by " + this.f15974a.getClass().getName() + " for key '" + str + "'.");
                            }
                        } else {
                            throw new IllegalArgumentException("Query map contained null value for key '" + str + "'.");
                        }
                    } else {
                        throw new IllegalArgumentException("Query map contained null key.");
                    }
                }
                return;
            }
            throw new IllegalArgumentException("Query map was null.");
        }
    }

    /* compiled from: ParameterHandler */
    static final class k<T> extends z<T> {

        /* renamed from: a  reason: collision with root package name */
        public final j<T, String> f15976a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f15977b;

        public k(j<T, String> jVar, boolean z) {
            this.f15976a = jVar;
            this.f15977b = z;
        }

        public void a(B b2, T t) {
            if (t != null) {
                b2.c(this.f15976a.a(t), null, this.f15977b);
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class l extends z<G.b> {

        /* renamed from: a  reason: collision with root package name */
        public static final l f15978a = new l();

        public void a(B b2, G.b bVar) {
            if (bVar != null) {
                b2.a(bVar);
            }
        }
    }

    /* compiled from: ParameterHandler */
    static final class m extends z<Object> {
        public void a(B b2, Object obj) {
            H.a(obj, "@Url parameter is null.");
            b2.a(obj);
        }
    }

    public final z<Object> a() {
        return new y(this);
    }

    public abstract void a(B b2, T t);

    public final z<Iterable<T>> b() {
        return new x(this);
    }
}
