package c.e.a.b.d.e.b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.zak;
import com.google.android.gms.common.server.response.zal;
import java.util.ArrayList;

public final class c implements Parcelable.Creator<zak> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        ArrayList<zal> arrayList = null;
        int i2 = 0;
        String str = null;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 == 2) {
                arrayList = SafeParcelReader.c(parcel, a2, zal.CREATOR);
            } else if (a3 != 3) {
                SafeParcelReader.D(parcel, a2);
            } else {
                str = SafeParcelReader.n(parcel, a2);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new zak(i2, arrayList, str);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zak[i2];
    }
}
