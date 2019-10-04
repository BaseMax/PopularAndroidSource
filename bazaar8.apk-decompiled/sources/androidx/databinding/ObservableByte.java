package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import b.l.C0272b;
import java.io.Serializable;

public class ObservableByte extends C0272b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableByte> CREATOR = new l();
    public static final long serialVersionUID = 1;
    public byte mValue;

    public ObservableByte(byte b2) {
        this.mValue = b2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByte(this.mValue);
    }

    public ObservableByte() {
    }
}
