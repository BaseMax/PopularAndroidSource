package com.farsitel.bazaar.core.receiver;

import c.c.a.c.a.a;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import i.a.b.p;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.core.receiver.NetworkReceiver$onReceive$1$1", f = "NetworkReceiver.kt", l = {45}, m = "invokeSuspend")
/* compiled from: NetworkReceiver.kt */
final class NetworkReceiver$onReceive$1$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ Boolean $networkConnected;
    public int label;
    public H p$;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public NetworkReceiver$onReceive$1$1(Boolean bool, b bVar) {
        super(2, bVar);
        this.$networkConnected = bool;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        NetworkReceiver$onReceive$1$1 networkReceiver$onReceive$1$1 = new NetworkReceiver$onReceive$1$1(this.$networkConnected, bVar);
        networkReceiver$onReceive$1$1.p$ = (H) obj;
        return networkReceiver$onReceive$1$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((NetworkReceiver$onReceive$1$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            p b2 = c.c.a.d.e.b.f4783a;
            Boolean bool = this.$networkConnected;
            this.label = 1;
            if (a.a(b2, bool, (b<? super h>) this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return h.f14579a;
    }
}
