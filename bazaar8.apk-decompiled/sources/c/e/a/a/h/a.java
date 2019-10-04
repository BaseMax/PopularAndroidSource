package c.e.a.a.h;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.offline.DownloadRequest;

/* compiled from: DownloadRequest */
class a implements Parcelable.Creator<DownloadRequest> {
    public DownloadRequest createFromParcel(Parcel parcel) {
        return new DownloadRequest(parcel);
    }

    public DownloadRequest[] newArray(int i2) {
        return new DownloadRequest[i2];
    }
}
