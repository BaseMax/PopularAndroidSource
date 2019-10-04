package io.fabric.sdk.android;

import android.content.Context;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.concurrency.c;
import java.io.File;

public abstract class i<Result> implements Comparable<i> {
    c c;
    protected h<Result> d = new h<>(this);
    Context e;
    f<Result> f;
    protected IdManager g;
    final c h = ((c) getClass().getAnnotation(c.class));

    /* access modifiers changed from: protected */
    public abstract Result doInBackground();

    public abstract String getIdentifier();

    public abstract String getVersion();

    /* access modifiers changed from: protected */
    public boolean onPreExecute() {
        return true;
    }

    /* access modifiers changed from: package-private */
    public final void a(Context context, c cVar, f<Result> fVar, IdManager idManager) {
        this.c = cVar;
        this.e = new d(context, getIdentifier(), getPath());
        this.f = fVar;
        this.g = idManager;
    }

    /* access modifiers changed from: package-private */
    public final void e() {
        this.d.executeOnExecutor(this.c.getExecutorService(), null);
    }

    public Context getContext() {
        return this.e;
    }

    public c getFabric() {
        return this.c;
    }

    public String getPath() {
        return ".Fabric" + File.separator + getIdentifier();
    }

    public int compareTo(i iVar) {
        if (a(iVar)) {
            return 1;
        }
        if (iVar.a(this)) {
            return -1;
        }
        if (a() && !iVar.a()) {
            return 1;
        }
        if (a() || !iVar.a()) {
            return 0;
        }
        return -1;
    }

    private boolean a(i iVar) {
        if (a()) {
            for (Class isAssignableFrom : this.h.value()) {
                if (isAssignableFrom.isAssignableFrom(iVar.getClass())) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean a() {
        return this.h != null;
    }
}
