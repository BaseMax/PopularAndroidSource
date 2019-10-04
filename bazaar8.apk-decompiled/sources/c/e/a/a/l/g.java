package c.e.a.a.l;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;

/* compiled from: DefaultTrackSelector */
class g implements Parcelable.Creator<DefaultTrackSelector.Parameters> {
    public DefaultTrackSelector.Parameters createFromParcel(Parcel parcel) {
        return new DefaultTrackSelector.Parameters(parcel);
    }

    public DefaultTrackSelector.Parameters[] newArray(int i2) {
        return new DefaultTrackSelector.Parameters[i2];
    }
}
