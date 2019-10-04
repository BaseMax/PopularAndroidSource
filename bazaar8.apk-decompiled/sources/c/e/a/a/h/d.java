package c.e.a.a.h;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.offline.StreamKey;

/* compiled from: StreamKey */
class d implements Parcelable.Creator<StreamKey> {
    public StreamKey createFromParcel(Parcel parcel) {
        return new StreamKey(parcel);
    }

    public StreamKey[] newArray(int i2) {
        return new StreamKey[i2];
    }
}
