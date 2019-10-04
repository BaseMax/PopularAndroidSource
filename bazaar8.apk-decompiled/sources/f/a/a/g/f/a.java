package f.a.a.g.f;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.payment.ResidPaymentInfo;

/* compiled from: ResidPaymentInfo */
class a implements Parcelable.Creator<ResidPaymentInfo> {
    public ResidPaymentInfo createFromParcel(Parcel parcel) {
        return new ResidPaymentInfo(parcel);
    }

    public ResidPaymentInfo[] newArray(int i2) {
        return new ResidPaymentInfo[i2];
    }
}
