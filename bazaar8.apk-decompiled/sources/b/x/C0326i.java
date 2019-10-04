package b.x;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.MultiSelectListPreference;

/* renamed from: b.x.i  reason: case insensitive filesystem */
/* compiled from: MultiSelectListPreference */
class C0326i implements Parcelable.Creator<MultiSelectListPreference.SavedState> {
    public MultiSelectListPreference.SavedState createFromParcel(Parcel parcel) {
        return new MultiSelectListPreference.SavedState(parcel);
    }

    public MultiSelectListPreference.SavedState[] newArray(int i2) {
        return new MultiSelectListPreference.SavedState[i2];
    }
}
