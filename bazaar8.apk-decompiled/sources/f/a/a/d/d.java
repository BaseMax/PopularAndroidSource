package f.a.a.d;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.platform.InlineUser;

/* compiled from: InlineUser */
class d implements Parcelable.Creator<InlineUser> {
    public InlineUser createFromParcel(Parcel parcel) {
        return new InlineUser(parcel);
    }

    public InlineUser[] newArray(int i2) {
        return new InlineUser[i2];
    }
}
