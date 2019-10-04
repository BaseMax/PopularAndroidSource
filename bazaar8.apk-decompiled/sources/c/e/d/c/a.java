package c.e.d.c;

import c.e.d.b.C1006a;
import com.google.gson.internal.C$Gson$Types;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* compiled from: TypeToken */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final Class<? super T> f11816a;

    /* renamed from: b  reason: collision with root package name */
    public final Type f11817b;

    /* renamed from: c  reason: collision with root package name */
    public final int f11818c;

    public a() {
        this.f11817b = b(getClass());
        this.f11816a = C$Gson$Types.e(this.f11817b);
        this.f11818c = this.f11817b.hashCode();
    }

    public static Type b(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return C$Gson$Types.b(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    public final Class<? super T> a() {
        return this.f11816a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && C$Gson$Types.a(this.f11817b, ((a) obj).f11817b);
    }

    public final int hashCode() {
        return this.f11818c;
    }

    public final String toString() {
        return C$Gson$Types.h(this.f11817b);
    }

    public static a<?> a(Type type) {
        return new a<>(type);
    }

    public static <T> a<T> a(Class<T> cls) {
        return new a<>(cls);
    }

    public a(Type type) {
        C1006a.a(type);
        this.f11817b = C$Gson$Types.b(type);
        this.f11816a = C$Gson$Types.e(this.f11817b);
        this.f11818c = this.f11817b.hashCode();
    }

    public final Type b() {
        return this.f11817b;
    }
}
