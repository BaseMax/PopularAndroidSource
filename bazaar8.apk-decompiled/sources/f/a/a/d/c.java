package f.a.a.d;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.platform.InlineApplication;

/* compiled from: InlineApplication */
class c implements Parcelable.Creator<InlineApplication> {
    public InlineApplication createFromParcel(Parcel parcel) {
        return new InlineApplication(parcel);
    }

    public InlineApplication[] newArray(int i2) {
        return new InlineApplication[i2];
    }
}
