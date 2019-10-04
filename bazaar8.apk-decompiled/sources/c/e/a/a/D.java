package c.e.a.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;

/* compiled from: Format */
class D implements Parcelable.Creator<Format> {
    public Format createFromParcel(Parcel parcel) {
        return new Format(parcel);
    }

    public Format[] newArray(int i2) {
        return new Format[i2];
    }
}
