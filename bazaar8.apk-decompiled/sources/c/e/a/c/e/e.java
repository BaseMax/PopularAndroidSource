package c.e.a.c.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.bottomnavigation.BottomNavigationPresenter;

/* compiled from: BottomNavigationPresenter */
class e implements Parcelable.Creator<BottomNavigationPresenter.SavedState> {
    public BottomNavigationPresenter.SavedState createFromParcel(Parcel parcel) {
        return new BottomNavigationPresenter.SavedState(parcel);
    }

    public BottomNavigationPresenter.SavedState[] newArray(int i2) {
        return new BottomNavigationPresenter.SavedState[i2];
    }
}
