package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.farsitel.bazaar.work.PeriodicStartWorker;

/* compiled from: PeriodicStartWorker_AssistedFactory */
public final class o implements PeriodicStartWorker.b {
    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new PeriodicStartWorker(context, workerParameters);
    }
}
