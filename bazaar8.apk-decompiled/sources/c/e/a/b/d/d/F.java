package c.e.a.b.d.d;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zzb;

public final class F implements Parcelable.Creator<zzb> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        Bundle bundle = null;
        Feature[] featureArr = null;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                bundle = SafeParcelReader.f(parcel, a2);
            } else if (a3 != 2) {
                SafeParcelReader.D(parcel, a2);
            } else {
                featureArr = (Feature[]) SafeParcelReader.b(parcel, a2, Feature.CREATOR);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new zzb(bundle, featureArr);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzb[i2];
    }
}
