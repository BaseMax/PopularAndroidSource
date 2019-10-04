package com.farsitel.bazaar.data.model;

import h.f.a.a;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: ObservableList.kt */
final class ObservableList$add$2 extends Lambda implements a<h> {
    public final /* synthetic */ Object $element;
    public final /* synthetic */ int $index;
    public final /* synthetic */ ObservableList this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ObservableList$add$2(ObservableList observableList, int i2, Object obj) {
        super(0);
        this.this$0 = observableList;
        this.$index = i2;
        this.$element = obj;
    }

    public final void invoke() {
        ObservableList$add$2.super.add(this.$index, this.$element);
    }
}
