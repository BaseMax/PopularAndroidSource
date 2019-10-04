package l;

import java.util.concurrent.CompletableFuture;
import l.C1163g;

/* renamed from: l.h  reason: case insensitive filesystem */
/* compiled from: CompletableFutureCallAdapterFactory */
class C1164h extends CompletableFuture<D<R>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1158b f15912a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1163g.b f15913b;

    public C1164h(C1163g.b bVar, C1158b bVar2) {
        this.f15913b = bVar;
        this.f15912a = bVar2;
    }

    public boolean cancel(boolean z) {
        if (z) {
            this.f15912a.cancel();
        }
        return super.cancel(z);
    }
}
