package c.e.d.b;

import com.google.gson.JsonIOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* compiled from: ConstructorConstructor */
class k implements w<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Type f11792a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ p f11793b;

    public k(p pVar, Type type) {
        this.f11793b = pVar;
        this.f11792a = type;
    }

    public T a() {
        Type type = this.f11792a;
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return EnumSet.noneOf((Class) type2);
            }
            throw new JsonIOException("Invalid EnumSet type: " + this.f11792a.toString());
        }
        throw new JsonIOException("Invalid EnumSet type: " + this.f11792a.toString());
    }
}
