package l;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* renamed from: l.c  reason: case insensitive filesystem */
/* compiled from: CallAdapter */
public interface C1159c<R, T> {

    /* renamed from: l.c$a */
    /* compiled from: CallAdapter */
    public static abstract class a {
        public static Type a(int i2, ParameterizedType parameterizedType) {
            return H.a(i2, parameterizedType);
        }

        public abstract C1159c<?, ?> a(Type type, Annotation[] annotationArr, F f2);

        public static Class<?> a(Type type) {
            return H.c(type);
        }
    }

    T a(C1158b<R> bVar);

    Type a();
}
