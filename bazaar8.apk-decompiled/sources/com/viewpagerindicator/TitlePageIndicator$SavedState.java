package com.viewpagerindicator;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import c.g.l;

public class TitlePageIndicator$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<TitlePageIndicator$SavedState> CREATOR = new m();

    /* renamed from: a  reason: collision with root package name */
    public int f13645a;

    public /* synthetic */ TitlePageIndicator$SavedState(Parcel parcel, l lVar) {
        this(parcel);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f13645a);
    }

    public TitlePageIndicator$SavedState(Parcel parcel) {
        super(parcel);
        this.f13645a = parcel.readInt();
    }
}
