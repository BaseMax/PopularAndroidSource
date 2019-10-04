package io.fabric.sdk.android;

import io.fabric.sdk.android.services.common.r;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.d;
import io.fabric.sdk.android.services.concurrency.k;

public final class h<Result> extends d<Void, Void, Result> {

    /* renamed from: a  reason: collision with root package name */
    final i<Result> f6559a;

    public h(i<Result> iVar) {
        this.f6559a = iVar;
    }

    public final void onPreExecute() {
        super.onPreExecute();
        r a2 = a("onPreExecute");
        try {
            boolean onPreExecute = this.f6559a.onPreExecute();
            a2.stopMeasuring();
            if (!onPreExecute) {
                cancel(true);
            }
        } catch (k e) {
            throw e;
        } catch (Exception e2) {
            c.getLogger().e(c.TAG, "Failure onPreExecute()", e2);
            a2.stopMeasuring();
            cancel(true);
        } catch (Throwable th) {
            a2.stopMeasuring();
            cancel(true);
            throw th;
        }
    }

    public final void onPostExecute(Result result) {
        this.f6559a.f.success(result);
    }

    public final void onCancelled(Result result) {
        this.f6559a.f.failure(new g(this.f6559a.getIdentifier() + " Initialization was cancelled"));
    }

    public final Priority getPriority() {
        return Priority.HIGH;
    }

    private r a(String str) {
        r rVar = new r(this.f6559a.getIdentifier() + "." + str, "KitInitialization");
        rVar.startMeasuring();
        return rVar;
    }

    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        r a2 = a("doInBackground");
        Result doInBackground = !isCancelled() ? this.f6559a.doInBackground() : null;
        a2.stopMeasuring();
        return doInBackground;
    }
}
