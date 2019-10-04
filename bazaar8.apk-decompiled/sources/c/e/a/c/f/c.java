package c.e.a.c.f;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* compiled from: BottomSheetBehavior */
class c implements Parcelable.ClassLoaderCreator<BottomSheetBehavior.SavedState> {
    public BottomSheetBehavior.SavedState[] newArray(int i2) {
        return new BottomSheetBehavior.SavedState[i2];
    }

    public BottomSheetBehavior.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new BottomSheetBehavior.SavedState(parcel, classLoader);
    }

    public BottomSheetBehavior.SavedState createFromParcel(Parcel parcel) {
        return new BottomSheetBehavior.SavedState(parcel, (ClassLoader) null);
    }
}
