package c.e.a.b.g.f;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzy;

public final class nd implements Parcelable.Creator<zzy> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int b2 = SafeParcelReader.b(parcel);
        long j2 = 0;
        long j3 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        Bundle bundle = null;
        boolean z = false;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            switch (SafeParcelReader.a(a2)) {
                case 1:
                    j2 = SafeParcelReader.A(parcel2, a2);
                    break;
                case 2:
                    j3 = SafeParcelReader.A(parcel2, a2);
                    break;
                case 3:
                    z = SafeParcelReader.r(parcel2, a2);
                    break;
                case 4:
                    str = SafeParcelReader.n(parcel2, a2);
                    break;
                case 5:
                    str2 = SafeParcelReader.n(parcel2, a2);
                    break;
                case 6:
                    str3 = SafeParcelReader.n(parcel2, a2);
                    break;
                case 7:
                    bundle = SafeParcelReader.f(parcel2, a2);
                    break;
                default:
                    SafeParcelReader.D(parcel2, a2);
                    break;
            }
        }
        SafeParcelReader.q(parcel2, b2);
        zzy zzy = new zzy(j2, j3, z, str, str2, str3, bundle);
        return zzy;
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzy[i2];
    }
}
