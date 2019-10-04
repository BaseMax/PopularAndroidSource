package b.k.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;

/* compiled from: AbsSavedState */
class a implements Parcelable.ClassLoaderCreator<AbsSavedState> {
    public AbsSavedState[] newArray(int i2) {
        return new AbsSavedState[i2];
    }

    public AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        if (parcel.readParcelable(classLoader) == null) {
            return AbsSavedState.f615a;
        }
        throw new IllegalStateException("superState must be null");
    }

    public AbsSavedState createFromParcel(Parcel parcel) {
        return createFromParcel(parcel, (ClassLoader) null);
    }
}
