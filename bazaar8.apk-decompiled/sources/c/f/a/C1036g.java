package c.f.a;

/* renamed from: c.f.a.g  reason: case insensitive filesystem */
/* compiled from: BitmapHunter */
class C1036g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ N f11979a;

    public C1036g(N n) {
        this.f11979a = n;
    }

    public void run() {
        throw new IllegalStateException("Transformation " + this.f11979a.a() + " returned input Bitmap but recycled it.");
    }
}
