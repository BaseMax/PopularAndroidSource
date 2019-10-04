package com.farsitel.bazaar.data.device;

import android.util.DisplayMetrics;
import android.view.WindowManager;
import c.c.a.e.b.c;
import h.f.a.a;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Lambda;

/* compiled from: DeviceInfoDataSource.kt */
final class DeviceInfoDataSource$dpi$2 extends Lambda implements a<Integer> {
    public final /* synthetic */ c this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DeviceInfoDataSource$dpi$2(c cVar) {
        super(0);
        this.this$0 = cVar;
    }

    public final int invoke() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Object systemService = this.this$0.q.getSystemService("window");
        if (systemService != null) {
            ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
            return displayMetrics.densityDpi;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
    }
}
