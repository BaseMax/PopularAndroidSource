package d.a;

import d.a.b;
import d.b.c;
import dagger.android.DispatchingAndroidInjector;
import g.a.a;
import java.util.Map;

/* compiled from: DispatchingAndroidInjector_Factory */
public final class g<T> implements c<DispatchingAndroidInjector<T>> {
    public static <T> DispatchingAndroidInjector<T> a(Map<Class<? extends T>, a<b.C0138b<? extends T>>> map) {
        return new DispatchingAndroidInjector<>(map);
    }
}
