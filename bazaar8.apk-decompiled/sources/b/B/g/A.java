package b.b.g;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.AppCompatSpinner;

/* compiled from: AppCompatSpinner */
class A implements Parcelable.Creator<AppCompatSpinner.SavedState> {
    public AppCompatSpinner.SavedState createFromParcel(Parcel parcel) {
        return new AppCompatSpinner.SavedState(parcel);
    }

    public AppCompatSpinner.SavedState[] newArray(int i2) {
        return new AppCompatSpinner.SavedState[i2];
    }
}
