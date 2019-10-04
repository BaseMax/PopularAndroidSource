package com.google.android.gms.maps.model.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class ab extends oo implements z {
    ab(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
    }

    public final void clearTileCache() throws RemoteException {
        b(2, a());
    }

    public final boolean getFadeIn() throws RemoteException {
        Parcel a2 = a(11, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final String getId() throws RemoteException {
        Parcel a2 = a(3, a());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    public final float getTransparency() throws RemoteException {
        Parcel a2 = a(13, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final float getZIndex() throws RemoteException {
        Parcel a2 = a(5, a());
        float readFloat = a2.readFloat();
        a2.recycle();
        return readFloat;
    }

    public final int hashCodeRemote() throws RemoteException {
        Parcel a2 = a(9, a());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final boolean isVisible() throws RemoteException {
        Parcel a2 = a(7, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final void remove() throws RemoteException {
        b(1, a());
    }

    public final void setFadeIn(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(10, a2);
    }

    public final void setTransparency(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(12, a2);
    }

    public final void setVisible(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(6, a2);
    }

    public final void setZIndex(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        b(4, a2);
    }

    public final boolean zza(z zVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) zVar);
        Parcel a3 = a(8, a2);
        boolean zza = oq.zza(a3);
        a3.recycle();
        return zza;
    }
}
