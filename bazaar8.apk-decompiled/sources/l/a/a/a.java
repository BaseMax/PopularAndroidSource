package l.a.a;

import j.O;
import j.S;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import l.F;
import l.j;

/* compiled from: GsonConverterFactory */
public final class a extends j.a {

    /* renamed from: a  reason: collision with root package name */
    public final c.e.d.j f15893a;

    public a(c.e.d.j jVar) {
        this.f15893a = jVar;
    }

    public static a a() {
        return a(new c.e.d.j());
    }

    public static a a(c.e.d.j jVar) {
        if (jVar != null) {
            return new a(jVar);
        }
        throw new NullPointerException("gson == null");
    }

    public j<S, ?> a(Type type, Annotation[] annotationArr, F f2) {
        return new c(this.f15893a, this.f15893a.a(c.e.d.c.a.a(type)));
    }

    public j<?, O> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, F f2) {
        return new b(this.f15893a, this.f15893a.a(c.e.d.c.a.a(type)));
    }
}
