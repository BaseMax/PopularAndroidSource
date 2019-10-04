package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class q implements Parcelable.Creator<LocationSettingsStates> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    z = ej.zzc(parcel, readInt);
                    break;
                case 2:
                    z2 = ej.zzc(parcel, readInt);
                    break;
                case 3:
                    z3 = ej.zzc(parcel, readInt);
                    break;
                case 4:
                    z4 = ej.zzc(parcel, readInt);
                    break;
                case 5:
                    z5 = ej.zzc(parcel, readInt);
                    break;
                case 6:
                    z6 = ej.zzc(parcel, readInt);
                    break;
                default:
                    ej.zzb(parcel, readInt);
                    break;
            }
        }
        ej.zzaf(parcel, zzd);
        LocationSettingsStates locationSettingsStates = new LocationSettingsStates(z, z2, z3, z4, z5, z6);
        return locationSettingsStates;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new LocationSettingsStates[i];
    }
}
