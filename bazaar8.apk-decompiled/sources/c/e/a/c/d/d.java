package c.e.a.c.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.bottomappbar.BottomAppBar;

/* compiled from: BottomAppBar */
class d implements Parcelable.ClassLoaderCreator<BottomAppBar.SavedState> {
    public BottomAppBar.SavedState[] newArray(int i2) {
        return new BottomAppBar.SavedState[i2];
    }

    public BottomAppBar.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new BottomAppBar.SavedState(parcel, classLoader);
    }

    public BottomAppBar.SavedState createFromParcel(Parcel parcel) {
        return new BottomAppBar.SavedState(parcel, null);
    }
}
