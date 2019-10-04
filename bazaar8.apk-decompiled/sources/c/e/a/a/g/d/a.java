package c.e.a.a.g.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.scte35.PrivateCommand;

/* compiled from: PrivateCommand */
class a implements Parcelable.Creator<PrivateCommand> {
    public PrivateCommand createFromParcel(Parcel parcel) {
        return new PrivateCommand(parcel, null);
    }

    public PrivateCommand[] newArray(int i2) {
        return new PrivateCommand[i2];
    }
}
