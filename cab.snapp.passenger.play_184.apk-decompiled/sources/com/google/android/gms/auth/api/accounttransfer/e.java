package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class e implements Parcelable.Creator<DeviceMetaData> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        long j = 0;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 == 2) {
                z = ej.zzc(parcel, readInt);
            } else if (i2 == 3) {
                j = ej.zzi(parcel, readInt);
            } else if (i2 != 4) {
                ej.zzb(parcel, readInt);
            } else {
                z2 = ej.zzc(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        DeviceMetaData deviceMetaData = new DeviceMetaData(i, z, j, z2);
        return deviceMetaData;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new DeviceMetaData[i];
    }
}
