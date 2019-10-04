package c.e.a.a.l;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;

/* compiled from: TrackSelectionParameters */
class p implements Parcelable.Creator<TrackSelectionParameters> {
    public TrackSelectionParameters createFromParcel(Parcel parcel) {
        return new TrackSelectionParameters(parcel);
    }

    public TrackSelectionParameters[] newArray(int i2) {
        return new TrackSelectionParameters[i2];
    }
}
