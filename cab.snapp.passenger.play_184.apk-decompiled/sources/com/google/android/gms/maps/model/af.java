package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class af implements Parcelable.Creator<TileOverlayOptions> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        IBinder iBinder = null;
        boolean z = false;
        float f = 0.0f;
        boolean z2 = true;
        float f2 = 0.0f;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i = 65535 & readInt;
            if (i == 2) {
                iBinder = ej.zzr(parcel, readInt);
            } else if (i == 3) {
                z = ej.zzc(parcel, readInt);
            } else if (i == 4) {
                f = ej.zzl(parcel, readInt);
            } else if (i == 5) {
                z2 = ej.zzc(parcel, readInt);
            } else if (i != 6) {
                ej.zzb(parcel, readInt);
            } else {
                f2 = ej.zzl(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        TileOverlayOptions tileOverlayOptions = new TileOverlayOptions(iBinder, z, f, z2, f2);
        return tileOverlayOptions;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new TileOverlayOptions[i];
    }
}
