package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.op;

public interface c extends IInterface {

    public static abstract class a extends op implements c {
        public a() {
            attachInterface(this, "com.google.android.gms.maps.internal.ILocationSourceDelegate");
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
                if (r2 == r0) goto L_0x0013
                r3 = 2
                if (r2 == r3) goto L_0x000f
                r2 = 0
                return r2
            L_0x000f:
                r1.deactivate()
                goto L_0x0032
            L_0x0013:
                android.os.IBinder r2 = r3.readStrongBinder()
                if (r2 != 0) goto L_0x001b
                r2 = 0
                goto L_0x002f
            L_0x001b:
                java.lang.String r3 = "com.google.android.gms.maps.internal.IOnLocationChangeListener"
                android.os.IInterface r3 = r2.queryLocalInterface(r3)
                boolean r5 = r3 instanceof com.google.android.gms.maps.a.u
                if (r5 == 0) goto L_0x0029
                r2 = r3
                com.google.android.gms.maps.a.u r2 = (com.google.android.gms.maps.a.u) r2
                goto L_0x002f
            L_0x0029:
                com.google.android.gms.maps.a.v r3 = new com.google.android.gms.maps.a.v
                r3.<init>(r2)
                r2 = r3
            L_0x002f:
                r1.activate(r2)
            L_0x0032:
                r4.writeNoException()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.c.a.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
        }
    }

    void activate(u uVar) throws RemoteException;

    void deactivate() throws RemoteException;
}
