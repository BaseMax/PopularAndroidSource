package h.f.b;

import h.i.c;
import h.i.f;
import h.i.g;
import h.i.j;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference1;
import kotlin.jvm.internal.PropertyReference1;

/* compiled from: ReflectionFactory */
public class l {
    public c a(Class cls) {
        return new d(cls);
    }

    public f a(FunctionReference functionReference) {
        return functionReference;
    }

    public g a(MutablePropertyReference1 mutablePropertyReference1) {
        return mutablePropertyReference1;
    }

    public j a(PropertyReference1 propertyReference1) {
        return propertyReference1;
    }

    public String a(Lambda lambda) {
        return a((h) lambda);
    }

    public String a(h hVar) {
        String obj = hVar.getClass().getGenericInterfaces()[0].toString();
        return obj.startsWith("kotlin.jvm.functions.") ? obj.substring(21) : obj;
    }
}
