package c.a.a.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: IInAppBillingService */
public interface a extends IInterface {

    /* renamed from: c.a.a.a.a$a  reason: collision with other inner class name */
    /* compiled from: IInAppBillingService */
    public static abstract class C0051a extends Binder implements a {
        public C0051a() {
            attachInterface(this, "com.android.vending.billing.IInAppBillingService");
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                int a2 = a(parcel.readInt(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(a2);
                return true;
            } else if (i2 == 2) {
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                Bundle a3 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                if (a3 != null) {
                    parcel2.writeInt(1);
                    a3.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i2 == 3) {
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                Bundle a4 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                if (a4 != null) {
                    parcel2.writeInt(1);
                    a4.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i2 == 4) {
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                Bundle a5 = a(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                if (a5 != null) {
                    parcel2.writeInt(1);
                    a5.writeToParcel(parcel2, 1);
                } else {
                    parcel2.writeInt(0);
                }
                return true;
            } else if (i2 == 5) {
                parcel.enforceInterface("com.android.vending.billing.IInAppBillingService");
                int b2 = b(parcel.readInt(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(b2);
                return true;
            } else if (i2 != 1598968902) {
                return super.onTransact(i2, parcel, parcel2, i3);
            } else {
                parcel2.writeString("com.android.vending.billing.IInAppBillingService");
                return true;
            }
        }
    }

    int a(int i2, String str, String str2);

    Bundle a(int i2, String str, String str2, Bundle bundle);

    Bundle a(int i2, String str, String str2, String str3);

    Bundle a(int i2, String str, String str2, String str3, String str4);

    int b(int i2, String str, String str2);
}
