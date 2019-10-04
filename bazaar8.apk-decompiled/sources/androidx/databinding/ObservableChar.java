package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import b.l.C0272b;
import java.io.Serializable;

public class ObservableChar extends C0272b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableChar> CREATOR = new m();
    public static final long serialVersionUID = 1;
    public char mValue;

    public ObservableChar(char c2) {
        this.mValue = c2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mValue);
    }

    public ObservableChar() {
    }
}
