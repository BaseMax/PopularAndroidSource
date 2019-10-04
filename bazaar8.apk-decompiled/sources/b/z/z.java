package b.z;

/* compiled from: RoomTrackingLiveData */
class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ B f3687a;

    public z(B b2) {
        this.f3687a = b2;
    }

    public void run() {
        boolean c2 = this.f3687a.c();
        if (this.f3687a.p.compareAndSet(false, true) && c2) {
            this.f3687a.f().execute(this.f3687a.s);
        }
    }
}
