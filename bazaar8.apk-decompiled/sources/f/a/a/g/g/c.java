package f.a.a.g.g;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.permission.PermissionDataHandler;

/* compiled from: PermissionDataHandler */
class c implements Parcelable.Creator<PermissionDataHandler.PermissionDataType> {
    public PermissionDataHandler.PermissionDataType createFromParcel(Parcel parcel) {
        return new PermissionDataHandler.PermissionDataType(parcel);
    }

    public PermissionDataHandler.PermissionDataType[] newArray(int i2) {
        return new PermissionDataHandler.PermissionDataType[i2];
    }
}
