package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import b.H.q;
import g.a.a;
import h.f.b.j;
import java.util.Iterator;
import java.util.Map;

/* renamed from: c.c.a.p.f  reason: case insensitive filesystem */
/* compiled from: DaggerWorkerFactory.kt */
public final class C0681f extends q {

    /* renamed from: b  reason: collision with root package name */
    public final Map<Class<? extends ListenableWorker>, a<C0676a>> f7162b;

    public C0681f(Map<Class<? extends ListenableWorker>, a<C0676a>> map) {
        j.b(map, "workerFactories");
        this.f7162b = map;
    }

    public ListenableWorker a(Context context, String str, WorkerParameters workerParameters) {
        T t;
        j.b(context, "context");
        j.b(str, "workerClassName");
        j.b(workerParameters, "workerParameters");
        Iterator<T> it = this.f7162b.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                t = null;
                break;
            }
            t = it.next();
            if (Class.forName(str).isAssignableFrom((Class) ((Map.Entry) t).getKey())) {
                break;
            }
        }
        Map.Entry entry = (Map.Entry) t;
        a aVar = entry != null ? (a) entry.getValue() : null;
        if (aVar == null) {
            return null;
        }
        C0676a aVar2 = (C0676a) aVar.get();
        if (aVar2 != null) {
            return aVar2.a(context, workerParameters);
        }
        return null;
    }
}
