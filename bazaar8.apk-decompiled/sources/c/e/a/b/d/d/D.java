package c.e.a.b.d.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.SignInButtonConfig;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class D implements Parcelable.Creator<SignInButtonConfig> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        int i2 = 0;
        Scope[] scopeArr = null;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 == 2) {
                i3 = SafeParcelReader.y(parcel, a2);
            } else if (a3 == 3) {
                i4 = SafeParcelReader.y(parcel, a2);
            } else if (a3 != 4) {
                SafeParcelReader.D(parcel, a2);
            } else {
                scopeArr = (Scope[]) SafeParcelReader.b(parcel, a2, Scope.CREATOR);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new SignInButtonConfig(i2, i3, i4, scopeArr);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new SignInButtonConfig[i2];
    }
}
