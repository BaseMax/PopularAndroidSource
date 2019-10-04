package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.AsyncTask;
import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public abstract class d<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> implements a<j>, g, j {

    /* renamed from: a  reason: collision with root package name */
    private final h f6644a = new h();

    static class a<Result> implements Executor {

        /* renamed from: a  reason: collision with root package name */
        private final Executor f6645a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final d f6646b;

        public a(Executor executor, d dVar) {
            this.f6645a = executor;
            this.f6646b = dVar;
        }

        public final void execute(Runnable runnable) {
            this.f6645a.execute(new f<Result>(runnable) {
                public final <T extends a<j> & g & j> T getDelegate() {
                    return a.this.f6646b;
                }
            });
        }
    }

    public final void executeOnExecutor(ExecutorService executorService, Params... paramsArr) {
        super.executeOnExecutor(new a(executorService, this), paramsArr);
    }

    public int compareTo(Object obj) {
        return Priority.a(this, obj);
    }

    public void addDependency(j jVar) {
        if (getStatus() == AsyncTask.Status.PENDING) {
            ((a) ((g) getDelegate())).addDependency(jVar);
            return;
        }
        throw new IllegalStateException("Must not add Dependency after task is running");
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
        return this.f6644a;
    }
}
