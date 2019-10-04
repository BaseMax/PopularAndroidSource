package kotlinx.coroutines.internal;

import i.a.Ca;
import java.util.List;

/* compiled from: MainDispatcherFactory.kt */
public interface MainDispatcherFactory {
    Ca createDispatcher(List<? extends MainDispatcherFactory> list);

    int getLoadPriority();

    String hintOnError();
}
