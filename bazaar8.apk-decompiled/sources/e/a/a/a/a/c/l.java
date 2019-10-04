package e.a.a.a.a.c;

import io.fabric.sdk.android.services.concurrency.Priority;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* compiled from: PriorityFutureTask */
public class l<V> extends FutureTask<V> implements g<p>, m, p, f {

    /* renamed from: a  reason: collision with root package name */
    public final Object f13736a;

    public l(Callable<V> callable) {
        super(callable);
        this.f13736a = a((Object) callable);
    }

    /* renamed from: a */
    public void addDependency(p pVar) {
        ((g) ((m) a())).addDependency(pVar);
    }

    public boolean areDependenciesMet() {
        return ((g) ((m) a())).areDependenciesMet();
    }

    public int compareTo(Object obj) {
        return ((m) a()).compareTo(obj);
    }

    public Collection<p> getDependencies() {
        return ((g) ((m) a())).getDependencies();
    }

    public Priority getPriority() {
        return ((m) a()).getPriority();
    }

    public boolean isFinished() {
        return ((p) ((m) a())).isFinished();
    }

    public void setError(Throwable th) {
        ((p) ((m) a())).setError(th);
    }

    public void setFinished(boolean z) {
        ((p) ((m) a())).setFinished(z);
    }

    public <T extends g<p> & m & p> T a() {
        return (g) this.f13736a;
    }

    public l(Runnable runnable, V v) {
        super(runnable, v);
        this.f13736a = a((Object) runnable);
    }

    public <T extends g<p> & m & p> T a(Object obj) {
        if (n.isProperDelegate(obj)) {
            return (g) obj;
        }
        return new n();
    }
}
