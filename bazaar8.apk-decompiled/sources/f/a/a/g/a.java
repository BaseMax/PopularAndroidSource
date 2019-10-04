package f.a.a.g;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.IABConsumeInfo;

/* compiled from: IABConsumeInfo */
class a implements Parcelable.Creator<IABConsumeInfo> {
    public IABConsumeInfo createFromParcel(Parcel parcel) {
        return new IABConsumeInfo(parcel);
    }

    public IABConsumeInfo[] newArray(int i2) {
        return new IABConsumeInfo[i2];
    }
}
