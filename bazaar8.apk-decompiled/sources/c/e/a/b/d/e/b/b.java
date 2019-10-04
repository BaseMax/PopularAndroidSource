package c.e.a.b.d.e.b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.server.response.zam;

public final class b implements Parcelable.Creator<zam> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        String str = null;
        int i2 = 0;
        FastJsonResponse.Field field = null;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 == 2) {
                str = SafeParcelReader.n(parcel, a2);
            } else if (a3 != 3) {
                SafeParcelReader.D(parcel, a2);
            } else {
                field = (FastJsonResponse.Field) SafeParcelReader.a(parcel, a2, FastJsonResponse.Field.CREATOR);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new zam(i2, str, field);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zam[i2];
    }
}
