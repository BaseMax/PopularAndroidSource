package com.viewpagerindicator;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

public class LinePageIndicator$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<LinePageIndicator$SavedState> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    public int f13643a;

    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f13643a);
    }

    public LinePageIndicator$SavedState(Parcel parcel) {
        super(parcel);
        this.f13643a = parcel.readInt();
    }
}
