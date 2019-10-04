package b.o.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManagerState;

/* compiled from: FragmentManagerState */
class w implements Parcelable.Creator<FragmentManagerState> {
    public FragmentManagerState createFromParcel(Parcel parcel) {
        return new FragmentManagerState(parcel);
    }

    public FragmentManagerState[] newArray(int i2) {
        return new FragmentManagerState[i2];
    }
}
