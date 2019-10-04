package c.e.a.a.j;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.source.TrackGroupArray;

/* compiled from: TrackGroupArray */
class K implements Parcelable.Creator<TrackGroupArray> {
    public TrackGroupArray createFromParcel(Parcel parcel) {
        return new TrackGroupArray(parcel);
    }

    public TrackGroupArray[] newArray(int i2) {
        return new TrackGroupArray[i2];
    }
}
