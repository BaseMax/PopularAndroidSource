package b.l;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.databinding.ObservableParcelable;

/* compiled from: ObservableParcelable */
class t implements Parcelable.Creator<ObservableParcelable> {
    public ObservableParcelable createFromParcel(Parcel parcel) {
        return new ObservableParcelable(parcel.readParcelable(t.class.getClassLoader()));
    }

    public ObservableParcelable[] newArray(int i2) {
        return new ObservableParcelable[i2];
    }
}
