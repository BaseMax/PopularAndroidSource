package l;

import j.S;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Optional;
import l.j;

/* compiled from: OptionalConverterFactory */
public final class w extends j.a {

    /* renamed from: a  reason: collision with root package name */
    public static final j.a f15951a = new w();

    /* compiled from: OptionalConverterFactory */
    static final class a<T> implements j<S, Optional<T>> {

        /* renamed from: a  reason: collision with root package name */
        public final j<S, T> f15952a;

        public a(j<S, T> jVar) {
            this.f15952a = jVar;
        }

        public Optional<T> a(S s) {
            return Optional.ofNullable(this.f15952a.a(s));
        }
    }

    public j<S, ?> a(Type type, Annotation[] annotationArr, F f2) {
        if (j.a.a(type) != Optional.class) {
            return null;
        }
        return new a(f2.b(j.a.a(0, (ParameterizedType) type), annotationArr));
    }
}
