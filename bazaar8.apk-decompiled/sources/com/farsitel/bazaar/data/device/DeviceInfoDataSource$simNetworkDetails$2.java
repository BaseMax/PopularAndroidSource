package com.farsitel.bazaar.data.device;

import android.telephony.TelephonyManager;
import c.c.a.e.b.c;
import h.f.a.a;
import h.f.b.j;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Lambda;

/* compiled from: DeviceInfoDataSource.kt */
final class DeviceInfoDataSource$simNetworkDetails$2 extends Lambda implements a<int[]> {
    public final /* synthetic */ c this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DeviceInfoDataSource$simNetworkDetails$2(c cVar) {
        super(0);
        this.this$0 = cVar;
    }

    public final int[] invoke() {
        Object systemService = this.this$0.q.getSystemService("phone");
        if (systemService != null) {
            String networkOperator = ((TelephonyManager) systemService).getNetworkOperator();
            if (networkOperator != null) {
                try {
                    if (networkOperator.length() > 3) {
                        String substring = networkOperator.substring(0, 3);
                        j.a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        String substring2 = networkOperator.substring(3);
                        j.a((Object) substring2, "(this as java.lang.String).substring(startIndex)");
                        return new int[]{Integer.parseInt(substring), Integer.parseInt(substring2)};
                    }
                } catch (NumberFormatException e2) {
                    c.c.a.c.c.a.f4699b.b(new Throwable("telephony manager : network", e2));
                }
            }
            return new int[]{0, 0};
        }
        throw new TypeCastException("null cannot be cast to non-null type android.telephony.TelephonyManager");
    }
}
