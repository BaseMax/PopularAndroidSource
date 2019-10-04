package c.e.a.a.j.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry;

/* compiled from: HlsTrackMetadataEntry */
class p implements Parcelable.Creator<HlsTrackMetadataEntry> {
    public HlsTrackMetadataEntry createFromParcel(Parcel parcel) {
        return new HlsTrackMetadataEntry(parcel);
    }

    public HlsTrackMetadataEntry[] newArray(int i2) {
        return new HlsTrackMetadataEntry[i2];
    }
}
