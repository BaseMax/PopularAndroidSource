package f.a.a.e;

import com.crashlytics.android.Crashlytics;
import f.a.a.c.c.a;
import f.a.a.e.b.b.y;

/* compiled from: InlineUploadManager */
class q extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public double f14314a = 0.0d;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ a f14315b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ y.a f14316c;

    public q(a aVar, y.a aVar2) {
        this.f14315b = aVar;
        this.f14316c = aVar2;
    }

    public void run() {
        while (this.f14314a < 1.0d && !isInterrupted()) {
            try {
                if (((double) (this.f14315b.d() / this.f14315b.c())) != this.f14314a) {
                    this.f14314a = (double) (this.f14315b.d() / this.f14315b.c());
                    this.f14316c.a(this.f14314a);
                }
                Thread.sleep(100);
            } catch (InterruptedException e2) {
                Crashlytics.logException(e2);
                return;
            }
        }
    }
}
