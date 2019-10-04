package com.google.android.gms.auth.api.credentials;

import android.os.Parcelable;

public final class c implements Parcelable.Creator<Credential> {
    /* JADX WARNING: type inference failed for: r1v3, types: [android.os.Parcelable] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object createFromParcel(android.os.Parcel r14) {
        /*
            r13 = this;
            int r0 = com.google.android.gms.internal.ej.zzd(r14)
            r1 = 0
            r3 = r1
            r4 = r3
            r5 = r4
            r6 = r5
            r7 = r6
            r8 = r7
            r9 = r8
            r10 = r9
            r11 = r10
            r12 = r11
        L_0x000f:
            int r1 = r14.dataPosition()
            if (r1 >= r0) goto L_0x005d
            int r1 = r14.readInt()
            r2 = 65535(0xffff, float:9.1834E-41)
            r2 = r2 & r1
            switch(r2) {
                case 1: goto L_0x0058;
                case 2: goto L_0x0053;
                case 3: goto L_0x0049;
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
            java.lang.String r12 = com.google.android.gms.internal.ej.zzq(r14, r1)
            goto L_0x000f
        L_0x0029:
            java.lang.String r11 = com.google.android.gms.internal.ej.zzq(r14, r1)
            goto L_0x000f
        L_0x002e:
            java.lang.String r10 = com.google.android.gms.internal.ej.zzq(r14, r1)
            goto L_0x000f
        L_0x0033:
            java.lang.String r9 = com.google.android.gms.internal.ej.zzq(r14, r1)
            goto L_0x000f
        L_0x0038:
            java.lang.String r8 = com.google.android.gms.internal.ej.zzq(r14, r1)
            goto L_0x000f
        L_0x003d:
            java.lang.String r7 = com.google.android.gms.internal.ej.zzq(r14, r1)
            goto L_0x000f
        L_0x0042:
            android.os.Parcelable$Creator<com.google.android.gms.auth.api.credentials.IdToken> r2 = com.google.android.gms.auth.api.credentials.IdToken.CREATOR
            java.util.ArrayList r6 = com.google.android.gms.internal.ej.zzc(r14, r1, r2)
            goto L_0x000f
        L_0x0049:
            android.os.Parcelable$Creator r2 = android.net.Uri.CREATOR
            android.os.Parcelable r1 = com.google.android.gms.internal.ej.zza(r14, r1, r2)
            r5 = r1
            android.net.Uri r5 = (android.net.Uri) r5
            goto L_0x000f
        L_0x0053:
            java.lang.String r4 = com.google.android.gms.internal.ej.zzq(r14, r1)
            goto L_0x000f
        L_0x0058:
            java.lang.String r3 = com.google.android.gms.internal.ej.zzq(r14, r1)
            goto L_0x000f
        L_0x005d:
            com.google.android.gms.internal.ej.zzaf(r14, r0)
            com.google.android.gms.auth.api.credentials.Credential r14 = new com.google.android.gms.auth.api.credentials.Credential
            r2 = r14
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.credentials.c.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Credential[i];
    }
}
