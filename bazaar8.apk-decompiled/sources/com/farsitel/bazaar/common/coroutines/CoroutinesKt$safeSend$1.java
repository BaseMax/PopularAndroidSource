package com.farsitel.bazaar.common.coroutines;

import c.c.a.c.a.a;
import h.c.b;
import h.c.b.a.d;
import h.h;
import i.a.b.x;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "com.farsitel.bazaar.common.coroutines.CoroutinesKt", f = "Coroutines.kt", l = {26}, m = "safeSend")
/* compiled from: Coroutines.kt */
final class CoroutinesKt$safeSend$1 extends ContinuationImpl {
    public Object L$0;
    public Object L$1;
    public int label;
    public /* synthetic */ Object result;

    public CoroutinesKt$safeSend$1(b bVar) {
        super(bVar);
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return a.a((x) null, null, (b<? super h>) this);
    }
}
