package f.a.a.g.d.a;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.flow.actions.OpenInlineAction;

/* compiled from: OpenInlineAction */
class j implements Parcelable.Creator<OpenInlineAction> {
    public OpenInlineAction createFromParcel(Parcel parcel) {
        return new OpenInlineAction(parcel);
    }

    public OpenInlineAction[] newArray(int i2) {
        return new OpenInlineAction[i2];
    }
}
