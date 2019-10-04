package c.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.viewpagerindicator.TitlePageIndicator$SavedState;

/* compiled from: TitlePageIndicator */
class m implements Parcelable.Creator<TitlePageIndicator$SavedState> {
    public TitlePageIndicator$SavedState createFromParcel(Parcel parcel) {
        return new TitlePageIndicator$SavedState(parcel, null);
    }

    public TitlePageIndicator$SavedState[] newArray(int i2) {
        return new TitlePageIndicator$SavedState[i2];
    }
}
