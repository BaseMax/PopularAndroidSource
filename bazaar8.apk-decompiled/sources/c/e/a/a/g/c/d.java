package c.e.a.a.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.ChapterFrame;

/* compiled from: ChapterFrame */
class d implements Parcelable.Creator<ChapterFrame> {
    public ChapterFrame createFromParcel(Parcel parcel) {
        return new ChapterFrame(parcel);
    }

    public ChapterFrame[] newArray(int i2) {
        return new ChapterFrame[i2];
    }
}
