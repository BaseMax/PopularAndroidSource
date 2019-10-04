package a.a.b.b.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.PlaybackStateCompat;

/* compiled from: PlaybackStateCompat */
class p implements Parcelable.Creator<PlaybackStateCompat> {
    public PlaybackStateCompat createFromParcel(Parcel parcel) {
        return new PlaybackStateCompat(parcel);
    }

    public PlaybackStateCompat[] newArray(int i2) {
        return new PlaybackStateCompat[i2];
    }
}
