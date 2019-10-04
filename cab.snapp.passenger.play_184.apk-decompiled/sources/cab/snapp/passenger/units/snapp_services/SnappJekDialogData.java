package cab.snapp.passenger.units.snapp_services;

import android.os.Parcel;
import android.os.Parcelable;

public class SnappJekDialogData implements Parcelable {
    public static final Parcelable.Creator<SnappJekDialogData> CREATOR = new Parcelable.Creator<SnappJekDialogData>() {
        public final SnappJekDialogData createFromParcel(Parcel parcel) {
            return new SnappJekDialogData(parcel);
        }

        public final SnappJekDialogData[] newArray(int i) {
            return new SnappJekDialogData[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private int f1300a;

    /* renamed from: b  reason: collision with root package name */
    private int f1301b;

    public int describeContents() {
        return 0;
    }

    public SnappJekDialogData(int i, int i2) {
        this.f1300a = i2;
        this.f1301b = i;
    }

    protected SnappJekDialogData(Parcel parcel) {
        this.f1300a = parcel.readInt();
        this.f1301b = parcel.readInt();
    }

    public int getImage() {
        return this.f1300a;
    }

    public void setImage(int i) {
        this.f1300a = i;
    }

    public int getTitle() {
        return this.f1301b;
    }

    public void setTitle(int i) {
        this.f1301b = i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1300a);
        parcel.writeInt(this.f1301b);
    }
}
