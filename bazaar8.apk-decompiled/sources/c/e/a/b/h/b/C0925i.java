package c.e.a.b.h.b;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.measurement.internal.zzag;

/* renamed from: c.e.a.b.h.b.i  reason: case insensitive filesystem */
public final class C0925i implements Parcelable.Creator<zzag> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            if (SafeParcelReader.a(a2) != 2) {
                SafeParcelReader.D(parcel, a2);
            } else {
                bundle = SafeParcelReader.f(parcel, a2);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new zzag(bundle);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzag[i2];
    }
}
