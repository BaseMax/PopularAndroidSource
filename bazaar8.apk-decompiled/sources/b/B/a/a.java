package b.B.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.slidingpanelayout.widget.SlidingPaneLayout$SavedState;

/* compiled from: SlidingPaneLayout */
class a implements Parcelable.ClassLoaderCreator<SlidingPaneLayout$SavedState> {
    public SlidingPaneLayout$SavedState[] newArray(int i2) {
        return new SlidingPaneLayout$SavedState[i2];
    }

    public SlidingPaneLayout$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new SlidingPaneLayout$SavedState(parcel, null);
    }

    public SlidingPaneLayout$SavedState createFromParcel(Parcel parcel) {
        return new SlidingPaneLayout$SavedState(parcel, null);
    }
}
