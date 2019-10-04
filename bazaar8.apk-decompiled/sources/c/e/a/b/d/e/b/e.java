package c.e.a.b.d.e.b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.SafeParcelResponse;
import com.google.android.gms.common.server.response.zak;

public final class e implements Parcelable.Creator<SafeParcelResponse> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        Parcel parcel2 = null;
        int i2 = 0;
        zak zak = null;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 == 2) {
                parcel2 = SafeParcelReader.l(parcel, a2);
            } else if (a3 != 3) {
                SafeParcelReader.D(parcel, a2);
            } else {
                zak = (zak) SafeParcelReader.a(parcel, a2, zak.CREATOR);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new SafeParcelResponse(i2, parcel2, zak);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new SafeParcelResponse[i2];
    }
}
