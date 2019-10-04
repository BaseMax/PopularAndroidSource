package c.e.a.b.g.f;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

public final class Lb extends C0798a implements Sa {
    public Lb(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    public final Bundle c(Bundle bundle) {
        Parcel A = A();
        V.a(A, (Parcelable) bundle);
        Parcel a2 = a(1, A);
        Bundle bundle2 = (Bundle) V.a(a2, Bundle.CREATOR);
        a2.recycle();
        return bundle2;
    }
}
