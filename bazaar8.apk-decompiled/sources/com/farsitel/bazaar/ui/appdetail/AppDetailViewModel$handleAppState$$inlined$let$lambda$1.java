package com.farsitel.bazaar.ui.appdetail;

import c.c.a.e.d.b.ba;
import c.c.a.n.b.w;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import h.e;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: AppDetailViewModel.kt */
final class AppDetailViewModel$handleAppState$$inlined$let$lambda$1 extends SuspendLambda implements b<h.c.b<? super h>, Object> {
    public final /* synthetic */ AppInfoItem $appInfoItem$inlined;
    public final /* synthetic */ AppInfoItem $it;
    public int label;
    public final /* synthetic */ w this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailViewModel$handleAppState$$inlined$let$lambda$1(AppInfoItem appInfoItem, h.c.b bVar, w wVar, AppInfoItem appInfoItem2) {
        super(1, bVar);
        this.$it = appInfoItem;
        this.this$0 = wVar;
        this.$appInfoItem$inlined = appInfoItem2;
    }

    public final h.c.b<h> a(h.c.b<?> bVar) {
        j.b(bVar, "completion");
        return new AppDetailViewModel$handleAppState$$inlined$let$lambda$1(this.$it, bVar, this.this$0, this.$appInfoItem$inlined);
    }

    public final Object a(Object obj) {
        return ((AppDetailViewModel$handleAppState$$inlined$let$lambda$1) a((h.c.b<?>) (h.c.b) obj)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            ba k2 = this.this$0.w;
            UpgradableApp upgradableApp = new UpgradableApp(this.this$0.t(), this.$it.getName(), this.$it.isFree(), this.$it.getVersionCode(), true, true);
            this.label = 1;
            if (k2.a(upgradableApp, (h.c.b<? super h>) this) == a2) {
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
