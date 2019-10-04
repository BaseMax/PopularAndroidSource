package c.e.a.c.b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.appbar.AppBarLayout;

/* compiled from: AppBarLayout */
class c implements Parcelable.ClassLoaderCreator<AppBarLayout.BaseBehavior.SavedState> {
    public AppBarLayout.BaseBehavior.SavedState[] newArray(int i2) {
        return new AppBarLayout.BaseBehavior.SavedState[i2];
    }

    public AppBarLayout.BaseBehavior.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new AppBarLayout.BaseBehavior.SavedState(parcel, classLoader);
    }

    public AppBarLayout.BaseBehavior.SavedState createFromParcel(Parcel parcel) {
        return new AppBarLayout.BaseBehavior.SavedState(parcel, null);
    }
}
