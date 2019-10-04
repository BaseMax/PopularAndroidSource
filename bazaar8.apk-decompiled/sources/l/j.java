package l;

import j.O;
import j.S;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* compiled from: Converter */
public interface j<F, T> {

    /* compiled from: Converter */
    public static abstract class a {
        public static Type a(int i2, ParameterizedType parameterizedType) {
            return H.a(i2, parameterizedType);
        }

        public j<S, ?> a(Type type, Annotation[] annotationArr, F f2) {
            return null;
        }

        public j<?, O> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, F f2) {
            return null;
        }

        public j<?, String> b(Type type, Annotation[] annotationArr, F f2) {
            return null;
        }

        public static Class<?> a(Type type) {
            return H.c(type);
        }
    }

    T a(F f2);
}
