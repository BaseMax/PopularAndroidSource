package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

@SuppressLint({"BanParcelableUsage"})
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new w();

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<FragmentState> f683a;

    /* renamed from: b  reason: collision with root package name */
    public ArrayList<String> f684b;

    /* renamed from: c  reason: collision with root package name */
    public BackStackState[] f685c;

    /* renamed from: d  reason: collision with root package name */
    public String f686d = null;

    /* renamed from: e  reason: collision with root package name */
    public int f687e;

    public FragmentManagerState() {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedList(this.f683a);
        parcel.writeStringList(this.f684b);
        parcel.writeTypedArray(this.f685c, i2);
        parcel.writeString(this.f686d);
        parcel.writeInt(this.f687e);
    }

    public FragmentManagerState(Parcel parcel) {
        this.f683a = parcel.createTypedArrayList(FragmentState.CREATOR);
        this.f684b = parcel.createStringArrayList();
        this.f685c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.f686d = parcel.readString();
        this.f687e = parcel.readInt();
    }
}
