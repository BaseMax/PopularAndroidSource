package l;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import l.C1159c;

/* compiled from: DefaultCallAdapterFactory */
public final class l extends C1159c.a {

    /* renamed from: a  reason: collision with root package name */
    public static final C1159c.a f15918a = new l();

    public C1159c<?, ?> a(Type type, Annotation[] annotationArr, F f2) {
        if (C1159c.a.a(type) != C1158b.class) {
            return null;
        }
        return new k(this, H.b(type));
    }
}
