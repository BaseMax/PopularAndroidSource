package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.op;
import com.google.android.gms.internal.oq;

public abstract class t extends op implements s {
    public t() {
        attachInterface(this, "com.google.android.gms.common.internal.ICertData");
    }

    public static s zzam(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return queryLocalInterface instanceof s ? (s) queryLocalInterface : new u(iBinder);
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (a(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i == 1) {
            a zzaga = zzaga();
            parcel2.writeNoException();
            oq.zza(parcel2, (IInterface) zzaga);
        } else if (i != 2) {
            return false;
        } else {
            int zzagb = zzagb();
            parcel2.writeNoException();
            parcel2.writeInt(zzagb);
        }
        return true;
    }
}
