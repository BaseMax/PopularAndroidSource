package f.a.a.g.d.a;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.flow.actions.PayAction;

/* compiled from: PayAction */
class k implements Parcelable.Creator<PayAction> {
    public PayAction createFromParcel(Parcel parcel) {
        return new PayAction(parcel);
    }

    public PayAction[] newArray(int i2) {
        return new PayAction[i2];
    }
}
