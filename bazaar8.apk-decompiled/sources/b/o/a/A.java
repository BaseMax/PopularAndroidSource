package b.o.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentState;

/* compiled from: FragmentState */
class A implements Parcelable.Creator<FragmentState> {
    public FragmentState createFromParcel(Parcel parcel) {
        return new FragmentState(parcel);
    }

    public FragmentState[] newArray(int i2) {
        return new FragmentState[i2];
    }
}
