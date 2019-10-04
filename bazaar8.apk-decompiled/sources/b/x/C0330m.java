package b.x;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.preference.Preference;

/* renamed from: b.x.m  reason: case insensitive filesystem */
/* compiled from: Preference */
class C0330m implements Parcelable.Creator<Preference.BaseSavedState> {
    public Preference.BaseSavedState createFromParcel(Parcel parcel) {
        return new Preference.BaseSavedState(parcel);
    }

    public Preference.BaseSavedState[] newArray(int i2) {
        return new Preference.BaseSavedState[i2];
    }
}
