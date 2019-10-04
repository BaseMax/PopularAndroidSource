package f.a.a.g.b;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.audio.MusicDescriptor;

/* compiled from: MusicDescriptor */
class j implements Parcelable.Creator<MusicDescriptor> {
    public MusicDescriptor createFromParcel(Parcel parcel) {
        return new MusicDescriptor(parcel);
    }

    public MusicDescriptor[] newArray(int i2) {
        return new MusicDescriptor[i2];
    }
}
