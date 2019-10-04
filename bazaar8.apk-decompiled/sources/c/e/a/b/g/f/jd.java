package c.e.a.b.g.f;

import android.os.Bundle;
import android.os.Parcel;

public abstract class jd extends C0869s implements id {
    public jd() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    public final boolean a(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            onEvent(parcel.readString(), parcel.readString(), (Bundle) V.a(parcel, Bundle.CREATOR), parcel.readLong());
            parcel2.writeNoException();
        } else if (i2 != 2) {
            return false;
        } else {
            int x = x();
            parcel2.writeNoException();
            parcel2.writeInt(x);
        }
        return true;
    }
}
