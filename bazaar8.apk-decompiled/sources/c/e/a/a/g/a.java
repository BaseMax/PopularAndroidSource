package c.e.a.a.g;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;

/* compiled from: Metadata */
class a implements Parcelable.Creator<Metadata> {
    public Metadata createFromParcel(Parcel parcel) {
        return new Metadata(parcel);
    }

    public Metadata[] newArray(int i2) {
        return new Metadata[i2];
    }
}
