package b.x;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.ListPreference;

/* renamed from: b.x.f  reason: case insensitive filesystem */
/* compiled from: ListPreference */
class C0323f implements Parcelable.Creator<ListPreference.SavedState> {
    public ListPreference.SavedState createFromParcel(Parcel parcel) {
        return new ListPreference.SavedState(parcel);
    }

    public ListPreference.SavedState[] newArray(int i2) {
        return new ListPreference.SavedState[i2];
    }
}
