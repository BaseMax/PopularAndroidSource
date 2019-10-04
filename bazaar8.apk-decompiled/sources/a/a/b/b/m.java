package a.a.b.b;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.RatingCompat;

/* compiled from: RatingCompat */
class m implements Parcelable.Creator<RatingCompat> {
    public RatingCompat createFromParcel(Parcel parcel) {
        return new RatingCompat(parcel.readInt(), parcel.readFloat());
    }

    public RatingCompat[] newArray(int i2) {
        return new RatingCompat[i2];
    }
}
