package c.e.a.a.j;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.source.TrackGroup;

/* compiled from: TrackGroup */
class J implements Parcelable.Creator<TrackGroup> {
    public TrackGroup createFromParcel(Parcel parcel) {
        return new TrackGroup(parcel);
    }

    public TrackGroup[] newArray(int i2) {
        return new TrackGroup[i2];
    }
}
