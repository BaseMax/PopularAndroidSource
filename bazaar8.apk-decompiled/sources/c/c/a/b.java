package c.c.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: ILoginCheckService */
public interface b extends IInterface {

    /* compiled from: ILoginCheckService */
    public static abstract class a extends Binder implements b {
        public a() {
            attachInterface(this, "com.farsitel.bazaar.ILoginCheckService");
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface("com.farsitel.bazaar.ILoginCheckService");
                boolean v = v();
                parcel2.writeNoException();
                parcel2.writeInt(v ? 1 : 0);
                return true;
            } else if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            } else {
                parcel2.writeString("com.farsitel.bazaar.ILoginCheckService");
                return true;
            }
        }
    }

    boolean v();
}
