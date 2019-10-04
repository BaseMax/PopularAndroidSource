package e.a.a.a;

import java.util.concurrent.CountDownLatch;

/* compiled from: Fabric */
class e implements j {

    /* renamed from: a  reason: collision with root package name */
    public final CountDownLatch f13871a = new CountDownLatch(this.f13872b);

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f13872b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ f f13873c;

    public e(f fVar, int i2) {
        this.f13873c = fVar;
        this.f13872b = i2;
    }

    public void a(Object obj) {
        this.f13871a.countDown();
        if (this.f13871a.getCount() == 0) {
            this.f13873c.f13885l.set(true);
            this.f13873c.f13880g.a(this.f13873c);
        }
    }

    public void a(Exception exc) {
        this.f13873c.f13880g.a(exc);
    }
}
