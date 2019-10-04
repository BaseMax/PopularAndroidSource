package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.databinding.ObservableBoolean;

/* compiled from: ObservableBoolean */
class k implements Parcelable.Creator<ObservableBoolean> {
    public ObservableBoolean createFromParcel(Parcel parcel) {
        boolean z = true;
        if (parcel.readInt() != 1) {
            z = false;
        }
        return new ObservableBoolean(z);
    }

    public ObservableBoolean[] newArray(int i2) {
        return new ObservableBoolean[i2];
    }
}
