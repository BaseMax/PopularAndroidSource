package b.y.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: RecyclerView */
class M implements Parcelable.ClassLoaderCreator<RecyclerView.SavedState> {
    public RecyclerView.SavedState[] newArray(int i2) {
        return new RecyclerView.SavedState[i2];
    }

    public RecyclerView.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new RecyclerView.SavedState(parcel, classLoader);
    }

    public RecyclerView.SavedState createFromParcel(Parcel parcel) {
        return new RecyclerView.SavedState(parcel, null);
    }
}
