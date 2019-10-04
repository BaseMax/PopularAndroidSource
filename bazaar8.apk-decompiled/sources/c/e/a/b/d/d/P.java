package c.e.a.b.d.d;

import android.os.IBinder;
import android.os.IInterface;
import c.e.a.b.g.d.b;

public abstract class P extends b implements O {
    public static O a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        if (queryLocalInterface instanceof O) {
            return (O) queryLocalInterface;
        }
        return new Q(iBinder);
    }
}
