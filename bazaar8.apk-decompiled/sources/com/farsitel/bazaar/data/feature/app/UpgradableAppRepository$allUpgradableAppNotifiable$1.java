package com.farsitel.bazaar.data.feature.app;

import c.c.a.e.d.b.ba;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.c.b;
import h.c.b.a.d;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "com.farsitel.bazaar.data.feature.app.UpgradableAppRepository", f = "UpgradableAppRepository.kt", l = {131}, m = "allUpgradableAppNotifiable")
/* compiled from: UpgradableAppRepository.kt */
final class UpgradableAppRepository$allUpgradableAppNotifiable$1 extends ContinuationImpl {
    public Object L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ba this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UpgradableAppRepository$allUpgradableAppNotifiable$1(ba baVar, b bVar) {
        super(bVar);
        this.this$0 = baVar;
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.b((b<? super List<ListItem.App>>) this);
    }
}
