package e.a.a.a.a.c;

import io.fabric.sdk.android.services.concurrency.AsyncTask;
import io.fabric.sdk.android.services.concurrency.Priority;
import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* compiled from: PriorityAsyncTask */
public abstract class j<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> implements g<p>, m, p, f {
    public final n o = new n();

    /* compiled from: PriorityAsyncTask */
    private static class a<Result> implements Executor {

        /* renamed from: a  reason: collision with root package name */
        public final Executor f13734a;

        /* renamed from: b  reason: collision with root package name */
        public final j f13735b;

        public a(Executor executor, j jVar) {
            this.f13734a = executor;
            this.f13735b = jVar;
        }

        public void execute(Runnable runnable) {
            this.f13734a.execute(new i(this, runnable, null));
        }
    }

    public final void a(ExecutorService executorService, Params... paramsArr) {
        super.a((Executor) new a(executorService, this), paramsArr);
    }

    public boolean areDependenciesMet() {
        return ((g) ((m) d())).areDependenciesMet();
    }

    public int compareTo(Object obj) {
        return Priority.a(this, obj);
    }

    public <T extends g<p> & m & p> T d() {
        return this.o;
    }

    public Collection<p> getDependencies() {
        return ((g) ((m) d())).getDependencies();
    }

    public boolean isFinished() {
        return ((p) ((m) d())).isFinished();
    }

    public void setError(Throwable th) {
        ((p) ((m) d())).setError(th);
    }

    public void setFinished(boolean z) {
        ((p) ((m) d())).setFinished(z);
    }

    /* renamed from: a */
    public void addDependency(p pVar) {
        if (a() == AsyncTask.Status.PENDING) {
            ((g) ((m) d())).addDependency(pVar);
            return;
        }
        throw new IllegalStateException("Must not add Dependency after task is running");
    }
}
