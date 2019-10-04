package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.zzag;

public final class gz extends oo implements gy {
    gz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    public final void zza(long j, boolean z, PendingIntent pendingIntent) throws RemoteException {
        Parcel a2 = a();
        a2.writeLong(j);
        oq.zza(a2, true);
        oq.zza(a2, (Parcelable) pendingIntent);
        b(5, a2);
    }

    public final void zza(gt gtVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) gtVar);
        b(67, a2);
    }

    public final void zza(zzcdz zzcdz) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcdz);
        b(75, a2);
    }

    public final void zza(zzcfq zzcfq) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzcfq);
        b(59, a2);
    }

    public final void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, gw gwVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) geofencingRequest);
        oq.zza(a2, (Parcelable) pendingIntent);
        oq.zza(a2, (IInterface) gwVar);
        b(57, a2);
    }

    public final void zza(LocationSettingsRequest locationSettingsRequest, ha haVar, String str) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) locationSettingsRequest);
        oq.zza(a2, (IInterface) haVar);
        a2.writeString(str);
        b(63, a2);
    }

    public final void zza(zzag zzag, gw gwVar) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) zzag);
        oq.zza(a2, (IInterface) gwVar);
        b(74, a2);
    }

    public final void zzbj(boolean z) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, z);
        b(12, a2);
    }

    public final void zzc(PendingIntent pendingIntent) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) pendingIntent);
        b(6, a2);
    }

    public final void zzc(Location location) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (Parcelable) location);
        b(13, a2);
    }

    public final Location zzif(String str) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        Parcel a3 = a(21, a2);
        Location location = (Location) oq.zza(a3, Location.CREATOR);
        a3.recycle();
        return location;
    }

    public final LocationAvailability zzig(String str) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        Parcel a3 = a(34, a2);
        LocationAvailability locationAvailability = (LocationAvailability) oq.zza(a3, LocationAvailability.CREATOR);
        a3.recycle();
        return locationAvailability;
    }
}
