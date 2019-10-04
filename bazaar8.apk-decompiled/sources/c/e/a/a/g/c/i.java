package c.e.a.a.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;

/* compiled from: InternalFrame */
class i implements Parcelable.Creator<InternalFrame> {
    public InternalFrame createFromParcel(Parcel parcel) {
        return new InternalFrame(parcel);
    }

    public InternalFrame[] newArray(int i2) {
        return new InternalFrame[i2];
    }
}
