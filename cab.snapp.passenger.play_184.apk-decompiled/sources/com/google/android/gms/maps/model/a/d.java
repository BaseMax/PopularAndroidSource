package com.google.android.gms.maps.model.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;
import com.google.android.gms.maps.model.Tile;

public final class d extends oo implements ac {
    d(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    }

    public final Tile getTile(int i, int i2, int i3) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(i);
        a2.writeInt(i2);
        a2.writeInt(i3);
        Parcel a3 = a(1, a2);
        Tile tile = (Tile) oq.zza(a3, Tile.CREATOR);
        a3.recycle();
        return tile;
    }
}
