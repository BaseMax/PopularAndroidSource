package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import b.l.C0272b;
import java.io.Serializable;

public class ObservableDouble extends C0272b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableDouble> CREATOR = new n();
    public static final long serialVersionUID = 1;
    public double mValue;

    public ObservableDouble(double d2) {
        this.mValue = d2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeDouble(this.mValue);
    }

    public ObservableDouble() {
    }
}
