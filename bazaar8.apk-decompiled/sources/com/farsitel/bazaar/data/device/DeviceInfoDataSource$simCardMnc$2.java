package com.farsitel.bazaar.data.device;

import c.c.a.e.b.c;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: DeviceInfoDataSource.kt */
final class DeviceInfoDataSource$simCardMnc$2 extends Lambda implements a<Integer> {
    public final /* synthetic */ c this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DeviceInfoDataSource$simCardMnc$2(c cVar) {
        super(0);
        this.this$0 = cVar;
    }

    public final int invoke() {
        if (this.this$0.r().length > 1) {
            return this.this$0.r()[1];
        }
        return 0;
    }
}