package b.y.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* compiled from: StaggeredGridLayoutManager */
class T implements Parcelable.Creator<StaggeredGridLayoutManager.SavedState> {
    public StaggeredGridLayoutManager.SavedState createFromParcel(Parcel parcel) {
        return new StaggeredGridLayoutManager.SavedState(parcel);
    }

    public StaggeredGridLayoutManager.SavedState[] newArray(int i2) {
        return new StaggeredGridLayoutManager.SavedState[i2];
    }
}
