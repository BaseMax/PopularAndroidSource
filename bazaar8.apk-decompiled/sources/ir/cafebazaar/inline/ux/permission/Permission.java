package ir.cafebazaar.inline.ux.permission;

import android.os.Parcel;
import android.os.Parcelable;
import f.a.a.d;
import f.a.a.d.a;
import f.a.a.g;

public enum Permission implements a, Parcelable {
    phoneNumber(g.permission_phone_number, d.ic_phone),
    approximateLocation(g.permission_approximate_location, d.ic_location);
    
    public static final Parcelable.Creator<Permission> CREATOR = null;
    public int iconResid;
    public int textResid;

    static {
        CREATOR = new a();
    }

    /* access modifiers changed from: public */
    Permission(int i2, int i3) {
        this.textResid = i2;
        this.iconResid = i3;
    }

    public int describeContents() {
        return 0;
    }

    public int g() {
        return this.iconResid;
    }

    public int h() {
        return this.textResid;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(toString());
    }
}
