package c.e.a.a.g.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.scte35.TimeSignalCommand;

/* compiled from: TimeSignalCommand */
class f implements Parcelable.Creator<TimeSignalCommand> {
    public TimeSignalCommand createFromParcel(Parcel parcel) {
        TimeSignalCommand timeSignalCommand = new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
        return timeSignalCommand;
    }

    public TimeSignalCommand[] newArray(int i2) {
        return new TimeSignalCommand[i2];
    }
}
