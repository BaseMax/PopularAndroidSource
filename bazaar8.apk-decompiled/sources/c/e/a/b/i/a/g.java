package c.e.a.b.i.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.g.c.a;
import c.e.a.b.g.c.c;
import com.google.android.gms.signin.internal.zah;

public final class g extends a implements f {
    public g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    public final void a(zah zah, d dVar) {
        Parcel A = A();
        c.a(A, (Parcelable) zah);
        c.a(A, (IInterface) dVar);
        a(12, A);
    }
}
