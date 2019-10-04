package com.google.android.gms.maps.model.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.Tile;

public interface ac extends IInterface {
    Tile getTile(int i, int i2, int i3) throws RemoteException;
}
