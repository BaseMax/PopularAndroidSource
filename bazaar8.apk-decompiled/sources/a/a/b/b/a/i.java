package a.a.b.b.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;

/* compiled from: MediaSessionCompat */
class i implements Parcelable.Creator<MediaSessionCompat.QueueItem> {
    public MediaSessionCompat.QueueItem createFromParcel(Parcel parcel) {
        return new MediaSessionCompat.QueueItem(parcel);
    }

    public MediaSessionCompat.QueueItem[] newArray(int i2) {
        return new MediaSessionCompat.QueueItem[i2];
    }
}
