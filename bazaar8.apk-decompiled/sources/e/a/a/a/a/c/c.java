package e.a.a.a.a.c;

import android.util.Log;
import io.fabric.sdk.android.services.concurrency.AsyncTask;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* compiled from: AsyncTask */
class c extends FutureTask<Result> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AsyncTask f13729a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(AsyncTask asyncTask, Callable callable) {
        super(callable);
        this.f13729a = asyncTask;
    }

    public void done() {
        try {
            this.f13729a.e(get());
        } catch (InterruptedException e2) {
            Log.w("AsyncTask", e2);
        } catch (ExecutionException e3) {
            throw new RuntimeException("An error occured while executing doInBackground()", e3.getCause());
        } catch (CancellationException unused) {
            this.f13729a.e(null);
        }
    }
}
