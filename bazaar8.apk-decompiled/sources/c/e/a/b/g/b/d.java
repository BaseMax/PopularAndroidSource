package c.e.a.b.g.b;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.1.0 */
public final class d extends b implements e {
    public d(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
    }

    public final void a(g gVar) {
        Parcel A = A();
        c.a(A, (IInterface) gVar);
        a(1, A);
    }
}
