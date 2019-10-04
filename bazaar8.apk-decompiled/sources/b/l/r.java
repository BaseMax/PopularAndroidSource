package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.databinding.ObservableLong;

/* compiled from: ObservableLong */
class r implements Parcelable.Creator<ObservableLong> {
    public ObservableLong createFromParcel(Parcel parcel) {
        return new ObservableLong(parcel.readLong());
    }

    public ObservableLong[] newArray(int i2) {
        return new ObservableLong[i2];
    }
}
