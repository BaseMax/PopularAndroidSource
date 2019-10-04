package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class nw implements Parcelable.Creator<zzctx> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = ej.zzd(parcel);
        String str = null;
        byte[] bArr = null;
        byte[][] bArr2 = null;
        byte[][] bArr3 = null;
        byte[][] bArr4 = null;
        byte[][] bArr5 = null;
        int[] iArr = null;
        byte[][] bArr6 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str = ej.zzq(parcel, readInt);
                    break;
                case 3:
                    bArr = ej.zzt(parcel, readInt);
                    break;
                case 4:
                    bArr2 = ej.zzu(parcel, readInt);
                    break;
                case 5:
                    bArr3 = ej.zzu(parcel, readInt);
                    break;
                case 6:
                    bArr4 = ej.zzu(parcel, readInt);
                    break;
                case 7:
                    bArr5 = ej.zzu(parcel, readInt);
                    break;
                case 8:
                    iArr = ej.zzw(parcel, readInt);
                    break;
                case 9:
                    bArr6 = ej.zzu(parcel, readInt);
                    break;
                default:
                    ej.zzb(parcel, readInt);
                    break;
            }
        }
        ej.zzaf(parcel, zzd);
        zzctx zzctx = new zzctx(str, bArr, bArr2, bArr3, bArr4, bArr5, iArr, bArr6);
        return zzctx;
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzctx[i];
    }
}
