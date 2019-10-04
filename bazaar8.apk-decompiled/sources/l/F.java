package l;

import j.C1142i;
import j.D;
import j.I;
import j.O;
import j.S;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import l.C1157a;
import l.C1159c;
import l.j;

/* compiled from: Retrofit */
public final class F {

    /* renamed from: a  reason: collision with root package name */
    public final Map<Method, G<?>> f15870a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    public final C1142i.a f15871b;

    /* renamed from: c  reason: collision with root package name */
    public final D f15872c;

    /* renamed from: d  reason: collision with root package name */
    public final List<j.a> f15873d;

    /* renamed from: e  reason: collision with root package name */
    public final List<C1159c.a> f15874e;

    /* renamed from: f  reason: collision with root package name */
    public final Executor f15875f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f15876g;

    /* compiled from: Retrofit */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final A f15877a;

        /* renamed from: b  reason: collision with root package name */
        public C1142i.a f15878b;

        /* renamed from: c  reason: collision with root package name */
        public D f15879c;

        /* renamed from: d  reason: collision with root package name */
        public final List<j.a> f15880d;

        /* renamed from: e  reason: collision with root package name */
        public final List<C1159c.a> f15881e;

        /* renamed from: f  reason: collision with root package name */
        public Executor f15882f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f15883g;

        public a(A a2) {
            this.f15880d = new ArrayList();
            this.f15881e = new ArrayList();
            this.f15877a = a2;
        }

        public a a(I i2) {
            H.a(i2, "client == null");
            a((C1142i.a) i2);
            return this;
        }

        public a a(C1142i.a aVar) {
            H.a(aVar, "factory == null");
            this.f15878b = aVar;
            return this;
        }

        public a a(String str) {
            H.a(str, "baseUrl == null");
            a(D.b(str));
            return this;
        }

        public a() {
            this(A.e());
        }

        public a a(D d2) {
            H.a(d2, "baseUrl == null");
            List<String> j2 = d2.j();
            if ("".equals(j2.get(j2.size() - 1))) {
                this.f15879c = d2;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + d2);
        }

        public a a(j.a aVar) {
            List<j.a> list = this.f15880d;
            H.a(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        public F a() {
            if (this.f15879c != null) {
                C1142i.a aVar = this.f15878b;
                if (aVar == null) {
                    aVar = new I();
                }
                C1142i.a aVar2 = aVar;
                Executor executor = this.f15882f;
                if (executor == null) {
                    executor = this.f15877a.a();
                }
                Executor executor2 = executor;
                ArrayList arrayList = new ArrayList(this.f15881e);
                arrayList.addAll(this.f15877a.a(executor2));
                ArrayList arrayList2 = new ArrayList(this.f15880d.size() + 1 + this.f15877a.c());
                arrayList2.add(new C1157a());
                arrayList2.addAll(this.f15880d);
                arrayList2.addAll(this.f15877a.b());
                F f2 = new F(aVar2, this.f15879c, Collections.unmodifiableList(arrayList2), Collections.unmodifiableList(arrayList), executor2, this.f15883g);
                return f2;
            }
            throw new IllegalStateException("Base URL required.");
        }
    }

    public F(C1142i.a aVar, D d2, List<j.a> list, List<C1159c.a> list2, Executor executor, boolean z) {
        this.f15871b = aVar;
        this.f15872c = d2;
        this.f15873d = list;
        this.f15874e = list2;
        this.f15875f = executor;
        this.f15876g = z;
    }

    public <T> T a(Class<T> cls) {
        H.a(cls);
        if (this.f15876g) {
            b(cls);
        }
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new E(this, cls));
    }

    public final void b(Class<?> cls) {
        A e2 = A.e();
        for (Method method : cls.getDeclaredMethods()) {
            if (!e2.a(method)) {
                a(method);
            }
        }
    }

    public <T> j<T, String> c(Type type, Annotation[] annotationArr) {
        H.a(type, "type == null");
        H.a(annotationArr, "annotations == null");
        int size = this.f15873d.size();
        for (int i2 = 0; i2 < size; i2++) {
            j<?, String> b2 = this.f15873d.get(i2).b(type, annotationArr, this);
            if (b2 != null) {
                return b2;
            }
        }
        return C1157a.d.f15902a;
    }

    public G<?> a(Method method) {
        G<?> g2;
        G<?> g3 = this.f15870a.get(method);
        if (g3 != null) {
            return g3;
        }
        synchronized (this.f15870a) {
            g2 = this.f15870a.get(method);
            if (g2 == null) {
                g2 = G.a(this, method);
                this.f15870a.put(method, g2);
            }
        }
        return g2;
    }

    public <T> j<S, T> b(Type type, Annotation[] annotationArr) {
        return a((j.a) null, type, annotationArr);
    }

    public C1159c<?, ?> a(Type type, Annotation[] annotationArr) {
        return a((C1159c.a) null, type, annotationArr);
    }

    public C1159c<?, ?> a(C1159c.a aVar, Type type, Annotation[] annotationArr) {
        H.a(type, "returnType == null");
        H.a(annotationArr, "annotations == null");
        int indexOf = this.f15874e.indexOf(aVar) + 1;
        int size = this.f15874e.size();
        for (int i2 = indexOf; i2 < size; i2++) {
            C1159c<?, ?> a2 = this.f15874e.get(i2).a(type, annotationArr, this);
            if (a2 != null) {
                return a2;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i3 = 0; i3 < indexOf; i3++) {
                sb.append("\n   * ");
                sb.append(this.f15874e.get(i3).getClass().getName());
            }
            sb.append(10);
        }
        sb.append("  Tried:");
        int size2 = this.f15874e.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f15874e.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> j<T, O> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return a(null, type, annotationArr, annotationArr2);
    }

    public <T> j<T, O> a(j.a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        H.a(type, "type == null");
        H.a(annotationArr, "parameterAnnotations == null");
        H.a(annotationArr2, "methodAnnotations == null");
        int indexOf = this.f15873d.indexOf(aVar) + 1;
        int size = this.f15873d.size();
        for (int i2 = indexOf; i2 < size; i2++) {
            j<?, O> a2 = this.f15873d.get(i2).a(type, annotationArr, annotationArr2, this);
            if (a2 != null) {
                return a2;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i3 = 0; i3 < indexOf; i3++) {
                sb.append("\n   * ");
                sb.append(this.f15873d.get(i3).getClass().getName());
            }
            sb.append(10);
        }
        sb.append("  Tried:");
        int size2 = this.f15873d.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f15873d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> j<S, T> a(j.a aVar, Type type, Annotation[] annotationArr) {
        H.a(type, "type == null");
        H.a(annotationArr, "annotations == null");
        int indexOf = this.f15873d.indexOf(aVar) + 1;
        int size = this.f15873d.size();
        for (int i2 = indexOf; i2 < size; i2++) {
            j<S, ?> a2 = this.f15873d.get(i2).a(type, annotationArr, this);
            if (a2 != null) {
                return a2;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i3 = 0; i3 < indexOf; i3++) {
                sb.append("\n   * ");
                sb.append(this.f15873d.get(i3).getClass().getName());
            }
            sb.append(10);
        }
        sb.append("  Tried:");
        int size2 = this.f15873d.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f15873d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }
}
