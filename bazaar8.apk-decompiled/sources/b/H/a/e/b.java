package b.H.a.e;

import androidx.work.impl.workers.ConstraintTrackingWorker;
import c.e.b.a.a.a;

/* compiled from: ConstraintTrackingWorker */
class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ a f1564a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ConstraintTrackingWorker f1565b;

    public b(ConstraintTrackingWorker constraintTrackingWorker, a aVar) {
        this.f1565b = constraintTrackingWorker;
        this.f1564a = aVar;
    }

    public void run() {
        synchronized (this.f1565b.f1041g) {
            if (this.f1565b.f1042h) {
                this.f1565b.m();
            } else {
                this.f1565b.f1043i.b(this.f1564a);
            }
        }
    }
}
