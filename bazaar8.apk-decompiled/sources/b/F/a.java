package b.F;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.versionedparcelable.ParcelImpl;

/* compiled from: ParcelImpl */
class a implements Parcelable.Creator<ParcelImpl> {
    public ParcelImpl createFromParcel(Parcel parcel) {
        return new ParcelImpl(parcel);
    }

    public ParcelImpl[] newArray(int i2) {
        return new ParcelImpl[i2];
    }
}
