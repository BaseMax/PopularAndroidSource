package b.o.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;

/* renamed from: b.o.a.h  reason: case insensitive filesystem */
/* compiled from: Fragment */
class C0284h implements Parcelable.ClassLoaderCreator<Fragment.SavedState> {
    public Fragment.SavedState[] newArray(int i2) {
        return new Fragment.SavedState[i2];
    }

    public Fragment.SavedState createFromParcel(Parcel parcel) {
        return new Fragment.SavedState(parcel, null);
    }

    public Fragment.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new Fragment.SavedState(parcel, classLoader);
    }
}
