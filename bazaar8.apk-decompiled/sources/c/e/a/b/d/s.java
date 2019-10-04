package c.e.a.b.d;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.zzk;

public final class s implements Parcelable.Creator<zzk> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        String str = null;
        IBinder iBinder = null;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                str = SafeParcelReader.n(parcel, a2);
            } else if (a3 == 2) {
                iBinder = SafeParcelReader.x(parcel, a2);
            } else if (a3 == 3) {
                z = SafeParcelReader.r(parcel, a2);
            } else if (a3 != 4) {
                SafeParcelReader.D(parcel, a2);
            } else {
                z2 = SafeParcelReader.r(parcel, a2);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new zzk(str, iBinder, z, z2);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzk[i2];
    }
}
