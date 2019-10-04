package com.viewpagerindicator;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import c.g.n;

public class UnderlinePageIndicator$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<UnderlinePageIndicator$SavedState> CREATOR = new o();

    /* renamed from: a  reason: collision with root package name */
    public int f13646a;

    public /* synthetic */ UnderlinePageIndicator$SavedState(Parcel parcel, n nVar) {
        this(parcel);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f13646a);
    }

    public UnderlinePageIndicator$SavedState(Parcel parcel) {
        super(parcel);
        this.f13646a = parcel.readInt();
    }
}
