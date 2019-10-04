package c.e.a.a.g.b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.icy.IcyInfo;

/* compiled from: IcyInfo */
class c implements Parcelable.Creator<IcyInfo> {
    public IcyInfo createFromParcel(Parcel parcel) {
        return new IcyInfo(parcel);
    }

    public IcyInfo[] newArray(int i2) {
        return new IcyInfo[i2];
    }
}
