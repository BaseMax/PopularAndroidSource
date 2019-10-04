package b.x;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.SeekBarPreference;

/* compiled from: SeekBarPreference */
class L implements Parcelable.Creator<SeekBarPreference.SavedState> {
    public SeekBarPreference.SavedState createFromParcel(Parcel parcel) {
        return new SeekBarPreference.SavedState(parcel);
    }

    public SeekBarPreference.SavedState[] newArray(int i2) {
        return new SeekBarPreference.SavedState[i2];
    }
}
