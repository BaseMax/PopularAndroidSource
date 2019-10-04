package c.e.a.b.i.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.signin.internal.zaj;

public final class i implements Parcelable.Creator<zaj> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        ConnectionResult connectionResult = null;
        int i2 = 0;
        ResolveAccountResponse resolveAccountResponse = null;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 == 2) {
                connectionResult = (ConnectionResult) SafeParcelReader.a(parcel, a2, ConnectionResult.CREATOR);
            } else if (a3 != 3) {
                SafeParcelReader.D(parcel, a2);
            } else {
                resolveAccountResponse = (ResolveAccountResponse) SafeParcelReader.a(parcel, a2, ResolveAccountResponse.CREATOR);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new zaj(i2, connectionResult, resolveAccountResponse);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zaj[i2];
    }
}
