package c.e.a.b.i.a;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.signin.internal.zaa;

public final class b implements Parcelable.Creator<zaa> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        int i2 = 0;
        Intent intent = null;
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
                intent = (Intent) SafeParcelReader.a(parcel, a2, Intent.CREATOR);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new zaa(i2, i3, intent);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zaa[i2];
    }
}
