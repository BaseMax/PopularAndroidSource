package com.google.android.gms.location;

import android.os.Parcelable;

public final class am implements Parcelable.Creator<LocationAvailability> {
    /* JADX WARNING: type inference failed for: r2v3, types: [java.lang.Object[]] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object createFromParcel(android.os.Parcel r14) {
        /*
            r13 = this;
            int r0 = com.google.android.gms.internal.ej.zzd(r14)
            r1 = 1
            r2 = 1000(0x3e8, float:1.401E-42)
            r3 = 0
            r5 = 0
            r10 = r3
            r12 = r5
            r7 = 1000(0x3e8, float:1.401E-42)
            r8 = 1
            r9 = 1
        L_0x0010:
            int r2 = r14.dataPosition()
            if (r2 >= r0) goto L_0x004e
            int r2 = r14.readInt()
            r3 = 65535(0xffff, float:9.1834E-41)
            r3 = r3 & r2
            if (r3 == r1) goto L_0x0049
            r4 = 2
            if (r3 == r4) goto L_0x0044
            r4 = 3
            if (r3 == r4) goto L_0x003f
            r4 = 4
            if (r3 == r4) goto L_0x003a
            r4 = 5
            if (r3 == r4) goto L_0x0030
            com.google.android.gms.internal.ej.zzb(r14, r2)
            goto L_0x0010
        L_0x0030:
            android.os.Parcelable$Creator<com.google.android.gms.location.zzae> r3 = com.google.android.gms.location.zzae.CREATOR
            java.lang.Object[] r2 = com.google.android.gms.internal.ej.zzb(r14, r2, r3)
            r12 = r2
            com.google.android.gms.location.zzae[] r12 = (com.google.android.gms.location.zzae[]) r12
            goto L_0x0010
        L_0x003a:
            int r7 = com.google.android.gms.internal.ej.zzg(r14, r2)
            goto L_0x0010
        L_0x003f:
            long r10 = com.google.android.gms.internal.ej.zzi(r14, r2)
            goto L_0x0010
        L_0x0044:
            int r9 = com.google.android.gms.internal.ej.zzg(r14, r2)
            goto L_0x0010
        L_0x0049:
            int r8 = com.google.android.gms.internal.ej.zzg(r14, r2)
            goto L_0x0010
        L_0x004e:
            com.google.android.gms.internal.ej.zzaf(r14, r0)
            com.google.android.gms.location.LocationAvailability r14 = new com.google.android.gms.location.LocationAvailability
            r6 = r14
            r6.<init>(r7, r8, r9, r10, r12)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.am.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
