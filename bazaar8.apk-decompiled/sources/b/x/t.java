package b.x;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.PreferenceGroup;

/* compiled from: PreferenceGroup */
class t implements Parcelable.Creator<PreferenceGroup.SavedState> {
    public PreferenceGroup.SavedState createFromParcel(Parcel parcel) {
        return new PreferenceGroup.SavedState(parcel);
    }

    public PreferenceGroup.SavedState[] newArray(int i2) {
        return new PreferenceGroup.SavedState[i2];
    }
}
