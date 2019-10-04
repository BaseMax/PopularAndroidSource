package com.google.android.gms.maps.a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;

public final class bw extends oo implements e {
    bw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IMapViewDelegate");
    }

    /* JADX WARNING: type inference failed for: r2v1, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.maps.a.b getMap() throws android.os.RemoteException {
        /*
            r4 = this;
            android.os.Parcel r0 = r4.a()
            r1 = 1
            android.os.Parcel r0 = r4.a(r1, r0)
            android.os.IBinder r1 = r0.readStrongBinder()
            if (r1 != 0) goto L_0x0011
            r1 = 0
            goto L_0x0025
        L_0x0011:
            java.lang.String r2 = "com.google.android.gms.maps.internal.IGoogleMapDelegate"
            android.os.IInterface r2 = r1.queryLocalInterface(r2)
            boolean r3 = r2 instanceof com.google.android.gms.maps.a.b
            if (r3 == 0) goto L_0x001f
            r1 = r2
            com.google.android.gms.maps.a.b r1 = (com.google.android.gms.maps.a.b) r1
            goto L_0x0025
        L_0x001f:
            com.google.android.gms.maps.a.bs r2 = new com.google.android.gms.maps.a.bs
            r2.<init>(r1)
            r1 = r2
        L_0x0025:
            r0.recycle()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.bw.getMap():com.google.android.gms.maps.a.b");
    }

    public final void getMapAsync(ac acVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) acVar);
        b(9, a2);
    }

    public final a getView() throws RemoteException {
        Parcel a2 = a(8, a());
        a zzaq = a.C0060a.zzaq(a2.readStrongBinder());
        a2.recycle();
        return zzaq;
    }

    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) bundle);
        b(2, a2);
    }

    public final void onDestroy() throws RemoteException {
        b(5, a());
    }

    public final void onEnterAmbient(Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) bundle);
        b(10, a2);
    }

    public final void onExitAmbient() throws RemoteException {
        b(11, a());
    }

    public final void onLowMemory() throws RemoteException {
        b(6, a());
    }

    public final void onPause() throws RemoteException {
        b(4, a());
    }

    public final void onResume() throws RemoteException {
        b(3, a());
    }

    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) bundle);
        Parcel a3 = a(7, a2);
        if (a3.readInt() != 0) {
            bundle.readFromParcel(a3);
        }
        a3.recycle();
    }

    public final void onStart() throws RemoteException {
        b(12, a());
    }

    public final void onStop() throws RemoteException {
        b(13, a());
    }
}
