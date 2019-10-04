package com.farsitel.bazaar.app.notification.type;

import h.c.b;
import h.c.b.a.d;
import h.h;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "com.farsitel.bazaar.app.notification.type.UpgradableAppsNotification", f = "UpgradableAppsNotification.kt", l = {57, 60, 65, 74}, m = "requestToShow")
/* compiled from: UpgradableAppsNotification.kt */
final class UpgradableAppsNotification$requestToShow$1 extends ContinuationImpl {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public boolean Z$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ c.c.a.b.f.a.d this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UpgradableAppsNotification$requestToShow$1(c.c.a.b.f.a.d dVar, b bVar) {
        super(bVar);
        this.this$0 = dVar;
    }

    public final Object d(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a((b<? super h>) this);
    }
}
