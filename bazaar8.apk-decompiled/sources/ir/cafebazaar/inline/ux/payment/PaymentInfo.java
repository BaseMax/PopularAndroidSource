package ir.cafebazaar.inline.ux.payment;

import android.os.Parcel;
import android.os.Parcelable;
import f.a.a.d.a;

public abstract class PaymentInfo implements a, Parcelable {

    /* renamed from: a  reason: collision with root package name */
    public String f15076a;

    /* renamed from: b  reason: collision with root package name */
    public String f15077b;

    /* renamed from: c  reason: collision with root package name */
    public long f15078c;

    public PaymentInfo() {
        this.f15076a = "@exit";
        this.f15078c = System.currentTimeMillis();
    }

    public void a(String str) {
        this.f15076a = str;
    }

    public long b() {
        return this.f15078c;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f15076a);
        parcel.writeString(this.f15077b);
        parcel.writeLong(this.f15078c);
    }

    public String a() {
        return this.f15076a;
    }

    public void b(String str) {
        this.f15077b = str;
    }

    public PaymentInfo(Parcel parcel) {
        this.f15076a = "@exit";
        this.f15076a = parcel.readString();
        this.f15077b = parcel.readString();
        this.f15078c = parcel.readLong();
    }
}
