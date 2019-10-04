package ir.cafebazaar.inline.ux.audio;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;

public class MusicDescriptor implements Parcelable {
    public static final Parcelable.Creator<MusicDescriptor> CREATOR = new j();

    /* renamed from: a  reason: collision with root package name */
    public int f15051a;

    /* renamed from: b  reason: collision with root package name */
    public String f15052b;

    /* renamed from: c  reason: collision with root package name */
    public String f15053c;

    /* renamed from: d  reason: collision with root package name */
    public Bitmap f15054d;

    /* renamed from: e  reason: collision with root package name */
    public String f15055e;

    /* renamed from: f  reason: collision with root package name */
    public long f15056f;

    /* renamed from: g  reason: collision with root package name */
    public String f15057g;

    public MusicDescriptor(Integer num, String str, String str2, Bitmap bitmap, String str3, long j2, String str4) {
        this.f15051a = num.intValue();
        this.f15052b = str;
        this.f15053c = str2;
        this.f15054d = bitmap;
        this.f15055e = str3;
        this.f15056f = j2;
        this.f15057g = str4;
    }

    public String a() {
        return this.f15053c;
    }

    public String b() {
        return this.f15057g;
    }

    public void c(String str) {
        this.f15052b = str;
    }

    public int d() {
        return this.f15051a;
    }

    public int describeContents() {
        return 0;
    }

    public Bitmap e() {
        return this.f15054d;
    }

    public String f() {
        return this.f15055e;
    }

    public String g() {
        return this.f15052b;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f15051a);
        parcel.writeString(this.f15052b);
        parcel.writeString(this.f15053c);
        parcel.writeParcelable(this.f15054d, i2);
        parcel.writeString(this.f15055e);
        parcel.writeLong(this.f15056f);
        parcel.writeString(this.f15057g);
    }

    public void a(String str) {
        this.f15053c = str;
    }

    public void b(String str) {
        this.f15057g = str;
    }

    public long c() {
        return this.f15056f;
    }

    public void a(Bitmap bitmap) {
        this.f15054d = bitmap;
    }

    public void a(long j2) {
        this.f15056f = j2;
    }

    public MusicDescriptor(Integer num, String str) {
        this(num, null, null, null, str, 0, null);
    }

    public MusicDescriptor(Parcel parcel) {
        this.f15051a = parcel.readInt();
        this.f15052b = parcel.readString();
        this.f15053c = parcel.readString();
        this.f15054d = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.f15055e = parcel.readString();
        this.f15056f = parcel.readLong();
        this.f15057g = parcel.readString();
    }
}
