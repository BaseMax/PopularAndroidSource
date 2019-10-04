package c.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.viewpagerindicator.UnderlinePageIndicator$SavedState;

/* compiled from: UnderlinePageIndicator */
class o implements Parcelable.Creator<UnderlinePageIndicator$SavedState> {
    public UnderlinePageIndicator$SavedState createFromParcel(Parcel parcel) {
        return new UnderlinePageIndicator$SavedState(parcel, null);
    }

    public UnderlinePageIndicator$SavedState[] newArray(int i2) {
        return new UnderlinePageIndicator$SavedState[i2];
    }
}
