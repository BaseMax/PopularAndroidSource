package com.google.android.gms.maps.model.a;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class f extends oo implements b {
    f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    }

    public final a zzawg() throws RemoteException {
        Parcel a2 = a(4, a());
        a zzaq = a.C0060a.zzaq(a2.readStrongBinder());
        a2.recycle();
        return zzaq;
    }

    public final a zzd(Bitmap bitmap) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) bitmap);
        Parcel a3 = a(6, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a zze(float f) throws RemoteException {
        Parcel a2 = a();
        a2.writeFloat(f);
        Parcel a3 = a(5, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a zzea(int i) throws RemoteException {
        Parcel a2 = a();
        a2.writeInt(i);
        Parcel a3 = a(1, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a zzin(String str) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        Parcel a3 = a(2, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a zzio(String str) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        Parcel a3 = a(3, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final a zzip(String str) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        Parcel a3 = a(7, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }
}
