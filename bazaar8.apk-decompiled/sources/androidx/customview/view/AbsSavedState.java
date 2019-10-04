package androidx.customview.view;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class AbsSavedState implements Parcelable {
    public static final Parcelable.Creator<AbsSavedState> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public static final AbsSavedState f615a = new AbsSavedState() {
    };

    /* renamed from: b  reason: collision with root package name */
    public final Parcelable f616b;

    public final Parcelable a() {
        return this.f616b;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f616b, i2);
    }

    public AbsSavedState() {
        this.f616b = null;
    }

    public AbsSavedState(Parcelable parcelable) {
        if (parcelable != null) {
            this.f616b = parcelable == f615a ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public AbsSavedState(Parcel parcel, ClassLoader classLoader) {
        this.f616b = parcel.readParcelable(classLoader) == null ? f615a : parcel.readParcelable(classLoader);
    }
}
