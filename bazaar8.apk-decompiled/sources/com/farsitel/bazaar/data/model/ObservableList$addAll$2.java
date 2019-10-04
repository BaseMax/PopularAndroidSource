package com.farsitel.bazaar.data.model;

import h.f.a.a;
import java.util.Collection;
import kotlin.jvm.internal.Lambda;

/* compiled from: ObservableList.kt */
final class ObservableList$addAll$2 extends Lambda implements a<Boolean> {
    public final /* synthetic */ Collection $elements;
    public final /* synthetic */ int $index;
    public final /* synthetic */ ObservableList this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ObservableList$addAll$2(ObservableList observableList, int i2, Collection collection) {
        super(0);
        this.this$0 = observableList;
        this.$index = i2;
        this.$elements = collection;
    }

    public final boolean invoke() {
        return ObservableList$addAll$2.super.addAll(this.$index, this.$elements);
    }
}
