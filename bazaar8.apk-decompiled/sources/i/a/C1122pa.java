package i.a;

import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: i.a.pa  reason: case insensitive filesystem */
/* compiled from: JobSupport.kt */
public final class C1122pa extends sa<C1125ra> {

    /* renamed from: e  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f14855e = AtomicIntegerFieldUpdater.newUpdater(C1122pa.class, "_invoked");
    public volatile int _invoked = 0;

    /* renamed from: f  reason: collision with root package name */
    public final b<Throwable, h> f14856f;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C1122pa(C1125ra raVar, b<? super Throwable, h> bVar) {
        super(raVar);
        j.b(raVar, "job");
        j.b(bVar, "handler");
        this.f14856f = bVar;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        b((Throwable) obj);
        return h.f14579a;
    }

    public void b(Throwable th) {
        if (f14855e.compareAndSet(this, 0, 1)) {
            this.f14856f.a(th);
        }
    }

    public String toString() {
        return "InvokeOnCancelling[" + L.a((Object) this) + '@' + L.b(this) + ']';
    }
}
