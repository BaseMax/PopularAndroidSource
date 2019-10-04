package a.a.b.c;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ResultReceiver;

/* compiled from: ResultReceiver */
class b implements Parcelable.Creator<ResultReceiver> {
    public ResultReceiver createFromParcel(Parcel parcel) {
        return new ResultReceiver(parcel);
    }

    public ResultReceiver[] newArray(int i2) {
        return new ResultReceiver[i2];
    }
}
