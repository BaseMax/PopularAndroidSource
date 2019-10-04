package b.x;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.TwoStatePreference;

/* compiled from: TwoStatePreference */
class M implements Parcelable.Creator<TwoStatePreference.SavedState> {
    public TwoStatePreference.SavedState createFromParcel(Parcel parcel) {
        return new TwoStatePreference.SavedState(parcel);
    }

    public TwoStatePreference.SavedState[] newArray(int i2) {
        return new TwoStatePreference.SavedState[i2];
    }
}
