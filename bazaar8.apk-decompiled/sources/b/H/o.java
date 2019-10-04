package b.H;

import androidx.work.Worker;

/* compiled from: Worker */
class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Worker f1657a;

    public o(Worker worker) {
        this.f1657a = worker;
    }

    public void run() {
        try {
            this.f1657a.f1012e.c(this.f1657a.k());
        } catch (Throwable th) {
            this.f1657a.f1012e.a(th);
        }
    }
}
