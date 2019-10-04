package c.e.d;

import c.e.d.b.a.C1007a;
import c.e.d.b.a.C1008b;
import c.e.d.b.a.C1012f;
import c.e.d.b.a.C1014h;
import c.e.d.b.a.C1016j;
import c.e.d.b.a.C1017k;
import c.e.d.b.a.T;
import c.e.d.b.p;
import c.e.d.b.y;
import c.e.d.b.z;
import c.e.d.d.b;
import c.e.d.d.c;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.LongSerializationPolicy;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* compiled from: Gson */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final c.e.d.c.a<?> f11846a = c.e.d.c.a.a(Object.class);

    /* renamed from: b  reason: collision with root package name */
    public final ThreadLocal<Map<c.e.d.c.a<?>, a<?>>> f11847b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<c.e.d.c.a<?>, x<?>> f11848c;

    /* renamed from: d  reason: collision with root package name */
    public final p f11849d;

    /* renamed from: e  reason: collision with root package name */
    public final JsonAdapterAnnotationTypeAdapterFactory f11850e;

    /* renamed from: f  reason: collision with root package name */
    public final List<y> f11851f;

    /* renamed from: g  reason: collision with root package name */
    public final Excluder f11852g;

    /* renamed from: h  reason: collision with root package name */
    public final d f11853h;

    /* renamed from: i  reason: collision with root package name */
    public final Map<Type, l<?>> f11854i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f11855j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f11856k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f11857l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final String q;
    public final int r;
    public final int s;
    public final LongSerializationPolicy t;
    public final List<y> u;
    public final List<y> v;

    /* compiled from: Gson */
    static class a<T> extends x<T> {

        /* renamed from: a  reason: collision with root package name */
        public x<T> f11858a;

        public void a(x<T> xVar) {
            if (this.f11858a == null) {
                this.f11858a = xVar;
                return;
            }
            throw new AssertionError();
        }

        public T a(b bVar) {
            x<T> xVar = this.f11858a;
            if (xVar != null) {
                return xVar.a(bVar);
            }
            throw new IllegalStateException();
        }

        public void a(c cVar, T t) {
            x<T> xVar = this.f11858a;
            if (xVar != null) {
                xVar.a(cVar, t);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public j() {
        this(Excluder.f13528a, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, LongSerializationPolicy.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    public final x<Number> a(boolean z) {
        if (z) {
            return T.v;
        }
        return new e(this);
    }

    public final x<Number> b(boolean z) {
        if (z) {
            return T.u;
        }
        return new f(this);
    }

    public String toString() {
        return "{serializeNulls:" + this.f11855j + ",factories:" + this.f11851f + ",instanceCreators:" + this.f11849d + "}";
    }

    public static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public static x<AtomicLongArray> b(x<Number> xVar) {
        return new i(xVar).a();
    }

    public static x<Number> a(LongSerializationPolicy longSerializationPolicy) {
        if (longSerializationPolicy == LongSerializationPolicy.DEFAULT) {
            return T.t;
        }
        return new g();
    }

    public p b(Object obj) {
        if (obj == null) {
            return q.f11872a;
        }
        return b(obj, obj.getClass());
    }

    public j(Excluder excluder, d dVar, Map<Type, l<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, LongSerializationPolicy longSerializationPolicy, String str, int i2, int i3, List<y> list, List<y> list2, List<y> list3) {
        boolean z8 = z7;
        this.f11847b = new ThreadLocal<>();
        this.f11848c = new ConcurrentHashMap();
        this.f11852g = excluder;
        this.f11853h = dVar;
        this.f11854i = map;
        this.f11849d = new p(map);
        this.f11855j = z;
        this.f11856k = z2;
        this.f11857l = z3;
        this.m = z4;
        this.n = z5;
        this.o = z6;
        this.p = z8;
        this.t = longSerializationPolicy;
        this.q = str;
        this.r = i2;
        this.s = i3;
        this.u = list;
        this.v = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(T.Y);
        arrayList.add(C1014h.f11755a);
        arrayList.add(excluder);
        arrayList.addAll(list3);
        arrayList.add(T.D);
        arrayList.add(T.m);
        arrayList.add(T.f11739g);
        arrayList.add(T.f11741i);
        arrayList.add(T.f11743k);
        x<Number> a2 = a(longSerializationPolicy);
        arrayList.add(T.a(Long.TYPE, Long.class, a2));
        arrayList.add(T.a(Double.TYPE, Double.class, a(z8)));
        arrayList.add(T.a(Float.TYPE, Float.class, b(z8)));
        arrayList.add(T.x);
        arrayList.add(T.o);
        arrayList.add(T.q);
        arrayList.add(T.a(AtomicLong.class, a(a2)));
        arrayList.add(T.a(AtomicLongArray.class, b(a2)));
        arrayList.add(T.s);
        arrayList.add(T.z);
        arrayList.add(T.F);
        arrayList.add(T.H);
        arrayList.add(T.a(BigDecimal.class, T.B));
        arrayList.add(T.a(BigInteger.class, T.C));
        arrayList.add(T.J);
        arrayList.add(T.L);
        arrayList.add(T.P);
        arrayList.add(T.R);
        arrayList.add(T.W);
        arrayList.add(T.N);
        arrayList.add(T.f11736d);
        arrayList.add(C1008b.f11751a);
        arrayList.add(T.U);
        arrayList.add(C1017k.f11766a);
        arrayList.add(C1016j.f11764a);
        arrayList.add(T.S);
        arrayList.add(C1007a.f11747a);
        arrayList.add(T.f11734b);
        arrayList.add(new CollectionTypeAdapterFactory(this.f11849d));
        arrayList.add(new MapTypeAdapterFactory(this.f11849d, z2));
        this.f11850e = new JsonAdapterAnnotationTypeAdapterFactory(this.f11849d);
        arrayList.add(this.f11850e);
        arrayList.add(T.Z);
        arrayList.add(new ReflectiveTypeAdapterFactory(this.f11849d, dVar, excluder, this.f11850e));
        this.f11851f = Collections.unmodifiableList(arrayList);
    }

    public p b(Object obj, Type type) {
        C1012f fVar = new C1012f();
        a(obj, type, (c) fVar);
        return fVar.F();
    }

    public static x<AtomicLong> a(x<Number> xVar) {
        return new h(xVar).a();
    }

    public <T> x<T> a(c.e.d.c.a<T> aVar) {
        x<T> xVar = this.f11848c.get(aVar == null ? f11846a : aVar);
        if (xVar != null) {
            return xVar;
        }
        Map map = this.f11847b.get();
        boolean z = false;
        if (map == null) {
            map = new HashMap();
            this.f11847b.set(map);
            z = true;
        }
        a aVar2 = (a) map.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a aVar3 = new a();
            map.put(aVar, aVar3);
            for (y a2 : this.f11851f) {
                x<T> a3 = a2.a(this, aVar);
                if (a3 != null) {
                    aVar3.a(a3);
                    this.f11848c.put(aVar, a3);
                    return a3;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.5) cannot handle " + aVar);
        } finally {
            map.remove(aVar);
            if (z) {
                this.f11847b.remove();
            }
        }
    }

    public <T> x<T> a(y yVar, c.e.d.c.a<T> aVar) {
        if (!this.f11851f.contains(yVar)) {
            yVar = this.f11850e;
        }
        boolean z = false;
        for (y next : this.f11851f) {
            if (z) {
                x<T> a2 = next.a(this, aVar);
                if (a2 != null) {
                    return a2;
                }
            } else if (next == yVar) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public <T> x<T> a(Class<T> cls) {
        return a(c.e.d.c.a.a(cls));
    }

    public String a(Object obj) {
        if (obj == null) {
            return a((p) q.f11872a);
        }
        return a(obj, (Type) obj.getClass());
    }

    public String a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        a(obj, type, (Appendable) stringWriter);
        return stringWriter.toString();
    }

    public void a(Object obj, Type type, Appendable appendable) {
        try {
            a(obj, type, a(z.a(appendable)));
        } catch (IOException e2) {
            throw new JsonIOException((Throwable) e2);
        }
    }

    public void a(Object obj, Type type, c cVar) {
        x<?> a2 = a(c.e.d.c.a.a(type));
        boolean A = cVar.A();
        cVar.b(true);
        boolean z = cVar.z();
        cVar.a(this.m);
        boolean y = cVar.y();
        cVar.c(this.f11855j);
        try {
            a2.a(cVar, obj);
            cVar.b(A);
            cVar.a(z);
            cVar.c(y);
        } catch (IOException e2) {
            throw new JsonIOException((Throwable) e2);
        } catch (AssertionError e3) {
            throw new AssertionError("AssertionError (GSON 2.8.5): " + e3.getMessage(), e3);
        } catch (Throwable th) {
            cVar.b(A);
            cVar.a(z);
            cVar.c(y);
            throw th;
        }
    }

    public String a(p pVar) {
        StringWriter stringWriter = new StringWriter();
        a(pVar, (Appendable) stringWriter);
        return stringWriter.toString();
    }

    public void a(p pVar, Appendable appendable) {
        try {
            a(pVar, a(z.a(appendable)));
        } catch (IOException e2) {
            throw new JsonIOException((Throwable) e2);
        }
    }

    public c a(Writer writer) {
        if (this.f11857l) {
            writer.write(")]}'\n");
        }
        c cVar = new c(writer);
        if (this.n) {
            cVar.f("  ");
        }
        cVar.c(this.f11855j);
        return cVar;
    }

    public b a(Reader reader) {
        b bVar = new b(reader);
        bVar.b(this.o);
        return bVar;
    }

    public void a(p pVar, c cVar) {
        boolean A = cVar.A();
        cVar.b(true);
        boolean z = cVar.z();
        cVar.a(this.m);
        boolean y = cVar.y();
        cVar.c(this.f11855j);
        try {
            z.a(pVar, cVar);
            cVar.b(A);
            cVar.a(z);
            cVar.c(y);
        } catch (IOException e2) {
            throw new JsonIOException((Throwable) e2);
        } catch (AssertionError e3) {
            throw new AssertionError("AssertionError (GSON 2.8.5): " + e3.getMessage(), e3);
        } catch (Throwable th) {
            cVar.b(A);
            cVar.a(z);
            cVar.c(y);
            throw th;
        }
    }

    public <T> T a(String str, Class<T> cls) {
        return y.a(cls).cast(a(str, (Type) cls));
    }

    public <T> T a(String str, Type type) {
        if (str == null) {
            return null;
        }
        return a((Reader) new StringReader(str), type);
    }

    public <T> T a(Reader reader, Type type) {
        b a2 = a(reader);
        T a3 = a(a2, type);
        a((Object) a3, a2);
        return a3;
    }

    public static void a(Object obj, b bVar) {
        if (obj != null) {
            try {
                if (bVar.K() != JsonToken.END_DOCUMENT) {
                    throw new JsonIOException("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e2) {
                throw new JsonSyntaxException((Throwable) e2);
            } catch (IOException e3) {
                throw new JsonIOException((Throwable) e3);
            }
        }
    }

    public <T> T a(b bVar, Type type) {
        boolean A = bVar.A();
        bVar.b(true);
        try {
            bVar.K();
            T a2 = a(c.e.d.c.a.a(type)).a(bVar);
            bVar.b(A);
            return a2;
        } catch (EOFException e2) {
            if (1 != 0) {
                bVar.b(A);
                return null;
            }
            throw new JsonSyntaxException((Throwable) e2);
        } catch (IllegalStateException e3) {
            throw new JsonSyntaxException((Throwable) e3);
        } catch (IOException e4) {
            throw new JsonSyntaxException((Throwable) e4);
        } catch (AssertionError e5) {
            throw new AssertionError("AssertionError (GSON 2.8.5): " + e5.getMessage(), e5);
        } catch (Throwable th) {
            bVar.b(A);
            throw th;
        }
    }
}
