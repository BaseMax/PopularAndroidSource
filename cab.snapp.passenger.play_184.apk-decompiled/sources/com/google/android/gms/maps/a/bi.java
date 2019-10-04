package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public final class bi extends oo implements g {
    bi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
    }

    public final void animateTo(StreetViewPanoramaCamera streetViewPanoramaCamera, long j) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) streetViewPanoramaCamera);
        a2.writeLong(j);
        b(9, a2);
    }

    public final void enablePanning(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(2, a2);
    }

    public final void enableStreetNames(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(4, a2);
    }

    public final void enableUserNavigation(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(3, a2);
    }

    public final void enableZoom(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(1, a2);
    }

    public final StreetViewPanoramaCamera getPanoramaCamera() throws RemoteException {
        Parcel a2 = a(10, a());
        StreetViewPanoramaCamera streetViewPanoramaCamera = (StreetViewPanoramaCamera) oq.zza(a2, StreetViewPanoramaCamera.CREATOR);
        a2.recycle();
        return streetViewPanoramaCamera;
    }

    public final StreetViewPanoramaLocation getStreetViewPanoramaLocation() throws RemoteException {
        Parcel a2 = a(14, a());
        StreetViewPanoramaLocation streetViewPanoramaLocation = (StreetViewPanoramaLocation) oq.zza(a2, StreetViewPanoramaLocation.CREATOR);
        a2.recycle();
        return streetViewPanoramaLocation;
    }

    public final boolean isPanningGesturesEnabled() throws RemoteException {
        Parcel a2 = a(6, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isStreetNamesEnabled() throws RemoteException {
        Parcel a2 = a(8, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isUserNavigationEnabled() throws RemoteException {
        Parcel a2 = a(7, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final boolean isZoomGesturesEnabled() throws RemoteException {
        Parcel a2 = a(5, a());
        boolean zza = oq.zza(a2);
        a2.recycle();
        return zza;
    }

    public final a orientationToPoint(StreetViewPanoramaOrientation streetViewPanoramaOrientation) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) streetViewPanoramaOrientation);
        Parcel a3 = a(19, a2);
        a zzaq = a.C0060a.zzaq(a3.readStrongBinder());
        a3.recycle();
        return zzaq;
    }

    public final StreetViewPanoramaOrientation pointToOrientation(a aVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        Parcel a3 = a(18, a2);
        StreetViewPanoramaOrientation streetViewPanoramaOrientation = (StreetViewPanoramaOrientation) oq.zza(a3, StreetViewPanoramaOrientation.CREATOR);
        a3.recycle();
        return streetViewPanoramaOrientation;
    }

    public final void setOnStreetViewPanoramaCameraChangeListener(av avVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) avVar);
        b(16, a2);
    }

    public final void setOnStreetViewPanoramaChangeListener(ax axVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) axVar);
        b(15, a2);
    }

    public final void setOnStreetViewPanoramaClickListener(az azVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) azVar);
        b(17, a2);
    }

    public final void setOnStreetViewPanoramaLongClickListener(bb bbVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) bbVar);
        b(20, a2);
    }

    public final void setPosition(LatLng latLng) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLng);
        b(12, a2);
    }

    public final void setPositionWithID(String str) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        b(11, a2);
    }

    public final void setPositionWithRadius(LatLng latLng, int i) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) latLng);
        a2.writeInt(i);
        b(13, a2);
    }
}
