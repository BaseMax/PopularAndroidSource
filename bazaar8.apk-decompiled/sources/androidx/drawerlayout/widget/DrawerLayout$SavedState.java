package androidx.drawerlayout.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.customview.view.AbsSavedState;

public class DrawerLayout$SavedState extends AbsSavedState {
    public static final Parcelable.Creator<DrawerLayout$SavedState> CREATOR = new a();

    /* renamed from: c  reason: collision with root package name */
    public int f640c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f641d;

    /* renamed from: e  reason: collision with root package name */
    public int f642e;

    /* renamed from: f  reason: collision with root package name */
    public int f643f;

    /* renamed from: g  reason: collision with root package name */
    public int f644g;

    public DrawerLayout$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f640c = parcel.readInt();
        this.f641d = parcel.readInt();
        this.f642e = parcel.readInt();
        this.f643f = parcel.readInt();
        this.f644g = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f640c);
        parcel.writeInt(this.f641d);
        parcel.writeInt(this.f642e);
        parcel.writeInt(this.f643f);
        parcel.writeInt(this.f644g);
    }
}
