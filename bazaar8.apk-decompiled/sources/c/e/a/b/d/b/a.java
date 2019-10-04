package c.e.a.b.d.b;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class a implements Parcelable.Creator<BitmapTeleporter> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        int i2 = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.a(parcel, a2, ParcelFileDescriptor.CREATOR);
            } else if (a3 != 3) {
                SafeParcelReader.D(parcel, a2);
            } else {
                i3 = SafeParcelReader.y(parcel, a2);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new BitmapTeleporter(i2, parcelFileDescriptor, i3);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new BitmapTeleporter[i2];
    }
}
