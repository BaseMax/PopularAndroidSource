package com.google.android.gms.maps.model.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class r extends oo implements p {
    r(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
    }

    public final void activate() throws RemoteException {
        b(3, a());
    }

    public final String getName() throws RemoteException {
        Parcel a2 = a(1, a());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    public final String getShortName() throws RemoteException {
        Parcel a2 = a(2, a());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    public final int hashCodeRemote() throws RemoteException {
        Parcel a2 = a(5, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final boolean zza(p pVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) pVar);
        Parcel a3 = a(4, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }
}
