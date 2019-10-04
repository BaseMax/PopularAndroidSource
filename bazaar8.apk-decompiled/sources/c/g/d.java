package c.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.viewpagerindicator.LinePageIndicator$SavedState;

/* compiled from: LinePageIndicator */
class d implements Parcelable.Creator<LinePageIndicator$SavedState> {
    public LinePageIndicator$SavedState createFromParcel(Parcel parcel) {
        return new LinePageIndicator$SavedState(parcel);
    }

    public LinePageIndicator$SavedState[] newArray(int i2) {
        return new LinePageIndicator$SavedState[i2];
    }
}
