package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.databinding.ObservableShort;

/* compiled from: ObservableShort */
class u implements Parcelable.Creator<ObservableShort> {
    public ObservableShort createFromParcel(Parcel parcel) {
        return new ObservableShort((short) parcel.readInt());
    }

    public ObservableShort[] newArray(int i2) {
        return new ObservableShort[i2];
    }
}
