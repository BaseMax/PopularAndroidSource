package a.a.b.b;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat;

/* compiled from: MediaBrowserCompat */
class e implements Parcelable.Creator<MediaBrowserCompat.MediaItem> {
    public MediaBrowserCompat.MediaItem createFromParcel(Parcel parcel) {
        return new MediaBrowserCompat.MediaItem(parcel);
    }

    public MediaBrowserCompat.MediaItem[] newArray(int i2) {
        return new MediaBrowserCompat.MediaItem[i2];
    }
}
