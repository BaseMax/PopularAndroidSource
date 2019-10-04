package c.e.a.b.g.f;

import android.os.Bundle;
import android.os.Parcel;

public abstract class gd extends C0869s implements fd {
    public gd() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    public final boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return false;
        }
        b((Bundle) V.a(parcel, Bundle.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
