package c.e.d.b.a;

import c.e.d.a.c;
import c.e.d.d.b;
import c.e.d.p;
import c.e.d.x;
import c.e.d.y;
import com.google.gson.stream.JsonToken;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* compiled from: TypeAdapters */
public final class T {
    public static final x<String> A = new C1025t();
    public static final x<BigDecimal> B = new u();
    public static final x<BigInteger> C = new v();
    public static final y D = a(String.class, A);
    public static final x<StringBuilder> E = new w();
    public static final y F = a(StringBuilder.class, E);
    public static final x<StringBuffer> G = new y();
    public static final y H = a(StringBuffer.class, G);
    public static final x<URL> I = new z();
    public static final y J = a(URL.class, I);
    public static final x<URI> K = new A();
    public static final y L = a(URI.class, K);
    public static final x<InetAddress> M = new B();
    public static final y N = b(InetAddress.class, M);
    public static final x<UUID> O = new C();
    public static final y P = a(UUID.class, O);
    public static final x<Currency> Q = new D().a();
    public static final y R = a(Currency.class, Q);
    public static final y S = new TypeAdapters$26();
    public static final x<Calendar> T = new F();
    public static final y U = b(Calendar.class, GregorianCalendar.class, T);
    public static final x<Locale> V = new G();
    public static final y W = a(Locale.class, V);
    public static final x<p> X = new H();
    public static final y Y = b(p.class, X);
    public static final y Z = new TypeAdapters$30();

    /* renamed from: a  reason: collision with root package name */
    public static final x<Class> f11733a = new x().a();

    /* renamed from: b  reason: collision with root package name */
    public static final y f11734b = a(Class.class, f11733a);

    /* renamed from: c  reason: collision with root package name */
    public static final x<BitSet> f11735c = new I().a();

    /* renamed from: d  reason: collision with root package name */
    public static final y f11736d = a(BitSet.class, f11735c);

    /* renamed from: e  reason: collision with root package name */
    public static final x<Boolean> f11737e = new L();

    /* renamed from: f  reason: collision with root package name */
    public static final x<Boolean> f11738f = new M();

    /* renamed from: g  reason: collision with root package name */
    public static final y f11739g = a(Boolean.TYPE, Boolean.class, f11737e);

    /* renamed from: h  reason: collision with root package name */
    public static final x<Number> f11740h = new N();

    /* renamed from: i  reason: collision with root package name */
    public static final y f11741i = a(Byte.TYPE, Byte.class, f11740h);

    /* renamed from: j  reason: collision with root package name */
    public static final x<Number> f11742j = new O();

    /* renamed from: k  reason: collision with root package name */
    public static final y f11743k = a(Short.TYPE, Short.class, f11742j);

    /* renamed from: l  reason: collision with root package name */
    public static final x<Number> f11744l = new P();
    public static final y m = a(Integer.TYPE, Integer.class, f11744l);
    public static final x<AtomicInteger> n = new Q().a();
    public static final y o = a(AtomicInteger.class, n);
    public static final x<AtomicBoolean> p = new S().a();
    public static final y q = a(AtomicBoolean.class, p);
    public static final x<AtomicIntegerArray> r = new C1020n().a();
    public static final y s = a(AtomicIntegerArray.class, r);
    public static final x<Number> t = new C1021o();
    public static final x<Number> u = new C1022p();
    public static final x<Number> v = new C1023q();
    public static final x<Number> w = new r();
    public static final y x = a(Number.class, w);
    public static final x<Character> y = new C1024s();
    public static final y z = a(Character.TYPE, Character.class, y);

    /* compiled from: TypeAdapters */
    private static final class a<T extends Enum<T>> extends x<T> {

        /* renamed from: a  reason: collision with root package name */
        public final Map<String, T> f11745a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        public final Map<T, String> f11746b = new HashMap();

        public a(Class<T> cls) {
            try {
                for (Enum enumR : (Enum[]) cls.getEnumConstants()) {
                    String name = enumR.name();
                    c cVar = (c) cls.getField(name).getAnnotation(c.class);
                    if (cVar != null) {
                        name = cVar.value();
                        for (String put : cVar.alternate()) {
                            this.f11745a.put(put, enumR);
                        }
                    }
                    this.f11745a.put(name, enumR);
                    this.f11746b.put(enumR, name);
                }
            } catch (NoSuchFieldException e2) {
                throw new AssertionError(e2);
            }
        }

        public T a(b bVar) {
            if (bVar.K() != JsonToken.NULL) {
                return (Enum) this.f11745a.get(bVar.I());
            }
            bVar.H();
            return null;
        }

        public void a(c.e.d.d.c cVar, T t) {
            cVar.h(t == null ? null : this.f11746b.get(t));
        }
    }

    public static <TT> y a(Class<TT> cls, x<TT> xVar) {
        return new TypeAdapters$32(cls, xVar);
    }

    public static <TT> y b(Class<TT> cls, Class<? extends TT> cls2, x<? super TT> xVar) {
        return new TypeAdapters$34(cls, cls2, xVar);
    }

    public static <TT> y a(Class<TT> cls, Class<TT> cls2, x<? super TT> xVar) {
        return new TypeAdapters$33(cls, cls2, xVar);
    }

    public static <T1> y b(Class<T1> cls, x<T1> xVar) {
        return new TypeAdapters$35(cls, xVar);
    }
}
