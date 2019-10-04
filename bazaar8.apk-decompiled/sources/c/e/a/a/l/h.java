package c.e.a.a.l;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;

/* compiled from: DefaultTrackSelector */
class h implements Parcelable.Creator<DefaultTrackSelector.SelectionOverride> {
    public DefaultTrackSelector.SelectionOverride createFromParcel(Parcel parcel) {
        return new DefaultTrackSelector.SelectionOverride(parcel);
    }

    public DefaultTrackSelector.SelectionOverride[] newArray(int i2) {
        return new DefaultTrackSelector.SelectionOverride[i2];
    }
}
