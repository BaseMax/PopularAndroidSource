package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import b.l.C0272b;
import java.io.Serializable;

public class ObservableLong extends C0272b implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableLong> CREATOR = new r();
    public static final long serialVersionUID = 1;
    public long mValue;

    public ObservableLong(long j2) {
        this.mValue = j2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.mValue);
    }

    public ObservableLong() {
    }
}
