package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new bk();

    /* renamed from: a  reason: collision with root package name */
    private IBinder f2920a;

    public BinderWrapper() {
        this.f2920a = null;
    }

    public BinderWrapper(IBinder iBinder) {
        this.f2920a = null;
        this.f2920a = iBinder;
    }

    private BinderWrapper(Parcel parcel) {
        this.f2920a = null;
        this.f2920a = parcel.readStrongBinder();
    }

    /* synthetic */ BinderWrapper(Parcel parcel, byte b2) {
        this(parcel);
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.f2920a);
    }
}
