package io.reactivex.b;

import io.reactivex.internal.util.h;

final class a extends f<io.reactivex.e.a> {
    /* access modifiers changed from: protected */
    public final /* synthetic */ void a(Object obj) {
        try {
            ((io.reactivex.e.a) obj).run();
        } catch (Throwable th) {
            throw h.wrapOrThrow(th);
        }
    }

    a(io.reactivex.e.a aVar) {
        super(aVar);
    }
}
