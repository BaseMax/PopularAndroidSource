package c.e.a.a.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.ChapterTocFrame;

/* compiled from: ChapterTocFrame */
class e implements Parcelable.Creator<ChapterTocFrame> {
    public ChapterTocFrame createFromParcel(Parcel parcel) {
        return new ChapterTocFrame(parcel);
    }

    public ChapterTocFrame[] newArray(int i2) {
        return new ChapterTocFrame[i2];
    }
}
