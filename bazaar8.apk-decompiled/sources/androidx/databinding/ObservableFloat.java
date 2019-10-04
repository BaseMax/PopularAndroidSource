package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import b.l.C0272b;
import java.io.Serializable;

public class ObservableFloat extends C0272b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableFloat> CREATOR = new o();
    public static final long serialVersionUID = 1;
    public float mValue;

    public ObservableFloat(float f2) {
        this.mValue = f2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.mValue);
    }

    public ObservableFloat() {
    }
}
