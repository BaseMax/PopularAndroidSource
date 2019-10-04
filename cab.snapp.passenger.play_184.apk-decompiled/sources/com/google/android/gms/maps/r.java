package com.google.android.gms.maps;

import android.os.Parcelable;

public final class r implements Parcelable.Creator<StreetViewPanoramaOptions> {
    /* JADX WARNING: type inference failed for: r1v3, types: [android.os.Parcelable] */
    /* JADX WARNING: type inference failed for: r1v4, types: [android.os.Parcelable] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object createFromParcel(android.os.Parcel r14) {
        /*
            r13 = this;
            int r0 = com.google.android.gms.internal.ej.zzd(r14)
            r1 = 0
            r2 = 0
            r4 = r1
            r5 = r4
            r6 = r5
            r7 = r6
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
        L_0x000f:
            int r1 = r14.dataPosition()
            if (r1 >= r0) goto L_0x005b
            int r1 = r14.readInt()
            r2 = 65535(0xffff, float:9.1834E-41)
            r2 = r2 & r1
            switch(r2) {
                case 2: goto L_0x0051;
                case 3: goto L_0x004c;
                case 4: goto L_0x0042;
                case 5: goto L_0x003d;
                case 6: goto L_0x0038;
                case 7: goto L_0x0033;
                case 8: goto L_0x002e;
                case 9: goto L_0x0029;
                case 10: goto L_0x0024;
                default: goto L_0x0020;
            }
        L_0x0020:
            com.google.android.gms.internal.ej.zzb(r14, r1)
            goto L_0x000f
        L_0x0024:
            byte r12 = com.google.android.gms.internal.ej.zze(r14, r1)
            goto L_0x000f
        L_0x0029:
            byte r11 = com.google.android.gms.internal.ej.zze(r14, r1)
            goto L_0x000f
        L_0x002e:
            byte r10 = com.google.android.gms.internal.ej.zze(r14, r1)
            goto L_0x000f
        L_0x0033:
            byte r9 = com.google.android.gms.internal.ej.zze(r14, r1)
            goto L_0x000f
        L_0x0038:
            byte r8 = com.google.android.gms.internal.ej.zze(r14, r1)
            goto L_0x000f
        L_0x003d:
            java.lang.Integer r7 = com.google.android.gms.internal.ej.zzh(r14, r1)
            goto L_0x000f
        L_0x0042:
            android.os.Parcelable$Creator<com.google.android.gms.maps.model.LatLng> r2 = com.google.android.gms.maps.model.LatLng.CREATOR
            android.os.Parcelable r1 = com.google.android.gms.internal.ej.zza(r14, r1, r2)
            r6 = r1
            com.google.android.gms.maps.model.LatLng r6 = (com.google.android.gms.maps.model.LatLng) r6
            goto L_0x000f
        L_0x004c:
            java.lang.String r5 = com.google.android.gms.internal.ej.zzq(r14, r1)
            goto L_0x000f
        L_0x0051:
            android.os.Parcelable$Creator<com.google.android.gms.maps.model.StreetViewPanoramaCamera> r2 = com.google.android.gms.maps.model.StreetViewPanoramaCamera.CREATOR
            android.os.Parcelable r1 = com.google.android.gms.internal.ej.zza(r14, r1, r2)
            r4 = r1
            com.google.android.gms.maps.model.StreetViewPanoramaCamera r4 = (com.google.android.gms.maps.model.StreetViewPanoramaCamera) r4
            goto L_0x000f
        L_0x005b:
            com.google.android.gms.internal.ej.zzaf(r14, r0)
            com.google.android.gms.maps.StreetViewPanoramaOptions r14 = new com.google.android.gms.maps.StreetViewPanoramaOptions
            r3 = r14
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.r.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new StreetViewPanoramaOptions[i];
    }
}
