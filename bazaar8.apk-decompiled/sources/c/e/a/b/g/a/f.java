package c.e.a.b.g.a;

import android.os.IBinder;
import android.os.Parcel;

public final class f extends a implements d {
    public f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    public final boolean e(boolean z) {
        Parcel A = A();
        c.a(A, true);
        Parcel a2 = a(2, A);
        boolean a3 = c.a(a2);
        a2.recycle();
        return a3;
    }

    public final String getId() {
        Parcel a2 = a(1, A());
        String readString = a2.readString();
        a2.recycle();
        return readString;
    }

    public final boolean w() {
        Parcel a2 = a(6, A());
        boolean a3 = c.a(a2);
        a2.recycle();
        return a3;
    }
}
