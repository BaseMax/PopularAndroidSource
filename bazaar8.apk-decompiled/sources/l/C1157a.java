package l;

import h.h;
import j.O;
import j.S;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import l.b.u;
import l.j;

/* renamed from: l.a  reason: case insensitive filesystem */
/* compiled from: BuiltInConverters */
public final class C1157a extends j.a {

    /* renamed from: a  reason: collision with root package name */
    public boolean f15891a = true;

    /* renamed from: l.a$a  reason: collision with other inner class name */
    /* compiled from: BuiltInConverters */
    static final class C0154a implements j<S, S> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0154a f15892a = new C0154a();

        public S a(S s) {
            try {
                return H.a(s);
            } finally {
                s.close();
            }
        }
    }

    /* renamed from: l.a$b */
    /* compiled from: BuiltInConverters */
    static final class b implements j<O, O> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f15900a = new b();

        public O a(O o) {
            return o;
        }

        public /* bridge */ /* synthetic */ Object a(Object obj) {
            O o = (O) obj;
            a(o);
            return o;
        }
    }

    /* renamed from: l.a$c */
    /* compiled from: BuiltInConverters */
    static final class c implements j<S, S> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f15901a = new c();

        public S a(S s) {
            return s;
        }

        public /* bridge */ /* synthetic */ Object a(Object obj) {
            S s = (S) obj;
            a(s);
            return s;
        }
    }

    /* renamed from: l.a$d */
    /* compiled from: BuiltInConverters */
    static final class d implements j<Object, String> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f15902a = new d();

        public String a(Object obj) {
            return obj.toString();
        }
    }

    /* renamed from: l.a$e */
    /* compiled from: BuiltInConverters */
    static final class e implements j<S, h> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f15903a = new e();

        public h a(S s) {
            s.close();
            return h.f14579a;
        }
    }

    /* renamed from: l.a$f */
    /* compiled from: BuiltInConverters */
    static final class f implements j<S, Void> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f15904a = new f();

        public Void a(S s) {
            s.close();
            return null;
        }
    }

    public j<S, ?> a(Type type, Annotation[] annotationArr, F f2) {
        j<S, ?> jVar;
        if (type == S.class) {
            if (H.a(annotationArr, (Class<? extends Annotation>) u.class)) {
                jVar = c.f15901a;
            } else {
                jVar = C0154a.f15892a;
            }
            return jVar;
        } else if (type == Void.class) {
            return f.f15904a;
        } else {
            if (this.f15891a && type == h.class) {
                try {
                    return e.f15903a;
                } catch (NoClassDefFoundError unused) {
                    this.f15891a = false;
                }
            }
            return null;
        }
    }

    public j<?, O> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, F f2) {
        if (O.class.isAssignableFrom(H.c(type))) {
            return b.f15900a;
        }
        return null;
    }
}
