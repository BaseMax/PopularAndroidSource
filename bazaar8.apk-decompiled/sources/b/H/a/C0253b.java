package b.h.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* renamed from: b.h.a.b  reason: case insensitive filesystem */
/* compiled from: CoordinatorLayout */
class C0253b implements Parcelable.ClassLoaderCreator<CoordinatorLayout.SavedState> {
    public CoordinatorLayout.SavedState[] newArray(int i2) {
        return new CoordinatorLayout.SavedState[i2];
    }

    public CoordinatorLayout.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new CoordinatorLayout.SavedState(parcel, classLoader);
    }

    public CoordinatorLayout.SavedState createFromParcel(Parcel parcel) {
        return new CoordinatorLayout.SavedState(parcel, null);
    }
}
