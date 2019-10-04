package c.e.a.b.g.f;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: c.e.a.b.g.f.s  reason: case insensitive filesystem */
public class C0869s extends Binder implements IInterface {
    public C0869s(String str) {
        attachInterface(this, str);
    }

    public boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
        throw null;
    }

    public IBinder asBinder() {
        return this;
    }

    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        boolean z;
        if (i2 > 16777215) {
            z = super.onTransact(i2, parcel, parcel2, i3);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            z = false;
        }
        if (z) {
            return true;
        }
        return a(i2, parcel, parcel2, i3);
    }
}
