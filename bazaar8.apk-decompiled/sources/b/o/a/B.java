package b.o.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentTabHost$SavedState;

/* compiled from: FragmentTabHost */
class B implements Parcelable.Creator<FragmentTabHost$SavedState> {
    public FragmentTabHost$SavedState createFromParcel(Parcel parcel) {
        return new FragmentTabHost$SavedState(parcel);
    }

    public FragmentTabHost$SavedState[] newArray(int i2) {
        return new FragmentTabHost$SavedState[i2];
    }
}
