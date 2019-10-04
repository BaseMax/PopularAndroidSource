package c.e.a.b.d.e.b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.zal;
import com.google.android.gms.common.server.response.zam;
import java.util.ArrayList;

public final class d implements Parcelable.Creator<zal> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        String str = null;
        int i2 = 0;
        ArrayList<zam> arrayList = null;
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
                arrayList = SafeParcelReader.c(parcel, a2, zam.CREATOR);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new zal(i2, str, arrayList);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zal[i2];
    }
}
