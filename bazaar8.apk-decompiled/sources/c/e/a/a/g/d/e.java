package c.e.a.a.g.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.scte35.SpliceScheduleCommand;

/* compiled from: SpliceScheduleCommand */
class e implements Parcelable.Creator<SpliceScheduleCommand> {
    public SpliceScheduleCommand createFromParcel(Parcel parcel) {
        return new SpliceScheduleCommand(parcel, null);
    }

    public SpliceScheduleCommand[] newArray(int i2) {
        return new SpliceScheduleCommand[i2];
    }
}
