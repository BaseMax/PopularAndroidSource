package c.e.a.b.d.c;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class c implements Parcelable.Creator<WebImage> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        int i2 = 0;
        Uri uri = null;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i2 = SafeParcelReader.y(parcel, a2);
            } else if (a3 == 2) {
                uri = (Uri) SafeParcelReader.a(parcel, a2, Uri.CREATOR);
            } else if (a3 == 3) {
                i3 = SafeParcelReader.y(parcel, a2);
            } else if (a3 != 4) {
                SafeParcelReader.D(parcel, a2);
            } else {
                i4 = SafeParcelReader.y(parcel, a2);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new WebImage(i2, uri, i3, i4);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new WebImage[i2];
    }
}
