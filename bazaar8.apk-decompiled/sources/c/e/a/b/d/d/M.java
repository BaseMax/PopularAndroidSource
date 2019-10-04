package c.e.a.b.d.d;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import c.e.a.b.e.a;
import c.e.a.b.g.d.b;
import c.e.a.b.g.d.c;

public abstract class M extends b implements L {
    public M() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    public static L a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        if (queryLocalInterface instanceof L) {
            return (L) queryLocalInterface;
        }
        return new N(iBinder);
    }

    public final boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            a y = y();
            parcel2.writeNoException();
            c.a(parcel2, (IInterface) y);
        } else if (i2 != 2) {
            return false;
        } else {
            int w = w();
            parcel2.writeNoException();
            parcel2.writeInt(w);
        }
        return true;
    }
}
