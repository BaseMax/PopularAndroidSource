package c.e.a.a.g.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.scte35.SpliceInsertCommand;

/* compiled from: SpliceInsertCommand */
class c implements Parcelable.Creator<SpliceInsertCommand> {
    public SpliceInsertCommand createFromParcel(Parcel parcel) {
        return new SpliceInsertCommand(parcel, null);
    }

    public SpliceInsertCommand[] newArray(int i2) {
        return new SpliceInsertCommand[i2];
    }
}
