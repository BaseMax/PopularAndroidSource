package c.e.c.g;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.messaging.RemoteMessage;

public final class h implements Parcelable.Creator<RemoteMessage> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            if (SafeParcelReader.a(a2) != 2) {
                SafeParcelReader.D(parcel, a2);
            } else {
                bundle = SafeParcelReader.f(parcel, a2);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new RemoteMessage(bundle);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new RemoteMessage[i2];
    }
}
