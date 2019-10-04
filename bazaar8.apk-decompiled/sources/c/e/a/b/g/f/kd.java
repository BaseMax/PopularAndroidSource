package c.e.a.b.g.f;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

public final class kd extends C0798a implements id {
    public kd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    public final void onEvent(String str, String str2, Bundle bundle, long j2) {
        Parcel A = A();
        A.writeString(str);
        A.writeString(str2);
        V.a(A, (Parcelable) bundle);
        A.writeLong(j2);
        b(1, A);
    }

    public final int x() {
        Parcel a2 = a(2, A());
        int readInt = a2.readInt();
        a2.recycle();
        return readInt;
    }
}
