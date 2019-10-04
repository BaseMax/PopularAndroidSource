package c.f.a;

/* renamed from: c.f.a.h  reason: case insensitive filesystem */
/* compiled from: BitmapHunter */
class C1037h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ N f11980a;

    public C1037h(N n) {
        this.f11980a = n;
    }

    public void run() {
        throw new IllegalStateException("Transformation " + this.f11980a.a() + " mutated input Bitmap but failed to recycle the original.");
    }
}
