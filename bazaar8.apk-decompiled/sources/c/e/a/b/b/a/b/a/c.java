package c.e.a.b.b.a.b.a;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class c implements Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        int i2 = 0;
        Bundle bundle = null;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 == 2) {
                i3 = SafeParcelReader.y(parcel, a2);
            } else if (a3 != 3) {
                SafeParcelReader.D(parcel, a2);
            } else {
                bundle = SafeParcelReader.f(parcel, a2);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new GoogleSignInOptionsExtensionParcelable(i2, i3, bundle);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new GoogleSignInOptionsExtensionParcelable[i2];
    }
}
