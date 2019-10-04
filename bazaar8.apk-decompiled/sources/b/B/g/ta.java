package b.b.g;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.Toolbar;

/* compiled from: Toolbar */
class ta implements Parcelable.ClassLoaderCreator<Toolbar.SavedState> {
    public Toolbar.SavedState[] newArray(int i2) {
        return new Toolbar.SavedState[i2];
    }

    public Toolbar.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new Toolbar.SavedState(parcel, classLoader);
    }

    public Toolbar.SavedState createFromParcel(Parcel parcel) {
        return new Toolbar.SavedState(parcel, null);
    }
}
