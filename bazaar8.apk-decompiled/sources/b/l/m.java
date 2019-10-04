package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.databinding.ObservableChar;

/* compiled from: ObservableChar */
class m implements Parcelable.Creator<ObservableChar> {
    public ObservableChar createFromParcel(Parcel parcel) {
        return new ObservableChar((char) parcel.readInt());
    }

    public ObservableChar[] newArray(int i2) {
        return new ObservableChar[i2];
    }
}
