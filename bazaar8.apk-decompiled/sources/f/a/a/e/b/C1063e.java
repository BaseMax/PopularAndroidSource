package f.a.a.e.b;

/* renamed from: f.a.a.e.b.e  reason: case insensitive filesystem */
/* compiled from: AudioInflater */
class C1063e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ long f14230a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1064f f14231b;

    public C1063e(C1064f fVar, long j2) {
        this.f14231b = fVar;
        this.f14230a = j2;
    }

    public void run() {
        if (!this.f14231b.f14233b.get() && this.f14231b.f14234c.get()) {
            this.f14231b.f14235d.setProgress((int) this.f14230a);
        }
    }
}
