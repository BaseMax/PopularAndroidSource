package e.a.a.a.a.b;

import e.a.a.a.f;
import e.a.a.a.o;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: ExecutorUtils */
class r extends j {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f13696a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ExecutorService f13697b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ long f13698c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ TimeUnit f13699d;

    public r(String str, ExecutorService executorService, long j2, TimeUnit timeUnit) {
        this.f13696a = str;
        this.f13697b = executorService;
        this.f13698c = j2;
        this.f13699d = timeUnit;
    }

    public void onRun() {
        try {
            o e2 = f.e();
            e2.d("Fabric", "Executing shutdown hook for " + this.f13696a);
            this.f13697b.shutdown();
            if (!this.f13697b.awaitTermination(this.f13698c, this.f13699d)) {
                o e3 = f.e();
                e3.d("Fabric", this.f13696a + " did not shut down in the allocated time. Requesting immediate shutdown.");
                this.f13697b.shutdownNow();
            }
        } catch (InterruptedException unused) {
            f.e().d("Fabric", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", new Object[]{this.f13696a}));
            this.f13697b.shutdownNow();
        }
    }
}
