package f.a.a.g.d;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.flow.FlowSnapshot;

/* compiled from: FlowSnapshot */
class f implements Parcelable.Creator<FlowSnapshot> {
    public FlowSnapshot createFromParcel(Parcel parcel) {
        return new FlowSnapshot(parcel);
    }

    public FlowSnapshot[] newArray(int i2) {
        return new FlowSnapshot[i2];
    }
}
