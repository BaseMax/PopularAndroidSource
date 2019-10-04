package cab.snapp.passenger.data.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class DriverInfo implements Parcelable {
    public static final Parcelable.Creator<DriverInfo> CREATOR = new Parcelable.Creator<DriverInfo>() {
        public final DriverInfo createFromParcel(Parcel parcel) {
            return new DriverInfo(parcel);
        }

        public final DriverInfo[] newArray(int i) {
            return new DriverInfo[i];
        }
    };
    @c("cellphone")
    private String cellphone;
    @c("image_url")
    private String imageUrl;
    @c("driver_name")
    private String name;
    @c("plate")
    private PlateNumber plateNumber;
    @c("vehicle_model")
    private String vehicleModel;

    public int describeContents() {
        return 0;
    }

    public DriverInfo() {
    }

    protected DriverInfo(Parcel parcel) {
        this.name = parcel.readString();
        this.cellphone = parcel.readString();
        this.plateNumber = (PlateNumber) parcel.readParcelable(PlateNumber.class.getClassLoader());
        this.imageUrl = parcel.readString();
        this.vehicleModel = parcel.readString();
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getCellphone() {
        return this.cellphone;
    }

    public void setCellphone(String str) {
        this.cellphone = str;
    }

    public PlateNumber getPlateNumber() {
        return this.plateNumber;
    }

    public void setPlateNumber(PlateNumber plateNumber2) {
        this.plateNumber = plateNumber2;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public String getVehicleModel() {
        return this.vehicleModel;
    }

    public void setVehicleModel(String str) {
        this.vehicleModel = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.cellphone);
        parcel.writeParcelable(this.plateNumber, i);
        parcel.writeString(this.imageUrl);
        parcel.writeString(this.vehicleModel);
    }

    public String toString() {
        return "DriverInfo{name='" + this.name + '\'' + ", cellphone='" + this.cellphone + '\'' + ", plateNumber=" + this.plateNumber + ", imageUrl='" + this.imageUrl + '\'' + ", vehicleModel='" + this.vehicleModel + '\'' + '}';
    }
}
