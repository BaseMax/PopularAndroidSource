package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.databinding.ObservableFloat;

/* compiled from: ObservableFloat */
class o implements Parcelable.Creator<ObservableFloat> {
    public ObservableFloat createFromParcel(Parcel parcel) {
        return new ObservableFloat(parcel.readFloat());
    }

    public ObservableFloat[] newArray(int i2) {
        return new ObservableFloat[i2];
    }
}
