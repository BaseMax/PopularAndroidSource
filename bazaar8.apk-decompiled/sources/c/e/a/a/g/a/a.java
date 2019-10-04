package c.e.a.a.g.a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;

/* compiled from: EventMessage */
class a implements Parcelable.Creator<EventMessage> {
    public EventMessage createFromParcel(Parcel parcel) {
        return new EventMessage(parcel);
    }

    public EventMessage[] newArray(int i2) {
        return new EventMessage[i2];
    }
}
