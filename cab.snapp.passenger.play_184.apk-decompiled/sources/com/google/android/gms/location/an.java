package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.ActivityChooserView;
import com.google.android.gms.internal.ej;

public final class an implements Parcelable.Creator<LocationRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = ej.zzd(parcel);
        long j = 3600000;
        long j2 = 600000;
        long j3 = Long.MAX_VALUE;
        long j4 = 0;
        int i = 102;
        boolean z = false;
        int i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        float f = 0.0f;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = ej.zzg(parcel2, readInt);
                    break;
                case 2:
                    j = ej.zzi(parcel2, readInt);
                    break;
                case 3:
                    j2 = ej.zzi(parcel2, readInt);
                    break;
                case 4:
                    z = ej.zzc(parcel2, readInt);
                    break;
                case 5:
                    j3 = ej.zzi(parcel2, readInt);
                    break;
                case 6:
                    i2 = ej.zzg(parcel2, readInt);
                    break;
                case 7:
                    f = ej.zzl(parcel2, readInt);
                    break;
                case 8:
                    j4 = ej.zzi(parcel2, readInt);
                    break;
                default:
                    ej.zzb(parcel2, readInt);
                    break;
            }
        }
        ej.zzaf(parcel2, zzd);
        LocationRequest locationRequest = new LocationRequest(i, j, j2, z, j3, i2, f, j4);
        return locationRequest;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new LocationRequest[i];
    }
}
