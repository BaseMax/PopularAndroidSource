package c.e.a.a.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;

/* compiled from: MlltFrame */
class j implements Parcelable.Creator<MlltFrame> {
    public MlltFrame createFromParcel(Parcel parcel) {
        return new MlltFrame(parcel);
    }

    public MlltFrame[] newArray(int i2) {
        return new MlltFrame[i2];
    }
}
