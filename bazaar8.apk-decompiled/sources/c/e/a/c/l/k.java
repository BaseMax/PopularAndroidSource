package c.e.a.c.l;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.internal.ParcelableSparseArray;

/* compiled from: ParcelableSparseArray */
class k implements Parcelable.ClassLoaderCreator<ParcelableSparseArray> {
    public ParcelableSparseArray[] newArray(int i2) {
        return new ParcelableSparseArray[i2];
    }

    public ParcelableSparseArray createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new ParcelableSparseArray(parcel, classLoader);
    }

    public ParcelableSparseArray createFromParcel(Parcel parcel) {
        return new ParcelableSparseArray(parcel, null);
    }
}
