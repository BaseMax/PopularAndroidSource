package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

final class y implements x {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f2979a;

    y(IBinder iBinder) {
        this.f2979a = iBinder;
    }

    public final IBinder asBinder() {
        return this.f2979a;
    }

    public final void zza(v vVar, zzz zzz) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(vVar.asBinder());
            obtain.writeInt(1);
            zzz.writeToParcel(obtain, 0);
            this.f2979a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
