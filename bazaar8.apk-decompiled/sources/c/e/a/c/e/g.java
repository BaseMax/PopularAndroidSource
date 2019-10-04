package c.e.a.c.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.bottomnavigation.BottomNavigationView;

/* compiled from: BottomNavigationView */
class g implements Parcelable.ClassLoaderCreator<BottomNavigationView.SavedState> {
    public BottomNavigationView.SavedState[] newArray(int i2) {
        return new BottomNavigationView.SavedState[i2];
    }

    public BottomNavigationView.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new BottomNavigationView.SavedState(parcel, classLoader);
    }

    public BottomNavigationView.SavedState createFromParcel(Parcel parcel) {
        return new BottomNavigationView.SavedState(parcel, null);
    }
}
