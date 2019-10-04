package com.farsitel.bazaar.data.extension;

import h.f.a.b;
import h.h;
import kotlin.jvm.internal.Lambda;
import l.C1158b;

/* compiled from: CallExt.kt */
final class CallExtKt$awaitEither$$inlined$suspendCancellableCoroutine$lambda$2 extends Lambda implements b<Throwable, h> {
    public final /* synthetic */ b $map$inlined;
    public final /* synthetic */ C1158b $this_awaitEither$inlined;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CallExtKt$awaitEither$$inlined$suspendCancellableCoroutine$lambda$2(C1158b bVar, b bVar2) {
        super(1);
        this.$this_awaitEither$inlined = bVar;
        this.$map$inlined = bVar2;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Throwable) obj);
        return h.f14579a;
    }

    public final void a(Throwable th) {
        this.$this_awaitEither$inlined.cancel();
    }
}
