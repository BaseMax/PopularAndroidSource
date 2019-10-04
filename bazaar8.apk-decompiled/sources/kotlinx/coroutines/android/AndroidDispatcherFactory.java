package kotlinx.coroutines.android;

import android.os.Looper;
import h.f.b.j;
import i.a.a.a;
import i.a.a.c;
import java.util.List;
import kotlinx.coroutines.internal.MainDispatcherFactory;

/* compiled from: HandlerDispatcher.kt */
public final class AndroidDispatcherFactory implements MainDispatcherFactory {
    public int getLoadPriority() {
        return 1073741823;
    }

    public String hintOnError() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    public a createDispatcher(List<? extends MainDispatcherFactory> list) {
        j.b(list, "allFactories");
        Looper mainLooper = Looper.getMainLooper();
        j.a((Object) mainLooper, "Looper.getMainLooper()");
        return new a(c.a(mainLooper, true), "Main");
    }
}
