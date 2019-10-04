package io.fabric.sdk.android.services.concurrency;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class h implements a<j>, g, j {

    /* renamed from: a  reason: collision with root package name */
    private final List<j> f6649a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f6650b = new AtomicBoolean(false);
    private final AtomicReference<Throwable> c = new AtomicReference<>(null);

    public synchronized Collection<j> getDependencies() {
        return Collections.unmodifiableCollection(this.f6649a);
    }

    public synchronized void addDependency(j jVar) {
        this.f6649a.add(jVar);
    }

    public boolean areDependenciesMet() {
        for (j isFinished : getDependencies()) {
            if (!isFinished.isFinished()) {
                return false;
            }
        }
        return true;
    }

    public synchronized void setFinished(boolean z) {
        this.f6650b.set(z);
    }

    public boolean isFinished() {
        return this.f6650b.get();
    }

    public Priority getPriority() {
        return Priority.NORMAL;
    }

    public void setError(Throwable th) {
        this.c.set(th);
    }

    public Throwable getError() {
        return this.c.get();
    }

    public int compareTo(Object obj) {
        return Priority.a(this, obj);
    }

    public static boolean isProperDelegate(Object obj) {
        try {
            a aVar = (a) obj;
            j jVar = (j) obj;
            g gVar = (g) obj;
            if (!(aVar == null || jVar == null || gVar == null)) {
                return true;
            }
        } catch (ClassCastException unused) {
        }
        return false;
    }
}
