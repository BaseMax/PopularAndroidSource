package e.a.a.a;

import android.content.Context;
import e.a.a.a.a.c.h;
import e.a.a.a.a.c.p;
import io.fabric.sdk.android.services.common.IdManager;
import java.io.File;
import java.util.Collection;

/* compiled from: Kit */
public abstract class l<Result> implements Comparable<l> {
    public Context context;
    public final h dependsOnAnnotation = ((h) getClass().getAnnotation(h.class));
    public f fabric;
    public IdManager idManager;
    public j<Result> initializationCallback;
    public k<Result> initializationTask = new k<>(this);

    public boolean containsAnnotatedDependency(l lVar) {
        if (hasAnnotatedDependency()) {
            for (Class isAssignableFrom : this.dependsOnAnnotation.value()) {
                if (isAssignableFrom.isAssignableFrom(lVar.getClass())) {
                    return true;
                }
            }
        }
        return false;
    }

    public abstract Result doInBackground();

    public Context getContext() {
        return this.context;
    }

    public Collection<p> getDependencies() {
        return this.initializationTask.getDependencies();
    }

    public f getFabric() {
        return this.fabric;
    }

    public IdManager getIdManager() {
        return this.idManager;
    }

    public abstract String getIdentifier();

    public String getPath() {
        return ".Fabric" + File.separator + getIdentifier();
    }

    public abstract String getVersion();

    public boolean hasAnnotatedDependency() {
        return this.dependsOnAnnotation != null;
    }

    public final void initialize() {
        this.initializationTask.a(this.fabric.b(), null);
    }

    public void injectParameters(Context context2, f fVar, j<Result> jVar, IdManager idManager2) {
        this.fabric = fVar;
        this.context = new g(context2, getIdentifier(), getPath());
        this.initializationCallback = jVar;
        this.idManager = idManager2;
    }

    public void onCancelled(Result result) {
    }

    public void onPostExecute(Result result) {
    }

    public boolean onPreExecute() {
        return true;
    }

    public int compareTo(l lVar) {
        if (containsAnnotatedDependency(lVar)) {
            return 1;
        }
        if (lVar.containsAnnotatedDependency(this)) {
            return -1;
        }
        if (hasAnnotatedDependency() && !lVar.hasAnnotatedDependency()) {
            return 1;
        }
        if (hasAnnotatedDependency() || !lVar.hasAnnotatedDependency()) {
            return 0;
        }
        return -1;
    }
}
