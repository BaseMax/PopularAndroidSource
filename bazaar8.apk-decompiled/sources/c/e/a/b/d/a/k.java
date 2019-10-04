package c.e.a.b.d.a;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

public final class k implements Parcelable.Creator<Status> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int b2 = SafeParcelReader.b(parcel);
        int i2 = 0;
        String str = null;
        PendingIntent pendingIntent = null;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            int a3 = SafeParcelReader.a(a2);
            if (a3 == 1) {
                i3 = SafeParcelReader.y(parcel, a2);
            } else if (a3 == 2) {
                str = SafeParcelReader.n(parcel, a2);
            } else if (a3 == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.a(parcel, a2, PendingIntent.CREATOR);
            } else if (a3 != 1000) {
                SafeParcelReader.D(parcel, a2);
            } else {
                i2 = SafeParcelReader.y(parcel, a2);
            }
        }
        SafeParcelReader.q(parcel, b2);
        return new Status(i2, i3, str, pendingIntent);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new Status[i2];
    }
}
