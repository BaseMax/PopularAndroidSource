package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.oq;
import com.google.android.gms.maps.model.a.b;
import com.google.android.gms.maps.model.a.e;

public final class br extends oo implements bq {
    br(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICreator");
    }

    /* JADX WARNING: type inference failed for: r0v2, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.maps.a.e zza(com.google.android.gms.a.a r3, com.google.android.gms.maps.GoogleMapOptions r4) throws android.os.RemoteException {
        /*
            r2 = this;
            android.os.Parcel r0 = r2.a()
            com.google.android.gms.internal.oq.zza((android.os.Parcel) r0, (android.os.IInterface) r3)
            com.google.android.gms.internal.oq.zza((android.os.Parcel) r0, (android.os.Parcelable) r4)
            r3 = 3
            android.os.Parcel r3 = r2.a(r3, r0)
            android.os.IBinder r4 = r3.readStrongBinder()
            if (r4 != 0) goto L_0x0017
            r4 = 0
            goto L_0x002b
        L_0x0017:
            java.lang.String r0 = "com.google.android.gms.maps.internal.IMapViewDelegate"
            android.os.IInterface r0 = r4.queryLocalInterface(r0)
            boolean r1 = r0 instanceof com.google.android.gms.maps.a.e
            if (r1 == 0) goto L_0x0025
            r4 = r0
            com.google.android.gms.maps.a.e r4 = (com.google.android.gms.maps.a.e) r4
            goto L_0x002b
        L_0x0025:
            com.google.android.gms.maps.a.bw r0 = new com.google.android.gms.maps.a.bw
            r0.<init>(r4)
            r4 = r0
        L_0x002b:
            r3.recycle()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.br.zza(com.google.android.gms.a.a, com.google.android.gms.maps.GoogleMapOptions):com.google.android.gms.maps.a.e");
    }

    /* JADX WARNING: type inference failed for: r0v2, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.maps.a.i zza(com.google.android.gms.a.a r3, com.google.android.gms.maps.StreetViewPanoramaOptions r4) throws android.os.RemoteException {
        /*
            r2 = this;
            android.os.Parcel r0 = r2.a()
            com.google.android.gms.internal.oq.zza((android.os.Parcel) r0, (android.os.IInterface) r3)
            com.google.android.gms.internal.oq.zza((android.os.Parcel) r0, (android.os.Parcelable) r4)
            r3 = 7
            android.os.Parcel r3 = r2.a(r3, r0)
            android.os.IBinder r4 = r3.readStrongBinder()
            if (r4 != 0) goto L_0x0017
            r4 = 0
            goto L_0x002b
        L_0x0017:
            java.lang.String r0 = "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"
            android.os.IInterface r0 = r4.queryLocalInterface(r0)
            boolean r1 = r0 instanceof com.google.android.gms.maps.a.i
            if (r1 == 0) goto L_0x0025
            r4 = r0
            com.google.android.gms.maps.a.i r4 = (com.google.android.gms.maps.a.i) r4
            goto L_0x002b
        L_0x0025:
            com.google.android.gms.maps.a.bk r0 = new com.google.android.gms.maps.a.bk
            r0.<init>(r4)
            r4 = r0
        L_0x002b:
            r3.recycle()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.br.zza(com.google.android.gms.a.a, com.google.android.gms.maps.StreetViewPanoramaOptions):com.google.android.gms.maps.a.i");
    }

    /* JADX WARNING: type inference failed for: r1v1, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.maps.a.d zzaa(com.google.android.gms.a.a r4) throws android.os.RemoteException {
        /*
            r3 = this;
            android.os.Parcel r0 = r3.a()
            com.google.android.gms.internal.oq.zza((android.os.Parcel) r0, (android.os.IInterface) r4)
            r4 = 2
            android.os.Parcel r4 = r3.a(r4, r0)
            android.os.IBinder r0 = r4.readStrongBinder()
            if (r0 != 0) goto L_0x0014
            r0 = 0
            goto L_0x0028
        L_0x0014:
            java.lang.String r1 = "com.google.android.gms.maps.internal.IMapFragmentDelegate"
            android.os.IInterface r1 = r0.queryLocalInterface(r1)
            boolean r2 = r1 instanceof com.google.android.gms.maps.a.d
            if (r2 == 0) goto L_0x0022
            r0 = r1
            com.google.android.gms.maps.a.d r0 = (com.google.android.gms.maps.a.d) r0
            goto L_0x0028
        L_0x0022:
            com.google.android.gms.maps.a.bv r1 = new com.google.android.gms.maps.a.bv
            r1.<init>(r0)
            r0 = r1
        L_0x0028:
            r4.recycle()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.br.zzaa(com.google.android.gms.a.a):com.google.android.gms.maps.a.d");
    }

    /* JADX WARNING: type inference failed for: r1v1, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.maps.a.h zzab(com.google.android.gms.a.a r4) throws android.os.RemoteException {
        /*
            r3 = this;
            android.os.Parcel r0 = r3.a()
            com.google.android.gms.internal.oq.zza((android.os.Parcel) r0, (android.os.IInterface) r4)
            r4 = 8
            android.os.Parcel r4 = r3.a(r4, r0)
            android.os.IBinder r0 = r4.readStrongBinder()
            if (r0 != 0) goto L_0x0015
            r0 = 0
            goto L_0x0029
        L_0x0015:
            java.lang.String r1 = "com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate"
            android.os.IInterface r1 = r0.queryLocalInterface(r1)
            boolean r2 = r1 instanceof com.google.android.gms.maps.a.h
            if (r2 == 0) goto L_0x0023
            r0 = r1
            com.google.android.gms.maps.a.h r0 = (com.google.android.gms.maps.a.h) r0
            goto L_0x0029
        L_0x0023:
            com.google.android.gms.maps.a.bj r1 = new com.google.android.gms.maps.a.bj
            r1.<init>(r0)
            r0 = r1
        L_0x0029:
            r4.recycle()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.br.zzab(com.google.android.gms.a.a):com.google.android.gms.maps.a.h");
    }

    /* JADX WARNING: type inference failed for: r2v1, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.google.android.gms.maps.a.a zzawc() throws android.os.RemoteException {
        /*
            r4 = this;
            android.os.Parcel r0 = r4.a()
            r1 = 4
            android.os.Parcel r0 = r4.a(r1, r0)
            android.os.IBinder r1 = r0.readStrongBinder()
            if (r1 != 0) goto L_0x0011
            r1 = 0
            goto L_0x0025
        L_0x0011:
            java.lang.String r2 = "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
            android.os.IInterface r2 = r1.queryLocalInterface(r2)
            boolean r3 = r2 instanceof com.google.android.gms.maps.a.a
            if (r3 == 0) goto L_0x001f
            r1 = r2
            com.google.android.gms.maps.a.a r1 = (com.google.android.gms.maps.a.a) r1
            goto L_0x0025
        L_0x001f:
            com.google.android.gms.maps.a.an r2 = new com.google.android.gms.maps.a.an
            r2.<init>(r1)
            r1 = r2
        L_0x0025:
            r0.recycle()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.br.zzawc():com.google.android.gms.maps.a.a");
    }

    public final b zzawd() throws RemoteException {
        Parcel a2 = a(5, a());
        b zzbf = e.zzbf(a2.readStrongBinder());
        a2.recycle();
        return zzbf;
    }

    public final void zzi(a aVar, int i) throws RemoteException {
        Parcel a2 = a();
        oq.zza(a2, (IInterface) aVar);
        a2.writeInt(i);
        b(6, a2);
    }
}
