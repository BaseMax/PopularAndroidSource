package a.a.b.b;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaMetadataCompat;

/* compiled from: MediaMetadataCompat */
class k implements Parcelable.Creator<MediaMetadataCompat> {
    public MediaMetadataCompat createFromParcel(Parcel parcel) {
        return new MediaMetadataCompat(parcel);
    }

    public MediaMetadataCompat[] newArray(int i2) {
        return new MediaMetadataCompat[i2];
    }
}
