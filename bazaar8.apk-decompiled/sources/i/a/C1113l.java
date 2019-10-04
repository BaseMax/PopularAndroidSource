package i.a;

import h.f.a.b;
import h.f.b.j;
import h.h;
import i.a.c.k;

/* renamed from: i.a.l  reason: case insensitive filesystem */
/* compiled from: CancellableContinuation.kt */
public final class C1113l {
    public static final void a(C1109j<?> jVar, k kVar) {
        j.b(jVar, "$this$removeOnCancellation");
        j.b(kVar, "node");
        jVar.a((b<? super Throwable, h>) new Ha(kVar));
    }

    public static final void a(C1109j<?> jVar, X x) {
        j.b(jVar, "$this$disposeOnCancellation");
        j.b(x, "handle");
        jVar.a((b<? super Throwable, h>) new Y(x));
    }
}
