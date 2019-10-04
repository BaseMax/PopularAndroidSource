package b.b.g;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.SearchView;

/* compiled from: SearchView */
class ga implements Parcelable.ClassLoaderCreator<SearchView.SavedState> {
    public SearchView.SavedState[] newArray(int i2) {
        return new SearchView.SavedState[i2];
    }

    public SearchView.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new SearchView.SavedState(parcel, classLoader);
    }

    public SearchView.SavedState createFromParcel(Parcel parcel) {
        return new SearchView.SavedState(parcel, null);
    }
}
