package c.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.viewpagerindicator.CirclePageIndicator;

/* compiled from: CirclePageIndicator */
class b implements Parcelable.Creator<CirclePageIndicator.SavedState> {
    public CirclePageIndicator.SavedState createFromParcel(Parcel parcel) {
        return new CirclePageIndicator.SavedState(parcel);
    }

    public CirclePageIndicator.SavedState[] newArray(int i2) {
        return new CirclePageIndicator.SavedState[i2];
    }
}
