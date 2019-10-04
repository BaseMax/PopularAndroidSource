package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;

public final class bm extends oo implements bl {
    bm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.analytics.internal.IAnalyticsService");
    }

    public final void zza(Map map, long j, String str, List<zzaqx> list) throws RemoteException {
        Parcel a2 = a();
        a2.writeMap(map);
        a2.writeLong(j);
        a2.writeString(str);
        a2.writeTypedList(list);
        b(1, a2);
    }

    public final void zzwm() throws RemoteException {
        b(2, a());
    }
}
