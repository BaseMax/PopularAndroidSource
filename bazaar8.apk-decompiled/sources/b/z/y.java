package b.z;

/* compiled from: RoomTrackingLiveData */
class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ B f3686a;

    public y(B b2) {
        this.f3686a = b2;
    }

    public void run() {
        boolean z;
        if (this.f3686a.r.compareAndSet(false, true)) {
            this.f3686a.f3572k.h().b(this.f3686a.o);
        }
        do {
            if (this.f3686a.q.compareAndSet(false, true)) {
                Object obj = null;
                z = false;
                while (this.f3686a.p.compareAndSet(true, false)) {
                    try {
                        obj = this.f3686a.m.call();
                        z = true;
                    } catch (Exception e2) {
                        throw new RuntimeException("Exception while computing database live data.", e2);
                    } catch (Throwable th) {
                        this.f3686a.q.set(false);
                        throw th;
                    }
                }
                if (z) {
                    this.f3686a.a(obj);
                }
                this.f3686a.q.set(false);
            } else {
                z = false;
            }
            if (!z) {
                return;
            }
        } while (this.f3686a.p.get());
    }
}
