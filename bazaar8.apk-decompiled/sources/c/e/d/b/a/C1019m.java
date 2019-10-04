package c.e.d.b.a;

import c.e.d.c.a;
import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.j;
import c.e.d.x;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* renamed from: c.e.d.b.a.m  reason: case insensitive filesystem */
/* compiled from: TypeAdapterRuntimeTypeWrapper */
public final class C1019m<T> extends x<T> {

    /* renamed from: a  reason: collision with root package name */
    public final j f11768a;

    /* renamed from: b  reason: collision with root package name */
    public final x<T> f11769b;

    /* renamed from: c  reason: collision with root package name */
    public final Type f11770c;

    public C1019m(j jVar, x<T> xVar, Type type) {
        this.f11768a = jVar;
        this.f11769b = xVar;
        this.f11770c = type;
    }

    public T a(b bVar) {
        return this.f11769b.a(bVar);
    }

    public void a(c cVar, T t) {
        x<T> xVar = this.f11769b;
        Type a2 = a(this.f11770c, (Object) t);
        if (a2 != this.f11770c) {
            xVar = this.f11768a.a(a.a(a2));
            if (xVar instanceof ReflectiveTypeAdapterFactory.a) {
                x<T> xVar2 = this.f11769b;
                if (!(xVar2 instanceof ReflectiveTypeAdapterFactory.a)) {
                    xVar = xVar2;
                }
            }
        }
        xVar.a(cVar, t);
    }

    public final Type a(Type type, Object obj) {
        if (obj != null) {
            return (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) ? obj.getClass() : type;
        }
        return type;
    }
}
