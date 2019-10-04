package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

public class FragmentTabHost$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<FragmentTabHost$SavedState> CREATOR = new B();

    /* renamed from: a  reason: collision with root package name */
    public String f700a;

    public FragmentTabHost$SavedState(Parcel parcel) {
        super(parcel);
        this.f700a = parcel.readString();
    }

    public String toString() {
        return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f700a + "}";
    }

    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeString(this.f700a);
    }
}
