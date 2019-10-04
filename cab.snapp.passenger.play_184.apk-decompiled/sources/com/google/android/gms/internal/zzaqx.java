package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;

public final class zzaqx implements Parcelable {
    @Deprecated
    public static final Parcelable.Creator<zzaqx> CREATOR = new at();

    /* renamed from: a  reason: collision with root package name */
    private String f3542a;

    /* renamed from: b  reason: collision with root package name */
    private String f3543b;
    private String c;

    @Deprecated
    public zzaqx() {
    }

    @Deprecated
    zzaqx(Parcel parcel) {
        this.f3542a = parcel.readString();
        this.f3543b = parcel.readString();
        this.c = parcel.readString();
    }

    @Deprecated
    public final int describeContents() {
        return 0;
    }

    public final String getId() {
        return this.f3542a;
    }

    public final String getValue() {
        return this.c;
    }

    @Deprecated
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3542a);
        parcel.writeString(this.f3543b);
        parcel.writeString(this.c);
    }
}
