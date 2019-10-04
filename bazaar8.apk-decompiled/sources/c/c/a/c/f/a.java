package c.c.a.c.f;

import c.c.a.c.f.a.g;
import c.c.a.c.f.a.h;
import java.lang.annotation.Annotation;

/* compiled from: SweepReflection */
public class a {
    public static <T, R extends Annotation> boolean a(T t, Class<R> cls) {
        return t.getClass().isAnnotationPresent(cls);
    }

    public static <T> String b(T t) {
        return ((h) t.getClass().getAnnotation(h.class)).value();
    }

    public static <T, R extends Annotation> boolean a(Class<T> cls, Class<R> cls2) {
        return cls.isAnnotationPresent(cls2);
    }

    public static <T> String b(Class<T> cls) {
        return ((g) cls.getAnnotation(g.class)).value();
    }

    public static <T> String a(T t) {
        return t.getClass().getSimpleName();
    }

    public static <T> String a(Class<T> cls) {
        return cls.getSimpleName();
    }
}
