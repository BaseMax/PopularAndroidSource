package a.a.b.b.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;

/* compiled from: MediaSessionCompat */
class j implements Parcelable.Creator<MediaSessionCompat.ResultReceiverWrapper> {
    public MediaSessionCompat.ResultReceiverWrapper createFromParcel(Parcel parcel) {
        return new MediaSessionCompat.ResultReceiverWrapper(parcel);
    }

    public MediaSessionCompat.ResultReceiverWrapper[] newArray(int i2) {
        return new MediaSessionCompat.ResultReceiverWrapper[i2];
    }
}
