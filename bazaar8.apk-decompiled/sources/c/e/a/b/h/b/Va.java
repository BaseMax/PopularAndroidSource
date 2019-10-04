package c.e.a.b.h.b;

public final class Va implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ long f10776a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fa f10777b;

    public Va(Fa fa, long j2) {
        this.f10777b = fa;
        this.f10776a = j2;
    }

    public final void run() {
        this.f10777b.h().q.a(this.f10776a);
        this.f10777b.e().A().a("Minimum session duration set", Long.valueOf(this.f10776a));
    }
}
