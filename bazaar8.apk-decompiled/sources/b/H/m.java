package b.H;

import android.content.Context;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.WorkInfo;
import c.e.b.a.a.a;
import java.util.Collections;
import java.util.List;

/* compiled from: WorkManager */
public abstract class m {
    public static m a() {
        b.H.a.m a2 = b.H.a.m.a();
        if (a2 != null) {
            return a2;
        }
        throw new IllegalStateException("WorkManager is not initialized properly.  The most likely cause is that you disabled WorkManagerInitializer in your manifest but forgot to call WorkManager#initialize in your Application#onCreate or a ContentProvider.");
    }

    public abstract i a(String str);

    public abstract i a(String str, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, j jVar);

    public abstract i a(String str, ExistingWorkPolicy existingWorkPolicy, List<g> list);

    public abstract i a(List<? extends n> list);

    public abstract a<List<WorkInfo>> b(String str);

    public static void a(Context context, a aVar) {
        b.H.a.m.a(context, aVar);
    }

    public final i a(n nVar) {
        return a((List<? extends n>) Collections.singletonList(nVar));
    }

    public i a(String str, ExistingWorkPolicy existingWorkPolicy, g gVar) {
        return a(str, existingWorkPolicy, (List<g>) Collections.singletonList(gVar));
    }
}
