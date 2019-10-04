package com.google.android.a.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface a extends IInterface {

    /* renamed from: com.google.android.a.a.a$a  reason: collision with other inner class name */
    public static abstract class C0057a extends Binder implements a {

        /* renamed from: com.google.android.a.a.a$a$a  reason: collision with other inner class name */
        static class C0058a implements a {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f2543a;

            public final String getInterfaceDescriptor() {
                return "com.google.android.finsky.externalreferrer.IGetInstallReferrerService";
            }

            C0058a(IBinder iBinder) {
                this.f2543a = iBinder;
            }

            public final IBinder asBinder() {
                return this.f2543a;
            }

            public final Bundle getInstallReferrer(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f2543a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public IBinder asBinder() {
            return this;
        }

        public C0057a() {
            attachInterface(this, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        }

        public static a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof a)) {
                return new C0058a(iBinder);
            }
            return (a) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                Bundle installReferrer = getInstallReferrer(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                if (installReferrer != null) {
                    parcel2.writeInt(1);
                    installReferrer.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel2.writeString("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
                return true;
            }
        }
    }

    Bundle getInstallReferrer(Bundle bundle) throws RemoteException;
}
