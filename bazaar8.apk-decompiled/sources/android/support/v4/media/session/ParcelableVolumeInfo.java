package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new o();

    /* renamed from: a  reason: collision with root package name */
    public int f173a;

    /* renamed from: b  reason: collision with root package name */
    public int f174b;

    /* renamed from: c  reason: collision with root package name */
    public int f175c;

    /* renamed from: d  reason: collision with root package name */
    public int f176d;

    /* renamed from: e  reason: collision with root package name */
    public int f177e;

    public ParcelableVolumeInfo(int i2, int i3, int i4, int i5, int i6) {
        this.f173a = i2;
        this.f174b = i3;
        this.f175c = i4;
        this.f176d = i5;
        this.f177e = i6;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f173a);
        parcel.writeInt(this.f175c);
        parcel.writeInt(this.f176d);
        parcel.writeInt(this.f177e);
        parcel.writeInt(this.f174b);
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f173a = parcel.readInt();
        this.f175c = parcel.readInt();
        this.f176d = parcel.readInt();
        this.f177e = parcel.readInt();
        this.f174b = parcel.readInt();
    }
}
