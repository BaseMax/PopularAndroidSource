package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ej;

public final class b implements Parcelable.Creator<ProxyRequest> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        byte[] bArr = null;
        Bundle bundle = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            int i3 = 65535 & readInt;
            if (i3 == 1) {
                str = ej.zzq(parcel, readInt);
            } else if (i3 == 2) {
                i2 = ej.zzg(parcel, readInt);
            } else if (i3 == 3) {
                j = ej.zzi(parcel, readInt);
            } else if (i3 == 4) {
                bArr = ej.zzt(parcel, readInt);
            } else if (i3 == 5) {
                bundle = ej.zzs(parcel, readInt);
            } else if (i3 != 1000) {
                ej.zzb(parcel, readInt);
            } else {
                i = ej.zzg(parcel, readInt);
            }
        }
        ej.zzaf(parcel, zzd);
        ProxyRequest proxyRequest = new ProxyRequest(i, str, i2, j, bArr, bundle);
        return proxyRequest;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new ProxyRequest[i];
    }
}
