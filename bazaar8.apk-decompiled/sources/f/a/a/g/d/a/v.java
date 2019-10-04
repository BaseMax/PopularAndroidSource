package f.a.a.g.d.a;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.flow.actions.WebAction;

/* compiled from: WebAction */
class v implements Parcelable.Creator<WebAction> {
    public WebAction createFromParcel(Parcel parcel) {
        return new WebAction(parcel);
    }

    public WebAction[] newArray(int i2) {
        return new WebAction[i2];
    }
}
