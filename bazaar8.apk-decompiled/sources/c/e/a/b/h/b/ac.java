package c.e.a.b.h.b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.measurement.internal.zzga;

public final class ac implements Parcelable.Creator<zzga> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int b2 = SafeParcelReader.b(parcel);
        String str = null;
        Long l2 = null;
        Float f2 = null;
        String str2 = null;
        String str3 = null;
        Double d2 = null;
        long j2 = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            switch (SafeParcelReader.a(a2)) {
                case 1:
                    i2 = SafeParcelReader.y(parcel2, a2);
                    break;
                case 2:
                    str = SafeParcelReader.n(parcel2, a2);
                    break;
                case 3:
                    j2 = SafeParcelReader.A(parcel2, a2);
                    break;
                case 4:
                    l2 = SafeParcelReader.B(parcel2, a2);
                    break;
                case 5:
                    f2 = SafeParcelReader.w(parcel2, a2);
                    break;
                case 6:
                    str2 = SafeParcelReader.n(parcel2, a2);
                    break;
                case 7:
                    str3 = SafeParcelReader.n(parcel2, a2);
                    break;
                case 8:
                    d2 = SafeParcelReader.u(parcel2, a2);
                    break;
                default:
                    SafeParcelReader.D(parcel2, a2);
                    break;
            }
        }
        SafeParcelReader.q(parcel2, b2);
        zzga zzga = new zzga(i2, str, j2, l2, f2, str2, str3, d2);
        return zzga;
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzga[i2];
    }
}
