package c.c.a.o.b;

import android.os.Parcel;
import android.os.Parcelable;
import com.farsitel.bazaar.widget.persianpicker.PersianDatePicker;

/* compiled from: PersianDatePicker */
class g implements Parcelable.Creator<PersianDatePicker.SavedState> {
    public PersianDatePicker.SavedState createFromParcel(Parcel parcel) {
        return new PersianDatePicker.SavedState(parcel, null);
    }

    public PersianDatePicker.SavedState[] newArray(int i2) {
        return new PersianDatePicker.SavedState[i2];
    }
}
