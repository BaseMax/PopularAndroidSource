package b.o.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.BackStackState;

/* renamed from: b.o.a.b  reason: case insensitive filesystem */
/* compiled from: BackStackState */
class C0278b implements Parcelable.Creator<BackStackState> {
    public BackStackState createFromParcel(Parcel parcel) {
        return new BackStackState(parcel);
    }

    public BackStackState[] newArray(int i2) {
        return new BackStackState[i2];
    }
}
