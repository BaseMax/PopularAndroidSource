package i.a;

import h.f.b.f;
import h.f.b.j;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: i.a.v  reason: case insensitive filesystem */
/* compiled from: CompletedExceptionally.kt */
public class C1129v {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f14866a = AtomicIntegerFieldUpdater.newUpdater(C1129v.class, "_handled");
    public volatile int _handled;

    /* renamed from: b  reason: collision with root package name */
    public final Throwable f14867b;

    public C1129v(Throwable th, boolean z) {
        j.b(th, "cause");
        this.f14867b = th;
        this._handled = z ? 1 : 0;
    }

    /* JADX WARNING: type inference failed for: r0v0, types: [int, boolean] */
    public final boolean a() {
        return this._handled;
    }

    public final boolean b() {
        return f14866a.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return L.a((Object) this) + '[' + this.f14867b + ']';
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1129v(Throwable th, boolean z, int i2, f fVar) {
        this(th, (i2 & 2) != 0 ? false : z);
    }
}
