package c.c.a.p;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.farsitel.bazaar.work.StopScheduleUpdateWorker;

/* compiled from: StopScheduleUpdateWorker_AssistedFactory */
public final class A implements StopScheduleUpdateWorker.a {
    public ListenableWorker a(Context context, WorkerParameters workerParameters) {
        return new StopScheduleUpdateWorker(context, workerParameters);
    }
}
