package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class b implements Parcelable.Creator<AccountChangeEventsRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        int i = 0;
        String str = null;
        Account account = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                i = ej.zzg(parcel, readInt);
            } else if (i3 == 2) {
                i2 = ej.zzg(parcel, readInt);
            } else if (i3 == 3) {
                str = ej.zzq(parcel, readInt);
            } else if (i3 != 4) {
                ej.zzb(parcel, readInt);
            } else {
                account = (Account) ej.zza(parcel, readInt, Account.CREATOR);
            }
        }
        ej.zzaf(parcel, zzd);
        return new AccountChangeEventsRequest(i, i2, str, account);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new AccountChangeEventsRequest[i];
    }
}
