package com.farsitel.bazaar.data.model;

import h.f.a.a;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: ObservableList.kt */
final class ObservableList$removeRange$1 extends Lambda implements a<h> {
    public final /* synthetic */ int $fromIndex;
    public final /* synthetic */ int $toIndex;
    public final /* synthetic */ ObservableList this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ObservableList$removeRange$1(ObservableList observableList, int i2, int i3) {
        super(0);
        this.this$0 = observableList;
        this.$fromIndex = i2;
        this.$toIndex = i3;
    }

    public final void invoke() {
        ObservableList$removeRange$1.super.removeRange(this.$fromIndex, this.$toIndex);
    }
}
