package c.e.a.a.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.drm.DrmInitData;

/* compiled from: DrmInitData */
class j implements Parcelable.Creator<DrmInitData> {
    public DrmInitData createFromParcel(Parcel parcel) {
        return new DrmInitData(parcel);
    }

    public DrmInitData[] newArray(int i2) {
        return new DrmInitData[i2];
    }
}
