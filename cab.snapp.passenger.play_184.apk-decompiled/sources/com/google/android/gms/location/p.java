package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.ej;

public final class p implements Parcelable.Creator<LocationSettingsResult> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        Status status = null;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 1) {
                status = (Status) ej.zza(parcel, readInt, Status.CREATOR);
            } else if (i != 2) {
                ej.zzb(parcel, readInt);
            } else {
                locationSettingsStates = (LocationSettingsStates) ej.zza(parcel, readInt, LocationSettingsStates.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new LocationSettingsResult(status, locationSettingsStates);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new LocationSettingsResult[i];
    }
}
