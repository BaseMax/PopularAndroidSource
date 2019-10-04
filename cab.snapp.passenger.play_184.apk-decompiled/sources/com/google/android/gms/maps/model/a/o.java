package com.google.android.gms.maps.model.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;
import java.util.ArrayList;
import java.util.List;

public final class o extends oo implements m {
    o(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
    }

    public final int getActiveLevelIndex() throws RemoteException {
        Parcel a2 = a(1, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final List<IBinder> getLevels() throws RemoteException {
        Parcel a2 = a(3, a());
        ArrayList<IBinder> createBinderArrayList = a2.createBinderArrayList();
        a2.recycle();
        return createBinderArrayList;
    }

    public final int hashCodeRemote() throws RemoteException {
        Parcel a2 = a(6, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final boolean isUnderground() throws RemoteException {
        Parcel a2 = a(4, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean zzb(m mVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) mVar);
        Parcel a3 = a(5, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }
}
