package ir.cafebazaar.inline.ux.payment.iab;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.payment.PaymentInfo;

public class IABPaymentInfo extends PaymentInfo {
    public static final Parcelable.Creator<IABPaymentInfo> CREATOR = new c();

    /* renamed from: d  reason: collision with root package name */
    public String f15080d;

    /* renamed from: e  reason: collision with root package name */
    public String f15081e = "inapp";

    public IABPaymentInfo(Parcel parcel) {
        super(parcel);
        this.f15080d = parcel.readString();
        this.f15081e = parcel.readString();
    }

    public void c(String str) {
        this.f15080d = str;
    }

    public void d(String str) {
        this.f15081e = str;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.f15080d);
        parcel.writeString(this.f15081e);
    }

    public IABPaymentInfo() {
    }
}
