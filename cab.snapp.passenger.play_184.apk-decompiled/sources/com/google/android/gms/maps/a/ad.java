package com.google.android.gms.maps.a;

import com.google.android.gms.internal.op;

public abstract class ad extends op implements ac {
    public ad() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnMapReadyCallback");
    }

    /* JADX WARNING: type inference failed for: r3v2, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTransact(int r2, android.os.Parcel r3, android.os.Parcel r4, int r5) throws android.os.RemoteException {
        /*
            r1 = this;
            boolean r5 = r1.a(r2, r3, r4, r5)
            r0 = 1
            if (r5 == 0) goto L_0x0008
            return r0
        L_0x0008:
            if (r2 != r0) goto L_0x002d
            android.os.IBinder r2 = r3.readStrongBinder()
            if (r2 != 0) goto L_0x0012
            r2 = 0
            goto L_0x0026
        L_0x0012:
            java.lang.String r3 = "com.google.android.gms.maps.internal.IGoogleMapDelegate"
            android.os.IInterface r3 = r2.queryLocalInterface(r3)
            boolean r5 = r3 instanceof com.google.android.gms.maps.a.b
            if (r5 == 0) goto L_0x0020
            r2 = r3
            com.google.android.gms.maps.a.b r2 = (com.google.android.gms.maps.a.b) r2
            goto L_0x0026
        L_0x0020:
            com.google.android.gms.maps.a.bs r3 = new com.google.android.gms.maps.a.bs
            r3.<init>(r2)
            r2 = r3
        L_0x0026:
            r1.zza(r2)
            r4.writeNoException()
            return r0
        L_0x002d:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.ad.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
