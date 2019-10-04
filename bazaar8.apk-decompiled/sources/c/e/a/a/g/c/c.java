package c.e.a.a.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.BinaryFrame;

/* compiled from: BinaryFrame */
class c implements Parcelable.Creator<BinaryFrame> {
    public BinaryFrame createFromParcel(Parcel parcel) {
        return new BinaryFrame(parcel);
    }

    public BinaryFrame[] newArray(int i2) {
        return new BinaryFrame[i2];
    }
}
