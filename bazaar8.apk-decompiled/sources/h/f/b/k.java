package h.f.b;

import h.i.c;
import h.i.f;
import h.i.g;
import h.i.j;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.PropertyReference1;

/* compiled from: Reflection */
public class k {

    /* renamed from: a  reason: collision with root package name */
    public static final l f14572a;

    /* renamed from: b  reason: collision with root package name */
    public static final c[] f14573b = new c[0];

    static {
        l lVar = null;
        try {
            lVar = (l) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (lVar == null) {
            lVar = new l();
        }
        f14572a = lVar;
    }

    public static c a(Class cls) {
        return f14572a.a(cls);
    }

    public static String a(Lambda lambda) {
        return f14572a.a(lambda);
    }

    public static String a(h hVar) {
        return f14572a.a(hVar);
    }

    public static f a(FunctionReference functionReference) {
        f14572a.a(functionReference);
        return functionReference;
    }

    public static j a(PropertyReference1 propertyReference1) {
        f14572a.a(propertyReference1);
        return propertyReference1;
    }

    public static g a(MutablePropertyReference1 mutablePropertyReference1) {
        f14572a.a(mutablePropertyReference1);
        return mutablePropertyReference1;
    }
}
