package c.e.a.c.t;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.stateful.ExtendableSavedState;

/* compiled from: ExtendableSavedState */
class a implements Parcelable.ClassLoaderCreator<ExtendableSavedState> {
    public ExtendableSavedState[] newArray(int i2) {
        return new ExtendableSavedState[i2];
    }

    public ExtendableSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new ExtendableSavedState(parcel, classLoader, null);
    }

    public ExtendableSavedState createFromParcel(Parcel parcel) {
        return new ExtendableSavedState(parcel, null, null);
    }
}
