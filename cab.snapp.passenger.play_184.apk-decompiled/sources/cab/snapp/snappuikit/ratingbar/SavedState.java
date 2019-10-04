package cab.snapp.snappuikit.ratingbar;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

class SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
        public final SavedState createFromParcel(Parcel parcel) {
            return new SavedState(parcel, (byte) 0);
        }

        public final SavedState[] newArray(int i) {
            return new SavedState[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private float f1647a;

    /* synthetic */ SavedState(Parcel parcel, byte b2) {
        this(parcel);
    }

    SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    private SavedState(Parcel parcel) {
        super(parcel);
        this.f1647a = parcel.readFloat();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeFloat(this.f1647a);
    }

    public float getRating() {
        return this.f1647a;
    }

    public void setRating(float f) {
        this.f1647a = f;
    }
}
