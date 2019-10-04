package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.E;
import com.google.android.gms.common.annotation.KeepName;

@KeepName
public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new E();

    /* renamed from: a  reason: collision with root package name */
    public IBinder f13055a;

    public BinderWrapper() {
        this.f13055a = null;
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongBinder(this.f13055a);
    }

    public BinderWrapper(Parcel parcel) {
        this.f13055a = null;
        this.f13055a = parcel.readStrongBinder();
    }

    public /* synthetic */ BinderWrapper(Parcel parcel, E e2) {
        this(parcel);
    }
}
