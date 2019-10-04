package c.e.a.a.g.b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;

/* compiled from: IcyHeaders */
class b implements Parcelable.Creator<IcyHeaders> {
    public IcyHeaders createFromParcel(Parcel parcel) {
        return new IcyHeaders(parcel);
    }

    public IcyHeaders[] newArray(int i2) {
        return new IcyHeaders[i2];
    }
}
