package ir.cafebazaar.inline.platform;

import android.os.Parcel;
import android.os.Parcelable;
import c.c.a.d.c.b;
import f.a.a.b.a;
import f.a.a.e.g;
import ir.cafebazaar.inline.ux.permission.PermissionManager;
import java.math.BigInteger;
import java.security.SecureRandom;

public class InlineUser implements Parcelable {
    public static final Parcelable.Creator<InlineUser> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    public String f14955a;

    /* renamed from: b  reason: collision with root package name */
    public String f14956b;

    /* renamed from: c  reason: collision with root package name */
    public b f14957c;

    /* renamed from: d  reason: collision with root package name */
    public final PermissionManager f14958d;

    /* renamed from: e  reason: collision with root package name */
    public final String f14959e;

    public InlineUser() {
        this.f14957c = a.f13938b;
        this.f14958d = new PermissionManager();
        this.f14959e = a();
    }

    public static String a() {
        return new BigInteger(130, new SecureRandom()).toString(32);
    }

    public void a(g gVar) {
    }

    public void a(String str) {
    }

    public PermissionManager b() {
        return this.f14958d;
    }

    public String c() {
        return this.f14959e;
    }

    public String d() {
        return this.f14955a;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f14955a);
        parcel.writeString(this.f14956b);
        parcel.writeParcelable(this.f14958d, i2);
        parcel.writeString(this.f14959e);
    }

    public InlineUser(Parcel parcel) {
        this.f14957c = a.f13938b;
        this.f14955a = parcel.readString();
        this.f14956b = parcel.readString();
        this.f14958d = (PermissionManager) parcel.readParcelable(PermissionManager.class.getClassLoader());
        this.f14959e = parcel.readString();
    }
}
