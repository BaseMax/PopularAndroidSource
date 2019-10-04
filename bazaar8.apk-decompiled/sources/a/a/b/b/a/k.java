package a.a.b.b.a;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;

/* compiled from: MediaSessionCompat */
class k implements Parcelable.Creator<MediaSessionCompat.Token> {
    public MediaSessionCompat.Token createFromParcel(Parcel parcel) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 21) {
            obj = parcel.readParcelable(null);
        } else {
            obj = parcel.readStrongBinder();
        }
        return new MediaSessionCompat.Token(obj);
    }

    public MediaSessionCompat.Token[] newArray(int i2) {
        return new MediaSessionCompat.Token[i2];
    }
}
