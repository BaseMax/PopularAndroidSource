package l;

import j.C;
import j.D;
import j.F;
import j.G;
import j.L;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import l.b.b;
import l.b.c;
import l.b.d;
import l.b.e;
import l.b.f;
import l.b.g;
import l.b.h;
import l.b.i;
import l.b.j;
import l.b.k;
import l.b.l;
import l.b.m;
import l.b.n;
import l.b.o;
import l.b.p;
import l.b.q;
import l.b.r;
import l.b.s;
import l.b.t;
import l.b.v;
import l.z;

/* compiled from: RequestFactory */
public final class C {

    /* renamed from: a  reason: collision with root package name */
    public final Method f15841a;

    /* renamed from: b  reason: collision with root package name */
    public final D f15842b;

    /* renamed from: c  reason: collision with root package name */
    public final String f15843c;

    /* renamed from: d  reason: collision with root package name */
    public final String f15844d;

    /* renamed from: e  reason: collision with root package name */
    public final j.C f15845e;

    /* renamed from: f  reason: collision with root package name */
    public final F f15846f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f15847g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f15848h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f15849i;

    /* renamed from: j  reason: collision with root package name */
    public final z<?>[] f15850j;

    /* compiled from: RequestFactory */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final Pattern f15851a = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

        /* renamed from: b  reason: collision with root package name */
        public static final Pattern f15852b = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

        /* renamed from: c  reason: collision with root package name */
        public final F f15853c;

        /* renamed from: d  reason: collision with root package name */
        public final Method f15854d;

        /* renamed from: e  reason: collision with root package name */
        public final Annotation[] f15855e;

        /* renamed from: f  reason: collision with root package name */
        public final Annotation[][] f15856f;

        /* renamed from: g  reason: collision with root package name */
        public final Type[] f15857g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f15858h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f15859i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f15860j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f15861k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f15862l;
        public boolean m;
        public boolean n;
        public boolean o;
        public String p;
        public boolean q;
        public boolean r;
        public boolean s;
        public String t;
        public j.C u;
        public F v;
        public Set<String> w;
        public z<?>[] x;

        public a(F f2, Method method) {
            this.f15853c = f2;
            this.f15854d = method;
            this.f15855e = method.getAnnotations();
            this.f15857g = method.getGenericParameterTypes();
            this.f15856f = method.getParameterAnnotations();
        }

        public C a() {
            for (Annotation a2 : this.f15855e) {
                a(a2);
            }
            if (this.p != null) {
                if (!this.q) {
                    if (this.s) {
                        throw H.a(this.f15854d, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    } else if (this.r) {
                        throw H.a(this.f15854d, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                }
                int length = this.f15856f.length;
                this.x = new z[length];
                for (int i2 = 0; i2 < length; i2++) {
                    this.x[i2] = a(i2, this.f15857g[i2], this.f15856f[i2]);
                }
                if (this.t == null && !this.o) {
                    throw H.a(this.f15854d, "Missing either @%s URL or @Url parameter.", this.p);
                } else if (!this.r && !this.s && !this.q && this.f15860j) {
                    throw H.a(this.f15854d, "Non-body HTTP method cannot contain @Body.", new Object[0]);
                } else if (this.r && !this.f15858h) {
                    throw H.a(this.f15854d, "Form-encoded method must contain at least one @Field.", new Object[0]);
                } else if (!this.s || this.f15859i) {
                    return new C(this);
                } else {
                    throw H.a(this.f15854d, "Multipart method must contain at least one @Part.", new Object[0]);
                }
            } else {
                throw H.a(this.f15854d, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
            }
        }

        public final void a(Annotation annotation) {
            if (annotation instanceof b) {
                a("DELETE", ((b) annotation).value(), false);
            } else if (annotation instanceof e) {
                a("GET", ((e) annotation).value(), false);
            } else if (annotation instanceof f) {
                a("HEAD", ((f) annotation).value(), false);
            } else if (annotation instanceof l) {
                a("PATCH", ((l) annotation).value(), true);
            } else if (annotation instanceof m) {
                a("POST", ((m) annotation).value(), true);
            } else if (annotation instanceof n) {
                a("PUT", ((n) annotation).value(), true);
            } else if (annotation instanceof k) {
                a("OPTIONS", ((k) annotation).value(), false);
            } else if (annotation instanceof g) {
                g gVar = (g) annotation;
                a(gVar.method(), gVar.path(), gVar.hasBody());
            } else if (annotation instanceof j) {
                String[] value = ((j) annotation).value();
                if (value.length != 0) {
                    this.u = a(value);
                    return;
                }
                throw H.a(this.f15854d, "@Headers annotation is empty.", new Object[0]);
            }
        }

        public final void a(String str, String str2, boolean z) {
            String str3 = this.p;
            if (str3 == null) {
                this.p = str;
                this.q = z;
                if (!str2.isEmpty()) {
                    int indexOf = str2.indexOf(63);
                    if (indexOf != -1 && indexOf < str2.length() - 1) {
                        String substring = str2.substring(indexOf + 1);
                        if (f15851a.matcher(substring).find()) {
                            throw H.a(this.f15854d, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
                        }
                    }
                    this.t = str2;
                    this.w = a(str2);
                    return;
                }
                return;
            }
            throw H.a(this.f15854d, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
        }

        public final j.C a(String[] strArr) {
            C.a aVar = new C.a();
            for (String str : strArr) {
                int indexOf = str.indexOf(58);
                if (indexOf == -1 || indexOf == 0 || indexOf == str.length() - 1) {
                    throw H.a(this.f15854d, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String substring = str.substring(0, indexOf);
                String trim = str.substring(indexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(substring)) {
                    try {
                        this.v = F.a(trim);
                    } catch (IllegalArgumentException e2) {
                        throw H.a(this.f15854d, (Throwable) e2, "Malformed content type: %s", trim);
                    }
                } else {
                    aVar.a(substring, trim);
                }
            }
            return aVar.a();
        }

        public final z<?> a(int i2, Type type, Annotation[] annotationArr) {
            z<?> zVar = null;
            if (annotationArr != null) {
                z<?> zVar2 = null;
                for (Annotation a2 : annotationArr) {
                    z<?> a3 = a(i2, type, annotationArr, a2);
                    if (a3 != null) {
                        if (zVar2 == null) {
                            zVar2 = a3;
                        } else {
                            throw H.a(this.f15854d, i2, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                        }
                    }
                }
                zVar = zVar2;
            }
            if (zVar != null) {
                return zVar;
            }
            throw H.a(this.f15854d, i2, "No Retrofit annotation found.", new Object[0]);
        }

        public final z<?> a(int i2, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof v) {
                a(i2, type);
                if (this.o) {
                    throw H.a(this.f15854d, i2, "Multiple @Url method annotations found.", new Object[0]);
                } else if (this.f15861k) {
                    throw H.a(this.f15854d, i2, "@Path parameters may not be used with @Url.", new Object[0]);
                } else if (this.f15862l) {
                    throw H.a(this.f15854d, i2, "A @Url parameter must not come after a @Query.", new Object[0]);
                } else if (this.m) {
                    throw H.a(this.f15854d, i2, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                } else if (this.n) {
                    throw H.a(this.f15854d, i2, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                } else if (this.t == null) {
                    this.o = true;
                    if (type == D.class || type == String.class || type == URI.class || ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName()))) {
                        return new z.m();
                    }
                    throw H.a(this.f15854d, i2, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                } else {
                    throw H.a(this.f15854d, i2, "@Url cannot be used with @%s URL", this.p);
                }
            } else if (annotation instanceof q) {
                a(i2, type);
                if (this.f15862l) {
                    throw H.a(this.f15854d, i2, "A @Path parameter must not come after a @Query.", new Object[0]);
                } else if (this.m) {
                    throw H.a(this.f15854d, i2, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                } else if (this.n) {
                    throw H.a(this.f15854d, i2, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                } else if (this.o) {
                    throw H.a(this.f15854d, i2, "@Path parameters may not be used with @Url.", new Object[0]);
                } else if (this.t != null) {
                    this.f15861k = true;
                    q qVar = (q) annotation;
                    String value = qVar.value();
                    a(i2, value);
                    return new z.h(value, this.f15853c.c(type, annotationArr), qVar.encoded());
                } else {
                    throw H.a(this.f15854d, i2, "@Path can only be used with relative url on @%s", this.p);
                }
            } else if (annotation instanceof r) {
                a(i2, type);
                r rVar = (r) annotation;
                String value2 = rVar.value();
                boolean encoded = rVar.encoded();
                Class<?> c2 = H.c(type);
                this.f15862l = true;
                if (Iterable.class.isAssignableFrom(c2)) {
                    if (type instanceof ParameterizedType) {
                        return new z.i(value2, this.f15853c.c(H.a(0, (ParameterizedType) type), annotationArr), encoded).b();
                    }
                    Method method = this.f15854d;
                    throw H.a(method, i2, c2.getSimpleName() + " must include generic type (e.g., " + c2.getSimpleName() + "<String>)", new Object[0]);
                } else if (!c2.isArray()) {
                    return new z.i(value2, this.f15853c.c(type, annotationArr), encoded);
                } else {
                    return new z.i(value2, this.f15853c.c(a(c2.getComponentType()), annotationArr), encoded).a();
                }
            } else if (annotation instanceof t) {
                a(i2, type);
                boolean encoded2 = ((t) annotation).encoded();
                Class<?> c3 = H.c(type);
                this.m = true;
                if (Iterable.class.isAssignableFrom(c3)) {
                    if (type instanceof ParameterizedType) {
                        return new z.k(this.f15853c.c(H.a(0, (ParameterizedType) type), annotationArr), encoded2).b();
                    }
                    Method method2 = this.f15854d;
                    throw H.a(method2, i2, c3.getSimpleName() + " must include generic type (e.g., " + c3.getSimpleName() + "<String>)", new Object[0]);
                } else if (!c3.isArray()) {
                    return new z.k(this.f15853c.c(type, annotationArr), encoded2);
                } else {
                    return new z.k(this.f15853c.c(a(c3.getComponentType()), annotationArr), encoded2).a();
                }
            } else if (annotation instanceof s) {
                a(i2, type);
                Class<?> c4 = H.c(type);
                this.n = true;
                if (Map.class.isAssignableFrom(c4)) {
                    Type b2 = H.b(type, c4, Map.class);
                    if (b2 instanceof ParameterizedType) {
                        ParameterizedType parameterizedType = (ParameterizedType) b2;
                        Type a2 = H.a(0, parameterizedType);
                        if (String.class == a2) {
                            return new z.j(this.f15853c.c(H.a(1, parameterizedType), annotationArr), ((s) annotation).encoded());
                        }
                        Method method3 = this.f15854d;
                        throw H.a(method3, i2, "@QueryMap keys must be of type String: " + a2, new Object[0]);
                    }
                    throw H.a(this.f15854d, i2, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                throw H.a(this.f15854d, i2, "@QueryMap parameter type must be Map.", new Object[0]);
            } else if (annotation instanceof h) {
                a(i2, type);
                String value3 = ((h) annotation).value();
                Class<?> c5 = H.c(type);
                if (Iterable.class.isAssignableFrom(c5)) {
                    if (type instanceof ParameterizedType) {
                        return new z.d(value3, this.f15853c.c(H.a(0, (ParameterizedType) type), annotationArr)).b();
                    }
                    Method method4 = this.f15854d;
                    throw H.a(method4, i2, c5.getSimpleName() + " must include generic type (e.g., " + c5.getSimpleName() + "<String>)", new Object[0]);
                } else if (!c5.isArray()) {
                    return new z.d(value3, this.f15853c.c(type, annotationArr));
                } else {
                    return new z.d(value3, this.f15853c.c(a(c5.getComponentType()), annotationArr)).a();
                }
            } else if (annotation instanceof i) {
                a(i2, type);
                Class<?> c6 = H.c(type);
                if (Map.class.isAssignableFrom(c6)) {
                    Type b3 = H.b(type, c6, Map.class);
                    if (b3 instanceof ParameterizedType) {
                        ParameterizedType parameterizedType2 = (ParameterizedType) b3;
                        Type a3 = H.a(0, parameterizedType2);
                        if (String.class == a3) {
                            return new z.e(this.f15853c.c(H.a(1, parameterizedType2), annotationArr));
                        }
                        Method method5 = this.f15854d;
                        throw H.a(method5, i2, "@HeaderMap keys must be of type String: " + a3, new Object[0]);
                    }
                    throw H.a(this.f15854d, i2, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                throw H.a(this.f15854d, i2, "@HeaderMap parameter type must be Map.", new Object[0]);
            } else if (annotation instanceof c) {
                a(i2, type);
                if (this.r) {
                    c cVar = (c) annotation;
                    String value4 = cVar.value();
                    boolean encoded3 = cVar.encoded();
                    this.f15858h = true;
                    Class<?> c7 = H.c(type);
                    if (Iterable.class.isAssignableFrom(c7)) {
                        if (type instanceof ParameterizedType) {
                            return new z.b(value4, this.f15853c.c(H.a(0, (ParameterizedType) type), annotationArr), encoded3).b();
                        }
                        Method method6 = this.f15854d;
                        throw H.a(method6, i2, c7.getSimpleName() + " must include generic type (e.g., " + c7.getSimpleName() + "<String>)", new Object[0]);
                    } else if (!c7.isArray()) {
                        return new z.b(value4, this.f15853c.c(type, annotationArr), encoded3);
                    } else {
                        return new z.b(value4, this.f15853c.c(a(c7.getComponentType()), annotationArr), encoded3).a();
                    }
                } else {
                    throw H.a(this.f15854d, i2, "@Field parameters can only be used with form encoding.", new Object[0]);
                }
            } else if (annotation instanceof d) {
                a(i2, type);
                if (this.r) {
                    Class<?> c8 = H.c(type);
                    if (Map.class.isAssignableFrom(c8)) {
                        Type b4 = H.b(type, c8, Map.class);
                        if (b4 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType3 = (ParameterizedType) b4;
                            Type a4 = H.a(0, parameterizedType3);
                            if (String.class == a4) {
                                j c9 = this.f15853c.c(H.a(1, parameterizedType3), annotationArr);
                                this.f15858h = true;
                                return new z.c(c9, ((d) annotation).encoded());
                            }
                            Method method7 = this.f15854d;
                            throw H.a(method7, i2, "@FieldMap keys must be of type String: " + a4, new Object[0]);
                        }
                        throw H.a(this.f15854d, i2, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw H.a(this.f15854d, i2, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                throw H.a(this.f15854d, i2, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
            } else if (annotation instanceof o) {
                a(i2, type);
                if (this.s) {
                    o oVar = (o) annotation;
                    this.f15859i = true;
                    String value5 = oVar.value();
                    Class<?> c10 = H.c(type);
                    if (!value5.isEmpty()) {
                        j.C a5 = j.C.a("Content-Disposition", "form-data; name=\"" + value5 + "\"", "Content-Transfer-Encoding", oVar.encoding());
                        if (Iterable.class.isAssignableFrom(c10)) {
                            if (type instanceof ParameterizedType) {
                                Type a6 = H.a(0, (ParameterizedType) type);
                                if (!G.b.class.isAssignableFrom(H.c(a6))) {
                                    return new z.f(a5, this.f15853c.a(a6, annotationArr, this.f15855e)).b();
                                }
                                throw H.a(this.f15854d, i2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                            }
                            Method method8 = this.f15854d;
                            throw H.a(method8, i2, c10.getSimpleName() + " must include generic type (e.g., " + c10.getSimpleName() + "<String>)", new Object[0]);
                        } else if (c10.isArray()) {
                            Class<?> a7 = a(c10.getComponentType());
                            if (!G.b.class.isAssignableFrom(a7)) {
                                return new z.f(a5, this.f15853c.a((Type) a7, annotationArr, this.f15855e)).a();
                            }
                            throw H.a(this.f15854d, i2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        } else if (!G.b.class.isAssignableFrom(c10)) {
                            return new z.f(a5, this.f15853c.a(type, annotationArr, this.f15855e));
                        } else {
                            throw H.a(this.f15854d, i2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        }
                    } else if (Iterable.class.isAssignableFrom(c10)) {
                        if (!(type instanceof ParameterizedType)) {
                            Method method9 = this.f15854d;
                            throw H.a(method9, i2, c10.getSimpleName() + " must include generic type (e.g., " + c10.getSimpleName() + "<String>)", new Object[0]);
                        } else if (G.b.class.isAssignableFrom(H.c(H.a(0, (ParameterizedType) type)))) {
                            return z.l.f15978a.b();
                        } else {
                            throw H.a(this.f15854d, i2, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        }
                    } else if (c10.isArray()) {
                        if (G.b.class.isAssignableFrom(c10.getComponentType())) {
                            return z.l.f15978a.a();
                        }
                        throw H.a(this.f15854d, i2, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    } else if (G.b.class.isAssignableFrom(c10)) {
                        return z.l.f15978a;
                    } else {
                        throw H.a(this.f15854d, i2, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                } else {
                    throw H.a(this.f15854d, i2, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                }
            } else if (annotation instanceof p) {
                a(i2, type);
                if (this.s) {
                    this.f15859i = true;
                    Class<?> c11 = H.c(type);
                    if (Map.class.isAssignableFrom(c11)) {
                        Type b5 = H.b(type, c11, Map.class);
                        if (b5 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType4 = (ParameterizedType) b5;
                            Type a8 = H.a(0, parameterizedType4);
                            if (String.class == a8) {
                                Type a9 = H.a(1, parameterizedType4);
                                if (!G.b.class.isAssignableFrom(H.c(a9))) {
                                    return new z.g(this.f15853c.a(a9, annotationArr, this.f15855e), ((p) annotation).encoding());
                                }
                                throw H.a(this.f15854d, i2, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                            }
                            Method method10 = this.f15854d;
                            throw H.a(method10, i2, "@PartMap keys must be of type String: " + a8, new Object[0]);
                        }
                        throw H.a(this.f15854d, i2, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw H.a(this.f15854d, i2, "@PartMap parameter type must be Map.", new Object[0]);
                }
                throw H.a(this.f15854d, i2, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
            } else if (!(annotation instanceof l.b.a)) {
                return null;
            } else {
                a(i2, type);
                if (this.r || this.s) {
                    throw H.a(this.f15854d, i2, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                } else if (!this.f15860j) {
                    try {
                        j a10 = this.f15853c.a(type, annotationArr, this.f15855e);
                        this.f15860j = true;
                        return new z.a(a10);
                    } catch (RuntimeException e2) {
                        throw H.a(this.f15854d, e2, i2, "Unable to create @Body converter for %s", type);
                    }
                } else {
                    throw H.a(this.f15854d, i2, "Multiple @Body method annotations found.", new Object[0]);
                }
            }
        }

        public final void a(int i2, Type type) {
            if (H.d(type)) {
                throw H.a(this.f15854d, i2, "Parameter type must not include a type variable or wildcard: %s", type);
            }
        }

        public final void a(int i2, String str) {
            if (!f15852b.matcher(str).matches()) {
                throw H.a(this.f15854d, i2, "@Path parameter name must match %s. Found: %s", f15851a.pattern(), str);
            } else if (!this.w.contains(str)) {
                throw H.a(this.f15854d, i2, "URL \"%s\" does not contain \"{%s}\".", this.t, str);
            }
        }

        public static Set<String> a(String str) {
            Matcher matcher = f15851a.matcher(str);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            return linkedHashSet;
        }

        public static Class<?> a(Class<?> cls) {
            if (Boolean.TYPE == cls) {
                return Boolean.class;
            }
            if (Byte.TYPE == cls) {
                return Byte.class;
            }
            if (Character.TYPE == cls) {
                return Character.class;
            }
            if (Double.TYPE == cls) {
                return Double.class;
            }
            if (Float.TYPE == cls) {
                return Float.class;
            }
            if (Integer.TYPE == cls) {
                return Integer.class;
            }
            if (Long.TYPE == cls) {
                return Long.class;
            }
            Class<Short> cls2 = cls;
            if (Short.TYPE == cls) {
                cls2 = Short.class;
            }
            return cls2;
        }
    }

    public C(a aVar) {
        this.f15841a = aVar.f15854d;
        this.f15842b = aVar.f15853c.f15872c;
        this.f15843c = aVar.p;
        this.f15844d = aVar.t;
        this.f15845e = aVar.u;
        this.f15846f = aVar.v;
        this.f15847g = aVar.q;
        this.f15848h = aVar.r;
        this.f15849i = aVar.s;
        this.f15850j = aVar.x;
    }

    public static C a(F f2, Method method) {
        return new a(f2, method).a();
    }

    public L a(Object[] objArr) {
        z<?>[] zVarArr = this.f15850j;
        int length = objArr.length;
        if (length == zVarArr.length) {
            B b2 = new B(this.f15843c, this.f15842b, this.f15844d, this.f15845e, this.f15846f, this.f15847g, this.f15848h, this.f15849i);
            ArrayList arrayList = new ArrayList(length);
            for (int i2 = 0; i2 < length; i2++) {
                arrayList.add(objArr[i2]);
                zVarArr[i2].a(b2, objArr[i2]);
            }
            L.a a2 = b2.a();
            a2.a(s.class, new s(this.f15841a, arrayList));
            return a2.a();
        }
        throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + zVarArr.length + ")");
    }
}
