package f.a.a.e;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ui.Theme;

/* compiled from: Theme */
class w implements Parcelable.Creator<Theme> {
    public Theme createFromParcel(Parcel parcel) {
        return new Theme(parcel);
    }

    public Theme[] newArray(int i2) {
        return new Theme[i2];
    }
}
