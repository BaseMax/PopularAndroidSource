package cab.snapp.passenger.data.models.snapp_group;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class ServiceMeta implements Parcelable {
    public static final Parcelable.Creator<ServiceMeta> CREATOR = new Parcelable.Creator<ServiceMeta>() {
        public final ServiceMeta createFromParcel(Parcel parcel) {
            return new ServiceMeta(parcel);
        }

        public final ServiceMeta[] newArray(int i) {
            return new ServiceMeta[i];
        }
    };
    @c("app_version")
    private boolean appVersion;
    @c("location")
    private boolean location;

    public int describeContents() {
        return 0;
    }

    public boolean isLocation() {
        return this.location;
    }

    public void setLocation(boolean z) {
        this.location = z;
    }

    public boolean isAppVersion() {
        return this.appVersion;
    }

    public void setAppVersion(boolean z) {
        this.appVersion = z;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.location ? (byte) 1 : 0);
        parcel.writeByte(this.appVersion ? (byte) 1 : 0);
    }

    public ServiceMeta() {
    }

    protected ServiceMeta(Parcel parcel) {
        boolean z = true;
        this.location = parcel.readByte() != 0;
        this.appVersion = parcel.readByte() == 0 ? false : z;
    }
}
