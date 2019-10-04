package com.farsitel.bazaar.data.model;

import c.c.a.e.g.e;
import h.f.a.a;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: ObservableList.kt */
final class ObservableList$addObservableListener$1 extends Lambda implements a<h> {
    public final /* synthetic */ e $observableListener;
    public final /* synthetic */ ObservableList this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ObservableList$addObservableListener$1(ObservableList observableList, e eVar) {
        super(0);
        this.this$0 = observableList;
        this.$observableListener = eVar;
    }

    public final void invoke() {
        this.this$0.observableListeners.add(this.$observableListener);
    }
}
