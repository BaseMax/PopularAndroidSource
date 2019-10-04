package ir.cafebazaar.inline.ux.flow;

import android.os.Parcel;
import android.os.Parcelable;

public class FlowSnapshot implements Parcelable {
    public static final Parcelable.Creator<FlowSnapshot> CREATOR = new f();

    /* renamed from: a  reason: collision with root package name */
    public String f15062a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f15063b;

    public FlowSnapshot(String str, boolean z) {
        this.f15062a = str;
        this.f15063b = z;
    }

    public String a() {
        return this.f15062a;
    }

    public boolean b() {
        return this.f15063b;
    }

    public void c() {
        this.f15063b = true;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f15062a);
        parcel.writeString(Boolean.toString(this.f15063b));
    }

    public void a(String str) {
        this.f15062a = str;
    }

    public FlowSnapshot(String str) {
        this(str, false);
    }

    public FlowSnapshot(Parcel parcel) {
        this.f15062a = parcel.readString();
        this.f15063b = Boolean.valueOf(parcel.readString()).booleanValue();
    }
}
