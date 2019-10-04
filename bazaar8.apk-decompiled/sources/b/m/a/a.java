package b.m.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.drawerlayout.widget.DrawerLayout$SavedState;

/* compiled from: DrawerLayout */
class a implements Parcelable.ClassLoaderCreator<DrawerLayout$SavedState> {
    public DrawerLayout$SavedState[] newArray(int i2) {
        return new DrawerLayout$SavedState[i2];
    }

    public DrawerLayout$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new DrawerLayout$SavedState(parcel, classLoader);
    }

    public DrawerLayout$SavedState createFromParcel(Parcel parcel) {
        return new DrawerLayout$SavedState(parcel, null);
    }
}
