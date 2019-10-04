package b.b.c.a;

/* compiled from: DrawableContainer */
class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f1784a;

    public c(d dVar) {
        this.f1784a = dVar;
    }

    public void run() {
        this.f1784a.a(true);
        this.f1784a.invalidateSelf();
    }
}
