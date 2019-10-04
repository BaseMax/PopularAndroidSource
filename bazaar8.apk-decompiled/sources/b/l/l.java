package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.databinding.ObservableByte;

/* compiled from: ObservableByte */
class l implements Parcelable.Creator<ObservableByte> {
    public ObservableByte createFromParcel(Parcel parcel) {
        return new ObservableByte(parcel.readByte());
    }

    public ObservableByte[] newArray(int i2) {
        return new ObservableByte[i2];
    }
}
