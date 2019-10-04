package c.e.a.b.d.d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.BinderWrapper;

public final class E implements Parcelable.Creator<BinderWrapper> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new BinderWrapper(parcel, null);
    }

    public final /* synthetic */ Object[] newArray(int i2) {
        return new BinderWrapper[i2];
    }
}
