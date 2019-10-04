package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import io.fabric.sdk.android.services.common.e;

public final class tl extends oo implements tj {
    tl(IBinder iBinder) {
        super(iBinder, e.b.ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
    }

    public final String getId() throws RemoteException {
        Parcel a2 = a(1, a());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    public final boolean zzb(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, true);
        Parcel a3 = a(2, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }

    public final boolean zzbp() throws RemoteException {
        Parcel a2 = a(6, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }
}
