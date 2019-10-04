package l;

import java.util.concurrent.CompletableFuture;
import l.C1163g;

/* renamed from: l.e  reason: case insensitive filesystem */
/* compiled from: CompletableFutureCallAdapterFactory */
class C1161e extends CompletableFuture<R> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1158b f15905a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1163g.a f15906b;

    public C1161e(C1163g.a aVar, C1158b bVar) {
        this.f15906b = aVar;
        this.f15905a = bVar;
    }

    public boolean cancel(boolean z) {
        if (z) {
            this.f15905a.cancel();
        }
        return super.cancel(z);
    }
}
