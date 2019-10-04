package c.e.a.a.j.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry;

/* compiled from: HlsTrackMetadataEntry */
class q implements Parcelable.Creator<HlsTrackMetadataEntry.VariantInfo> {
    public HlsTrackMetadataEntry.VariantInfo createFromParcel(Parcel parcel) {
        return new HlsTrackMetadataEntry.VariantInfo(parcel);
    }

    public HlsTrackMetadataEntry.VariantInfo[] newArray(int i2) {
        return new HlsTrackMetadataEntry.VariantInfo[i2];
    }
}
