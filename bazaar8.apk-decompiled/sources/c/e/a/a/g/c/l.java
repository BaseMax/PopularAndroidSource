package c.e.a.a.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;

/* compiled from: TextInformationFrame */
class l implements Parcelable.Creator<TextInformationFrame> {
    public TextInformationFrame createFromParcel(Parcel parcel) {
        return new TextInformationFrame(parcel);
    }

    public TextInformationFrame[] newArray(int i2) {
        return new TextInformationFrame[i2];
    }
}
