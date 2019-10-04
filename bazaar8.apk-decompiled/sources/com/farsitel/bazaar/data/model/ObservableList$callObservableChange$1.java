package com.farsitel.bazaar.data.model;

import c.c.a.e.g.e;
import h.f.a.a;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: ObservableList.kt */
final class ObservableList$callObservableChange$1 extends Lambda implements a<h> {
    public final /* synthetic */ ObservableList this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ObservableList$callObservableChange$1(ObservableList observableList) {
        super(0);
        this.this$0 = observableList;
    }

    public final void invoke() {
        for (e a2 : this.this$0.observableListeners) {
            a2.a();
        }
    }
}
