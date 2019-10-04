package c.e.a.a.i;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.scheduler.Requirements;

/* compiled from: Requirements */
class a implements Parcelable.Creator<Requirements> {
    public Requirements createFromParcel(Parcel parcel) {
        return new Requirements(parcel.readInt());
    }

    public Requirements[] newArray(int i2) {
        return new Requirements[i2];
    }
}
