package c.e.a.b.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class j implements Parcelable.Creator<Feature> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        String str = null;
        int i2 = 0;
        long j2 = -1;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                str = SafeParcelReader.n(parcel, a2);
            } else if (a3 == 2) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 != 3) {
                SafeParcelReader.D(parcel, a2);
            } else {
                j2 = SafeParcelReader.A(parcel, a2);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new Feature(str, i2, j2);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new Feature[i2];
    }
}
