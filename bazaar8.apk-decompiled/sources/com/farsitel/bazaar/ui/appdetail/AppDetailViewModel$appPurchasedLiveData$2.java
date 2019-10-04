package com.farsitel.bazaar.ui.appdetail;

import androidx.lifecycle.LiveData;
import c.c.a.n.b.w;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: AppDetailViewModel.kt */
final class AppDetailViewModel$appPurchasedLiveData$2 extends Lambda implements a<LiveData<Boolean>> {
    public final /* synthetic */ w this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailViewModel$appPurchasedLiveData$2(w wVar) {
        super(0);
        this.this$0 = wVar;
    }

    public final LiveData<Boolean> invoke() {
        return this.this$0.y.a(this.this$0.t());
    }
}
