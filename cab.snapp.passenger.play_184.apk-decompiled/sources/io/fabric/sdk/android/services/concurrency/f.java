package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class f<V> extends FutureTask<V> implements a<j>, g, j {

    /* renamed from: b  reason: collision with root package name */
    final Object f6648b;

    public f(Callable<V> callable) {
        super(callable);
        this.f6648b = a(callable);
    }

    public f(Runnable runnable, V v) {
        super(runnable, v);
        this.f6648b = a(runnable);
    }

    public int compareTo(Object obj) {
        return ((g) getDelegate()).compareTo(obj);
    }

    public void addDependency(j jVar) {
        ((a) ((g) getDelegate())).addDependency(jVar);
    }

    public Collection<j> getDependencies() {
        return ((a) ((g) getDelegate())).getDependencies();
    }

    public boolean areDependenciesMet() {
        return ((a) ((g) getDelegate())).areDependenciesMet();
    }

    public Priority getPriority() {
        return ((g) getDelegate()).getPriority();
    }

    public void setFinished(boolean z) {
        ((j) ((g) getDelegate())).setFinished(z);
    }

    public boolean isFinished() {
        return ((j) ((g) getDelegate())).isFinished();
    }

    public void setError(Throwable th) {
        ((j) ((g) getDelegate())).setError(th);
    }

    public Throwable getError() {
        return ((j) ((g) getDelegate())).getError();
    }

    public <T extends a<j> & g & j> T getDelegate() {
        return (a) this.f6648b;
    }

    private static <T extends a<j> & g & j> T a(Object obj) {
        if (h.isProperDelegate(obj)) {
            return (a) obj;
        }
        return new h();
    }
}
