package com.farsitel.bazaar.data.model;

import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: ObservableList.kt */
final class ObservableList$removeAt$1 extends Lambda implements a<E> {
    public final /* synthetic */ int $index;
    public final /* synthetic */ ObservableList this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ObservableList$removeAt$1(ObservableList observableList, int i2) {
        super(0);
        this.this$0 = observableList;
        this.$index = i2;
    }

    public final E invoke() {
        return ObservableList$removeAt$1.super.remove(this.$index);
    }
}
