package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.databinding.ObservableInt;

/* compiled from: ObservableInt */
class p implements Parcelable.Creator<ObservableInt> {
    public ObservableInt createFromParcel(Parcel parcel) {
        return new ObservableInt(parcel.readInt());
    }

    public ObservableInt[] newArray(int i2) {
        return new ObservableInt[i2];
    }
}
