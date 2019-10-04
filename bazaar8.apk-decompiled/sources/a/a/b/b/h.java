package a.a.b.b;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;

/* compiled from: MediaDescriptionCompat */
class h implements Parcelable.Creator<MediaDescriptionCompat> {
    public MediaDescriptionCompat createFromParcel(Parcel parcel) {
        if (Build.VERSION.SDK_INT < 21) {
            return new MediaDescriptionCompat(parcel);
        }
        return MediaDescriptionCompat.a(i.a(parcel));
    }

    public MediaDescriptionCompat[] newArray(int i2) {
        return new MediaDescriptionCompat[i2];
    }
}
