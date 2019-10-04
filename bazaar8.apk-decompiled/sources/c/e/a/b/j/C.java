package c.e.a.b.j;

import java.util.concurrent.Callable;

public final class C implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ B f11140a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Callable f11141b;

    public C(B b2, Callable callable) {
        this.f11140a = b2;
        this.f11141b = callable;
    }

    public final void run() {
        try {
            this.f11140a.a(this.f11141b.call());
        } catch (Exception e2) {
            this.f11140a.a(e2);
        }
    }
}
