package ir.cafebazaar.inline.ux;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.payment.PaymentInfo;

public class IABConsumeInfo extends PaymentInfo {
    public static final Parcelable.Creator<IABConsumeInfo> CREATOR = new a();

    /* renamed from: d  reason: collision with root package name */
    public String f15039d;

    public IABConsumeInfo(Parcel parcel) {
        super(parcel);
        this.f15039d = parcel.readString();
    }

    public void c(String str) {
        this.f15039d = str;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.f15039d);
    }

    public IABConsumeInfo() {
    }
}
