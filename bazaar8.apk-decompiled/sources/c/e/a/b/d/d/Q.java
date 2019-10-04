package c.e.a.b.d.d;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.g.d.a;
import c.e.a.b.g.d.c;
import com.google.android.gms.common.zzk;

public final class Q extends a implements O {
    public Q(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    public final boolean a(zzk zzk, c.e.a.b.e.a aVar) {
        Parcel A = A();
        c.a(A, (Parcelable) zzk);
        c.a(A, (IInterface) aVar);
        Parcel a2 = a(5, A);
        boolean a3 = c.a(a2);
        a2.recycle();
        return a3;
    }
}
