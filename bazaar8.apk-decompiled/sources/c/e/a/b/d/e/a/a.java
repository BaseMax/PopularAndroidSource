package c.e.a.b.d.e.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.converter.zaa;

public final class a implements Parcelable.Creator<zaa> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        int i2 = 0;
        StringToIntConverter stringToIntConverter = null;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 != 2) {
                SafeParcelReader.D(parcel, a2);
            } else {
                stringToIntConverter = (StringToIntConverter) SafeParcelReader.a(parcel, a2, StringToIntConverter.CREATOR);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new zaa(i2, stringToIntConverter);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zaa[i2];
    }
}
