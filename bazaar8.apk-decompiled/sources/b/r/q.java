package b.r;

import androidx.lifecycle.LiveData;

/* compiled from: LiveData */
class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ LiveData f3179a;

    public q(LiveData liveData) {
        this.f3179a = liveData;
    }

    public void run() {
        Object obj;
        synchronized (this.f3179a.f708b) {
            obj = this.f3179a.f712f;
            this.f3179a.f712f = LiveData.f707a;
        }
        this.f3179a.b(obj);
    }
}
