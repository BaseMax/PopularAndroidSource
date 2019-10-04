package c.f.a;

/* renamed from: c.f.a.e  reason: case insensitive filesystem */
/* compiled from: BitmapHunter */
class C1034e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ N f11976a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ RuntimeException f11977b;

    public C1034e(N n, RuntimeException runtimeException) {
        this.f11976a = n;
        this.f11977b = runtimeException;
    }

    public void run() {
        throw new RuntimeException("Transformation " + this.f11976a.a() + " crashed with exception.", this.f11977b);
    }
}
