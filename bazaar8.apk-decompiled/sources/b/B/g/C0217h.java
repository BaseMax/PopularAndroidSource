package b.b.g;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.widget.ActionMenuPresenter;

/* renamed from: b.b.g.h  reason: case insensitive filesystem */
/* compiled from: ActionMenuPresenter */
class C0217h implements Parcelable.Creator<ActionMenuPresenter.SavedState> {
    public ActionMenuPresenter.SavedState createFromParcel(Parcel parcel) {
        return new ActionMenuPresenter.SavedState(parcel);
    }

    public ActionMenuPresenter.SavedState[] newArray(int i2) {
        return new ActionMenuPresenter.SavedState[i2];
    }
}
