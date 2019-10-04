package f.a.a.g.f.a;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.payment.iab.IABPaymentInfo;

/* compiled from: IABPaymentInfo */
class c implements Parcelable.Creator<IABPaymentInfo> {
    public IABPaymentInfo createFromParcel(Parcel parcel) {
        return new IABPaymentInfo(parcel);
    }

    public IABPaymentInfo[] newArray(int i2) {
        return new IABPaymentInfo[i2];
    }
}
