package c.e.a.a.e.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry;

/* compiled from: MdtaMetadataEntry */
class i implements Parcelable.Creator<MdtaMetadataEntry> {
    public MdtaMetadataEntry createFromParcel(Parcel parcel) {
        return new MdtaMetadataEntry(parcel, null);
    }

    public MdtaMetadataEntry[] newArray(int i2) {
        return new MdtaMetadataEntry[i2];
    }
}
