package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;
import java.util.ArrayList;

public final class c implements Parcelable.Creator<AccountChangeEventsResponse> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        ArrayList<AccountChangeEvent> arrayList = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i2 = 65535 & readInt;
            if (i2 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i2 != 2) {
                ej.zzb(parcel, readInt);
            } else {
                arrayList = ej.zzc(parcel, readInt, AccountChangeEvent.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new AccountChangeEventsResponse(i, arrayList);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new AccountChangeEventsResponse[i];
    }
}
