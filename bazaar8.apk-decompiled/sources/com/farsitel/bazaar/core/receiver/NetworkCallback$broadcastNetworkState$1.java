package com.farsitel.bazaar.core.receiver;

import c.c.a.d.e.a;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import i.a.b.p;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.core.receiver.NetworkCallback$broadcastNetworkState$1", f = "NetworkCallback.kt", l = {38}, m = "invokeSuspend")
/* compiled from: NetworkCallback.kt */
final class NetworkCallback$broadcastNetworkState$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ boolean $isConnected;
    public int label;
    public H p$;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public NetworkCallback$broadcastNetworkState$1(boolean z, b bVar) {
        super(2, bVar);
        this.$isConnected = z;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        NetworkCallback$broadcastNetworkState$1 networkCallback$broadcastNetworkState$1 = new NetworkCallback$broadcastNetworkState$1(this.$isConnected, bVar);
        networkCallback$broadcastNetworkState$1.p$ = (H) obj;
        return networkCallback$broadcastNetworkState$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((NetworkCallback$broadcastNetworkState$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            p a3 = a.f4781b;
            Boolean a4 = h.c.b.a.a.a(this.$isConnected);
            this.label = 1;
            if (c.c.a.c.a.a.a(a3, a4, (b<? super h>) this) == a2) {
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
