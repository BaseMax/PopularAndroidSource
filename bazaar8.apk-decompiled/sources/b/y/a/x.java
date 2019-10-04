package b.y.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.LinearLayoutManager;

/* compiled from: LinearLayoutManager */
class x implements Parcelable.Creator<LinearLayoutManager.SavedState> {
    public LinearLayoutManager.SavedState createFromParcel(Parcel parcel) {
        return new LinearLayoutManager.SavedState(parcel);
    }

    public LinearLayoutManager.SavedState[] newArray(int i2) {
        return new LinearLayoutManager.SavedState[i2];
    }
}
