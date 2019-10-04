package com.farsitel.bazaar.data.model;

import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: ObservableList.kt */
final class ObservableList$remove$1 extends Lambda implements a<Boolean> {
    public final /* synthetic */ Object $element;
    public final /* synthetic */ ObservableList this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ObservableList$remove$1(ObservableList observableList, Object obj) {
        super(0);
        this.this$0 = observableList;
        this.$element = obj;
    }

    public final boolean invoke() {
        return ObservableList$remove$1.super.remove(this.$element);
    }
}
