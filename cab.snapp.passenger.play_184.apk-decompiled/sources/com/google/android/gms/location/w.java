package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.ActivityChooserView;
import com.google.android.gms.internal.ej;

public final class w implements Parcelable.Creator<zze> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = ej.zzd(parcel);
        long j = 50;
        long j2 = Long.MAX_VALUE;
        boolean z = true;
        float f = 0.0f;
        int i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                z = ej.zzc(parcel2, readInt);
            } else if (i2 == 2) {
                j = ej.zzi(parcel2, readInt);
            } else if (i2 == 3) {
                f = ej.zzl(parcel2, readInt);
            } else if (i2 == 4) {
                j2 = ej.zzi(parcel2, readInt);
            } else if (i2 != 5) {
                ej.zzb(parcel2, readInt);
            } else {
                i = ej.zzg(parcel2, readInt);
            }
        }
        ej.zzaf(parcel2, zzd);
        zze zze = new zze(z, j, f, j2, i);
        return zze;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zze[i];
    }
}
