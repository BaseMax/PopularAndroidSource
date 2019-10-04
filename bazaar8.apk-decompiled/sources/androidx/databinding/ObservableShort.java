package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import b.l.C0272b;
import java.io.Serializable;

public class ObservableShort extends C0272b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableShort> CREATOR = new u();
    public static final long serialVersionUID = 1;
    public short mValue;

    public ObservableShort(short s) {
        this.mValue = s;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mValue);
    }

    public ObservableShort() {
    }
}
