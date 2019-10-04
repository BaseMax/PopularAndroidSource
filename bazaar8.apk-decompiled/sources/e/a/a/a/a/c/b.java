package e.a.a.a.a.c;

import android.os.Process;
import io.fabric.sdk.android.services.concurrency.AsyncTask;

/* compiled from: AsyncTask */
class b extends AsyncTask.d<Params, Result> {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AsyncTask f13728b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(AsyncTask asyncTask) {
        super(null);
        this.f13728b = asyncTask;
    }

    public Result call() {
        this.f13728b.n.set(true);
        Process.setThreadPriority(10);
        AsyncTask asyncTask = this.f13728b;
        Result a2 = asyncTask.a(this.f14924a);
        Object unused = asyncTask.d(a2);
        return a2;
    }
}
