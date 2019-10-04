package c.e.a.c.v;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.textfield.TextInputLayout;

/* compiled from: TextInputLayout */
class h implements Parcelable.ClassLoaderCreator<TextInputLayout.SavedState> {
    public TextInputLayout.SavedState[] newArray(int i2) {
        return new TextInputLayout.SavedState[i2];
    }

    public TextInputLayout.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new TextInputLayout.SavedState(parcel, classLoader);
    }

    public TextInputLayout.SavedState createFromParcel(Parcel parcel) {
        return new TextInputLayout.SavedState(parcel, null);
    }
}
