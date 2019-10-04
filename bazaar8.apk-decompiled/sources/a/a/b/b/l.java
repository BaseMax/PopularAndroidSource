package a.a.b.b;

import android.media.MediaMetadata;
import android.os.Parcel;

/* compiled from: MediaMetadataCompatApi21 */
public class l {
    public static void a(Object obj, Parcel parcel, int i2) {
        ((MediaMetadata) obj).writeToParcel(parcel, i2);
    }

    public static Object a(Parcel parcel) {
        return MediaMetadata.CREATOR.createFromParcel(parcel);
    }
}
