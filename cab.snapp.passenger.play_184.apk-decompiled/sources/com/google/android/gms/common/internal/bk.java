package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;

final class bk implements Parcelable.Creator<BinderWrapper> {
    bk() {
    }

    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new BinderWrapper(parcel, (byte) 0);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new BinderWrapper[i];
    }
}
