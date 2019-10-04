package c.c.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: IUpdateCheckService */
public interface c extends IInterface {

    /* compiled from: IUpdateCheckService */
    public static abstract class a extends Binder implements c {
        public a() {
            attachInterface(this, "com.farsitel.bazaar.IUpdateCheckService");
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface("com.farsitel.bazaar.IUpdateCheckService");
                long b2 = b(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeLong(b2);
                return true;
            } else if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            } else {
                parcel2.writeString("com.farsitel.bazaar.IUpdateCheckService");
                return true;
            }
        }
    }

    long b(String str);
}
