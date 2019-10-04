package i.a.c;

import h.f.b.j;
import i.a.Ca;
import java.util.List;
import kotlinx.coroutines.internal.MainDispatcherFactory;

/* compiled from: MainDispatchers.kt */
public final class o {
    public static final Ca a(MainDispatcherFactory mainDispatcherFactory, List<? extends MainDispatcherFactory> list) {
        j.b(mainDispatcherFactory, "$this$tryCreateDispatcher");
        j.b(list, "factories");
        try {
            return mainDispatcherFactory.createDispatcher(list);
        } catch (Throwable th) {
            return new p(th, mainDispatcherFactory.hintOnError());
        }
    }
}
