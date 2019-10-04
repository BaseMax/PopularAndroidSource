package c.e.a.a.g.c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;

/* compiled from: CommentFrame */
class f implements Parcelable.Creator<CommentFrame> {
    public CommentFrame createFromParcel(Parcel parcel) {
        return new CommentFrame(parcel);
    }

    public CommentFrame[] newArray(int i2) {
        return new CommentFrame[i2];
    }
}
