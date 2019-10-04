package c.e.a.a.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.GeobFrame;

/* compiled from: GeobFrame */
class g implements Parcelable.Creator<GeobFrame> {
    public GeobFrame createFromParcel(Parcel parcel) {
        return new GeobFrame(parcel);
    }

    public GeobFrame[] newArray(int i2) {
        return new GeobFrame[i2];
    }
}
