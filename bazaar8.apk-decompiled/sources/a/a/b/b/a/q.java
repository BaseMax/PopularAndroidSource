package a.a.b.b.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.PlaybackStateCompat;

/* compiled from: PlaybackStateCompat */
class q implements Parcelable.Creator<PlaybackStateCompat.CustomAction> {
    public PlaybackStateCompat.CustomAction createFromParcel(Parcel parcel) {
        return new PlaybackStateCompat.CustomAction(parcel);
    }

    public PlaybackStateCompat.CustomAction[] newArray(int i2) {
        return new PlaybackStateCompat.CustomAction[i2];
    }
}
