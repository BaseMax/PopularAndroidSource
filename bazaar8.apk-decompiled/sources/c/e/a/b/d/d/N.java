package c.e.a.b.d.d;

import android.os.IBinder;
import android.os.Parcel;
import c.e.a.b.e.a;
import c.e.a.b.g.d.a;

public final class N extends a implements L {
    public N(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    public final int w() {
        Parcel a2 = a(2, A());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }

    public final c.e.a.b.e.a y() {
        Parcel a2 = a(1, A());
        c.e.a.b.e.a a3 = a.C0127a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }
}
