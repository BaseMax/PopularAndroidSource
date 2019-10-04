package i.a.c;

import h.b.a;
import h.f.b.j;
import java.lang.reflect.Constructor;
import java.util.Comparator;

/* compiled from: Comparisons.kt */
public final class f<T> implements Comparator<T> {
    public final int compare(T t, T t2) {
        Constructor constructor = (Constructor) t2;
        j.a((Object) constructor, "it");
        Integer valueOf = Integer.valueOf(constructor.getParameterTypes().length);
        Constructor constructor2 = (Constructor) t;
        j.a((Object) constructor2, "it");
        return a.a(valueOf, Integer.valueOf(constructor2.getParameterTypes().length));
    }
}
