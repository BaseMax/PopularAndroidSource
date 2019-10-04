package a.a.b.c;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: IResultReceiver */
public interface a extends IInterface {

    /* renamed from: a.a.b.c.a$a  reason: collision with other inner class name */
    /* compiled from: IResultReceiver */
    public static abstract class C0006a extends Binder implements a {

        /* renamed from: a.a.b.c.a$a$a  reason: collision with other inner class name */
        /* compiled from: IResultReceiver */
        private static class C0007a implements a {

            /* renamed from: a  reason: collision with root package name */
            public IBinder f21a;

            public C0007a(IBinder iBinder) {
                this.f21a = iBinder;
            }

            public IBinder asBinder() {
                return this.f21a;
            }
        }

        public C0006a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof a)) {
                return new C0007a(iBinder);
            }
            return (a) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            } else {
                parcel2.writeString("android.support.v4.os.IResultReceiver");
                return true;
            }
        }
    }

    void a(int i2, Bundle bundle);
}
