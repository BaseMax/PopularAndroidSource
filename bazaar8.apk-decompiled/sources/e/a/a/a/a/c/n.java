package e.a.a.a.a.c;

import io.fabric.sdk.android.services.concurrency.Priority;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PriorityTask */
public class n implements g<p>, m, p {
    public final List<p> dependencies = new ArrayList();
    public final AtomicBoolean hasRun = new AtomicBoolean(false);
    public final AtomicReference<Throwable> throwable = new AtomicReference<>(null);

    public static boolean isProperDelegate(Object obj) {
        try {
            g gVar = (g) obj;
            p pVar = (p) obj;
            m mVar = (m) obj;
            if (gVar == null || pVar == null || mVar == null) {
                return false;
            }
            return true;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public boolean areDependenciesMet() {
        for (p isFinished : getDependencies()) {
            if (!isFinished.isFinished()) {
                return false;
            }
        }
        return true;
    }

    public int compareTo(Object obj) {
        return Priority.a(this, obj);
    }

    public synchronized Collection<p> getDependencies() {
        return Collections.unmodifiableCollection(this.dependencies);
    }

    public Throwable getError() {
        return this.throwable.get();
    }

    public Priority getPriority() {
        return Priority.NORMAL;
    }

    public boolean isFinished() {
        return this.hasRun.get();
    }

    public void setError(Throwable th) {
        this.throwable.set(th);
    }

    public synchronized void setFinished(boolean z) {
        this.hasRun.set(z);
    }

    public synchronized void addDependency(p pVar) {
        this.dependencies.add(pVar);
    }
}
