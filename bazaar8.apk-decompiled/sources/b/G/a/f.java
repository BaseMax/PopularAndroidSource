package b.G.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.viewpager.widget.ViewPager;

/* compiled from: ViewPager */
class f implements Parcelable.ClassLoaderCreator<ViewPager.SavedState> {
    public ViewPager.SavedState[] newArray(int i2) {
        return new ViewPager.SavedState[i2];
    }

    public ViewPager.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new ViewPager.SavedState(parcel, classLoader);
    }

    public ViewPager.SavedState createFromParcel(Parcel parcel) {
        return new ViewPager.SavedState(parcel, null);
    }
}
