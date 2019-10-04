package c.e.a.b.i.a;

import android.os.Parcel;
import c.e.a.b.g.c.b;
import c.e.a.b.g.c.c;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.signin.internal.zaa;
import com.google.android.gms.signin.internal.zaj;

public abstract class e extends b implements d {
    public e() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    public boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 3) {
            a((ConnectionResult) c.a(parcel, ConnectionResult.CREATOR), (zaa) c.a(parcel, zaa.CREATOR));
        } else if (i2 == 4) {
            a((Status) c.a(parcel, Status.CREATOR));
        } else if (i2 == 6) {
            b((Status) c.a(parcel, Status.CREATOR));
        } else if (i2 == 7) {
            a((Status) c.a(parcel, Status.CREATOR), (GoogleSignInAccount) c.a(parcel, GoogleSignInAccount.CREATOR));
        } else if (i2 != 8) {
            return false;
        } else {
            a((zaj) c.a(parcel, zaj.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
