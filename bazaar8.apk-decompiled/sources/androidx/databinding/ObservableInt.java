package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import b.l.C0272b;
import java.io.Serializable;

public class ObservableInt extends C0272b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableInt> CREATOR = new p();
    public static final long serialVersionUID = 1;
    public int mValue;

    public ObservableInt(int i2) {
        this.mValue = i2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mValue);
    }

    public ObservableInt() {
    }
}
