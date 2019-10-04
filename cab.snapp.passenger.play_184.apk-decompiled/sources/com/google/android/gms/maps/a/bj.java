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
import com.google.android.gms.maps.StreetViewPanoramaOptions;

public final class bj extends oo implements h {
    bj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
    }

    /* JADX WARNING: type inference failed for: r2v1, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.maps.a.g getStreetViewPanorama() throws android.os.RemoteException {
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
            java.lang.String r2 = "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
            android.os.IInterface r2 = r1.queryLocalInterface(r2)
            boolean r3 = r2 instanceof com.google.android.gms.maps.a.g
            if (r3 == 0) goto L_0x001f
            r1 = r2
            com.google.android.gms.maps.a.g r1 = (com.google.android.gms.maps.a.g) r1
            goto L_0x0025
        L_0x001f:
            com.google.android.gms.maps.a.bi r2 = new com.google.android.gms.maps.a.bi
            r2.<init>(r1)
            r1 = r2
        L_0x0025:
            r0.recycle()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.bj.getStreetViewPanorama():com.google.android.gms.maps.a.g");
    }

    public final void getStreetViewPanoramaAsync(bd bdVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) bdVar);
        b(12, a2);
    }

    public final boolean isReady() throws RemoteException {
        Parcel a2 = a(11, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) bundle);
        b(3, a2);
    }

    public final a onCreateView(a aVar, a aVar2, Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        oq.zza(a2, (IInterface) aVar2);
        oq.zza(a2, (Parcelable) bundle);
        Parcel a3 = a(4, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final void onDestroy() throws RemoteException {
        b(8, a());
    }

    public final void onDestroyView() throws RemoteException {
        b(7, a());
    }

    public final void onInflate(a aVar, StreetViewPanoramaOptions streetViewPanoramaOptions, Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        oq.zza(a2, (Parcelable) streetViewPanoramaOptions);
        oq.zza(a2, (Parcelable) bundle);
        b(2, a2);
    }

    public final void onLowMemory() throws RemoteException {
        b(9, a());
    }

    public final void onPause() throws RemoteException {
        b(6, a());
    }

    public final void onResume() throws RemoteException {
        b(5, a());
    }

    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) bundle);
        Parcel a3 = a(10, a2);
        if (a3.readInt() != 0) {
            bundle.readFromParcel(a3);
        }
        a3.recycle();
    }
}
