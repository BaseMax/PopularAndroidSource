package f.a.a.g.d.a;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.flow.actions.ImagePickerAction;

/* compiled from: ImagePickerAction */
class g implements Parcelable.Creator<ImagePickerAction> {
    public ImagePickerAction createFromParcel(Parcel parcel) {
        return new ImagePickerAction(parcel);
    }

    public ImagePickerAction[] newArray(int i2) {
        return new ImagePickerAction[i2];
    }
}
