package c.e.a.b.d.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.FavaDiagnosticsEntity;

public final class a implements Parcelable.Creator<FavaDiagnosticsEntity> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        int i2 = 0;
        String str = null;
        int i3 = 0;
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
                i3 = SafeParcelReader.y(parcel, a2);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new FavaDiagnosticsEntity(i2, str, i3);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new FavaDiagnosticsEntity[i2];
    }
}
