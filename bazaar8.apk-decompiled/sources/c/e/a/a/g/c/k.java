package c.e.a.a.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;

/* compiled from: PrivFrame */
class k implements Parcelable.Creator<PrivFrame> {
    public PrivFrame createFromParcel(Parcel parcel) {
        return new PrivFrame(parcel);
    }

    public PrivFrame[] newArray(int i2) {
        return new PrivFrame[i2];
    }
}
