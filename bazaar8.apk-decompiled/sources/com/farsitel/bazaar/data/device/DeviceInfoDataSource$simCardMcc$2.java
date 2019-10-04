package com.farsitel.bazaar.data.device;

import c.c.a.e.b.c;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: DeviceInfoDataSource.kt */
final class DeviceInfoDataSource$simCardMcc$2 extends Lambda implements a<Integer> {
    public final /* synthetic */ c this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DeviceInfoDataSource$simCardMcc$2(c cVar) {
        super(0);
        this.this$0 = cVar;
    }

    public final int invoke() {
        if (!(this.this$0.r().length == 0)) {
            return this.this$0.r()[0];
        }
        return 0;
    }
}
