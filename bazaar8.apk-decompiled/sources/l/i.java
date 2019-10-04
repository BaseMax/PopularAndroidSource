package l;

import java.util.concurrent.CompletableFuture;
import l.C1163g;

/* compiled from: CompletableFutureCallAdapterFactory */
class i implements C1160d<R> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CompletableFuture f15914a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1163g.b f15915b;

    public i(C1163g.b bVar, CompletableFuture completableFuture) {
        this.f15915b = bVar;
        this.f15914a = completableFuture;
    }

    public void a(C1158b<R> bVar, D<R> d2) {
        this.f15914a.complete(d2);
    }

    public void a(C1158b<R> bVar, Throwable th) {
        this.f15914a.completeExceptionally(th);
    }
}
