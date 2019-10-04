package l;

import java.util.concurrent.CompletableFuture;
import l.C1163g;
import retrofit2.HttpException;

/* renamed from: l.f  reason: case insensitive filesystem */
/* compiled from: CompletableFutureCallAdapterFactory */
class C1162f implements C1160d<R> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CompletableFuture f15907a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1163g.a f15908b;

    public C1162f(C1163g.a aVar, CompletableFuture completableFuture) {
        this.f15908b = aVar;
        this.f15907a = completableFuture;
    }

    public void a(C1158b<R> bVar, D<R> d2) {
        if (d2.d()) {
            this.f15907a.complete(d2.a());
        } else {
            this.f15907a.completeExceptionally(new HttpException(d2));
        }
    }

    public void a(C1158b<R> bVar, Throwable th) {
        this.f15907a.completeExceptionally(th);
    }
}
