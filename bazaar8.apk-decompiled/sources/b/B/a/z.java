package b.b.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.app.AppCompatDelegateImpl;

/* compiled from: AppCompatDelegateImpl */
class z implements Parcelable.ClassLoaderCreator<AppCompatDelegateImpl.PanelFeatureState.SavedState> {
    public AppCompatDelegateImpl.PanelFeatureState.SavedState[] newArray(int i2) {
        return new AppCompatDelegateImpl.PanelFeatureState.SavedState[i2];
    }

    public AppCompatDelegateImpl.PanelFeatureState.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return AppCompatDelegateImpl.PanelFeatureState.SavedState.a(parcel, classLoader);
    }

    public AppCompatDelegateImpl.PanelFeatureState.SavedState createFromParcel(Parcel parcel) {
        return AppCompatDelegateImpl.PanelFeatureState.SavedState.a(parcel, null);
    }
}
