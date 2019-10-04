package f.a.a.g.g;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.permission.Permission;

/* compiled from: Permission */
class a implements Parcelable.Creator<Permission> {
    public Permission createFromParcel(Parcel parcel) {
        return Permission.valueOf(parcel.readString());
    }

    public Permission[] newArray(int i2) {
        return new Permission[i2];
    }
}
