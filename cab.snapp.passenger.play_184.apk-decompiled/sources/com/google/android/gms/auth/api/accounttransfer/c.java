package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcelable;

public final class c implements Parcelable.Creator<zzs> {
    /* JADX WARNING: type inference failed for: r1v7, types: [android.os.Parcelable] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object createFromParcel(android.os.Parcel r10) {
        /*
            r9 = this;
            int r0 = com.google.android.gms.internal.ej.zzd(r10)
            java.util.HashSet r2 = new java.util.HashSet
            r2.<init>()
            r1 = 0
            r3 = 0
            r4 = r1
            r5 = r4
            r6 = r5
        L_0x000e:
            int r1 = r10.dataPosition()
            if (r1 >= r0) goto L_0x004c
            int r1 = r10.readInt()
            r7 = 65535(0xffff, float:9.1834E-41)
            r7 = r7 & r1
            r8 = 1
            if (r7 == r8) goto L_0x0040
            r8 = 2
            if (r7 == r8) goto L_0x0036
            r8 = 3
            if (r7 == r8) goto L_0x0031
            r8 = 4
            if (r7 == r8) goto L_0x002c
            com.google.android.gms.internal.ej.zzb(r10, r1)
            goto L_0x000e
        L_0x002c:
            java.lang.String r6 = com.google.android.gms.internal.ej.zzq(r10, r1)
            goto L_0x0044
        L_0x0031:
            java.lang.String r5 = com.google.android.gms.internal.ej.zzq(r10, r1)
            goto L_0x0044
        L_0x0036:
            android.os.Parcelable$Creator<com.google.android.gms.auth.api.accounttransfer.zzu> r4 = com.google.android.gms.auth.api.accounttransfer.zzu.CREATOR
            android.os.Parcelable r1 = com.google.android.gms.internal.ej.zza(r10, r1, r4)
            r4 = r1
            com.google.android.gms.auth.api.accounttransfer.zzu r4 = (com.google.android.gms.auth.api.accounttransfer.zzu) r4
            goto L_0x0044
        L_0x0040:
            int r3 = com.google.android.gms.internal.ej.zzg(r10, r1)
        L_0x0044:
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)
            r2.add(r1)
            goto L_0x000e
        L_0x004c:
            int r1 = r10.dataPosition()
            if (r1 != r0) goto L_0x0059
            com.google.android.gms.auth.api.accounttransfer.zzs r10 = new com.google.android.gms.auth.api.accounttransfer.zzs
            r1 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return r10
        L_0x0059:
            com.google.android.gms.internal.ek r1 = new com.google.android.gms.internal.ek
            r2 = 37
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r2)
            java.lang.String r2 = "Overread allowed size end="
            r3.append(r2)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r1.<init>(r0, r10)
            goto L_0x0073
        L_0x0072:
            throw r1
        L_0x0073:
            goto L_0x0072
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.accounttransfer.c.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzs[i];
    }
}
