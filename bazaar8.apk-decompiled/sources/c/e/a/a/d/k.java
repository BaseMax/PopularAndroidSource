package c.e.a.a.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.drm.DrmInitData;

/* compiled from: DrmInitData */
class k implements Parcelable.Creator<DrmInitData.SchemeData> {
    public DrmInitData.SchemeData createFromParcel(Parcel parcel) {
        return new DrmInitData.SchemeData(parcel);
    }

    public DrmInitData.SchemeData[] newArray(int i2) {
        return new DrmInitData.SchemeData[i2];
    }
}
