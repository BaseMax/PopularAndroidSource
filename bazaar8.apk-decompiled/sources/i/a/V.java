package i.a;

import h.f.b.j;
import java.util.concurrent.Executor;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: Executors.kt */
public final class V implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public final C f14661a;

    public void execute(Runnable runnable) {
        j.b(runnable, "block");
        this.f14661a.a(EmptyCoroutineContext.f15784a, runnable);
    }

    public String toString() {
        return this.f14661a.toString();
    }
}
