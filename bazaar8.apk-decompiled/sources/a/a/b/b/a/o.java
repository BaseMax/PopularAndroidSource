package a.a.b.b.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.ParcelableVolumeInfo;

/* compiled from: ParcelableVolumeInfo */
class o implements Parcelable.Creator<ParcelableVolumeInfo> {
    public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
        return new ParcelableVolumeInfo(parcel);
    }

    public ParcelableVolumeInfo[] newArray(int i2) {
        return new ParcelableVolumeInfo[i2];
    }
}
