package c.e.a.a.p;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.video.ColorInfo;

/* compiled from: ColorInfo */
class i implements Parcelable.Creator<ColorInfo> {
    public ColorInfo createFromParcel(Parcel parcel) {
        return new ColorInfo(parcel);
    }

    public ColorInfo[] newArray(int i2) {
        return new ColorInfo[i2];
    }
}
