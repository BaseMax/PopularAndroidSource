package c.e.a.c.n;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.navigation.NavigationView$SavedState;

/* compiled from: NavigationView */
class a implements Parcelable.ClassLoaderCreator<NavigationView$SavedState> {
    public NavigationView$SavedState[] newArray(int i2) {
        return new NavigationView$SavedState[i2];
    }

    public NavigationView$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new NavigationView$SavedState(parcel, classLoader);
    }

    public NavigationView$SavedState createFromParcel(Parcel parcel) {
        return new NavigationView$SavedState(parcel, null);
    }
}
