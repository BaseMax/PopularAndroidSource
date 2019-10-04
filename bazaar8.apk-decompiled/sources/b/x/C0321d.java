package b.x;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.EditTextPreference;

/* renamed from: b.x.d  reason: case insensitive filesystem */
/* compiled from: EditTextPreference */
class C0321d implements Parcelable.Creator<EditTextPreference.SavedState> {
    public EditTextPreference.SavedState createFromParcel(Parcel parcel) {
        return new EditTextPreference.SavedState(parcel);
    }

    public EditTextPreference.SavedState[] newArray(int i2) {
        return new EditTextPreference.SavedState[i2];
    }
}
