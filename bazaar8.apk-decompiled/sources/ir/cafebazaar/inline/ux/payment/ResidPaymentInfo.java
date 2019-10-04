package ir.cafebazaar.inline.ux.payment;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;

public class ResidPaymentInfo extends PaymentInfo {
    public static final Parcelable.Creator<ResidPaymentInfo> CREATOR = new a();

    /* renamed from: d  reason: collision with root package name */
    public String f15079d;

    public ResidPaymentInfo() {
    }

    public String c() {
        return this.f15079d;
    }

    public void d(String str) {
        this.f15079d = str;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.f15079d);
    }

    public ResidPaymentInfo(Parcel parcel) {
        super(parcel);
        this.f15079d = parcel.readString();
    }

    public Map<String, Object> c(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("status", str);
        hashMap.put("token", this.f15079d);
        String str2 = this.f15077b;
        if (str2 != null) {
            hashMap.put("payload", str2);
        }
        return hashMap;
    }
}
