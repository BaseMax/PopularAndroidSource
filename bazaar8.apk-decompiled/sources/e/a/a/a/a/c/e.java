package e.a.a.a.a.c;

import io.fabric.sdk.android.services.concurrency.AsyncTask;

/* compiled from: AsyncTask */
class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Runnable f13731a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AsyncTask.c f13732b;

    public e(AsyncTask.c cVar, Runnable runnable) {
        this.f13732b = cVar;
        this.f13731a = runnable;
    }

    public void run() {
        try {
            this.f13731a.run();
        } finally {
            this.f13732b.a();
        }
    }
}
