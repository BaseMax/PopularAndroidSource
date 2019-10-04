package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.databinding.ObservableDouble;

/* compiled from: ObservableDouble */
class n implements Parcelable.Creator<ObservableDouble> {
    public ObservableDouble createFromParcel(Parcel parcel) {
        return new ObservableDouble(parcel.readDouble());
    }

    public ObservableDouble[] newArray(int i2) {
        return new ObservableDouble[i2];
    }
}
