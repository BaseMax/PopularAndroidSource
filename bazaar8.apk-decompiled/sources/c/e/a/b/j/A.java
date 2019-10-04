package c.e.a.b.j;

import java.util.concurrent.Executor;

public final class A implements Executor {
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
