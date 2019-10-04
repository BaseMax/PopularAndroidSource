package f.a.a.g.g;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.permission.PermissionManager;

/* compiled from: PermissionManager */
class d implements Parcelable.Creator<PermissionManager> {
    public PermissionManager createFromParcel(Parcel parcel) {
        return new PermissionManager(parcel);
    }

    public PermissionManager[] newArray(int i2) {
        return new PermissionManager[i2];
    }
}
