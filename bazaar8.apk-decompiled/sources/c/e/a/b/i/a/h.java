package c.e.a.b.i.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.signin.internal.zah;

public final class h implements Parcelable.Creator<zah> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        int i2 = 0;
        ResolveAccountRequest resolveAccountRequest = null;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 != 2) {
                SafeParcelReader.D(parcel, a2);
            } else {
                resolveAccountRequest = (ResolveAccountRequest) SafeParcelReader.a(parcel, a2, ResolveAccountRequest.CREATOR);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new zah(i2, resolveAccountRequest);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zah[i2];
    }
}
