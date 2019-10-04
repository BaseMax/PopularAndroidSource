package b.i.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.widget.NestedScrollView;

/* compiled from: NestedScrollView */
class h implements Parcelable.Creator<NestedScrollView.SavedState> {
    public NestedScrollView.SavedState createFromParcel(Parcel parcel) {
        return new NestedScrollView.SavedState(parcel);
    }

    public NestedScrollView.SavedState[] newArray(int i2) {
        return new NestedScrollView.SavedState[i2];
    }
}
