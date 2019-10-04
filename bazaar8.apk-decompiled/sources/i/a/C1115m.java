package i.a;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: i.a.m  reason: case insensitive filesystem */
/* compiled from: CompletedExceptionally.kt */
public final class C1115m extends C1129v {

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f14850c = AtomicIntegerFieldUpdater.newUpdater(C1115m.class, "_resumed");
    public volatile int _resumed;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public C1115m(h.c.b<?> r3, java.lang.Throwable r4, boolean r5) {
        /*
            r2 = this;
            java.lang.String r0 = "continuation"
            h.f.b.j.b(r3, r0)
            if (r4 == 0) goto L_0x0008
            goto L_0x0023
        L_0x0008:
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Continuation "
            r0.append(r1)
            r0.append(r3)
            java.lang.String r3 = " was cancelled normally"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            r4.<init>(r3)
        L_0x0023:
            r2.<init>(r4, r5)
            r3 = 0
            r2._resumed = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.C1115m.<init>(h.c.b, java.lang.Throwable, boolean):void");
    }

    public final boolean c() {
        return f14850c.compareAndSet(this, 0, 1);
    }
}
