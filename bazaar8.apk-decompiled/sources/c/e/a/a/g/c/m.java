package c.e.a.a.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.UrlLinkFrame;

/* compiled from: UrlLinkFrame */
class m implements Parcelable.Creator<UrlLinkFrame> {
    public UrlLinkFrame createFromParcel(Parcel parcel) {
        return new UrlLinkFrame(parcel);
    }

    public UrlLinkFrame[] newArray(int i2) {
        return new UrlLinkFrame[i2];
    }
}
