package c.e.a.a.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;

/* compiled from: ApicFrame */
class b implements Parcelable.Creator<ApicFrame> {
    public ApicFrame createFromParcel(Parcel parcel) {
        return new ApicFrame(parcel);
    }

    public ApicFrame[] newArray(int i2) {
        return new ApicFrame[i2];
    }
}
