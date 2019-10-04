package cab.snapp.passenger.data.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;

public class FormattedAddress implements Parcelable {
    public static final Parcelable.Creator<FormattedAddress> CREATOR = new Parcelable.Creator<FormattedAddress>() {
        public final FormattedAddress createFromParcel(Parcel parcel) {
            return new FormattedAddress(parcel);
        }

        public final FormattedAddress[] newArray(int i) {
            return new FormattedAddress[i];
        }
    };
    @c("details")
    private String details;
    @c("formatted_address")
    private String formattedAddress;
    @c("lat")
    private double lat;
    @c("lng")
    private double lng;

    public int describeContents() {
        return 0;
    }

    public FormattedAddress() {
    }

    protected FormattedAddress(Parcel parcel) {
        this.lat = parcel.readDouble();
        this.lng = parcel.readDouble();
        this.formattedAddress = parcel.readString();
        this.details = parcel.readString();
    }

    public double getLat() {
        return this.lat;
    }

    public void setLat(double d) {
        this.lat = d;
    }

    public double getLng() {
        return this.lng;
    }

    public void setLng(double d) {
        this.lng = d;
    }

    public String getFormattedAddress() {
        return this.formattedAddress;
    }

    public void setFormattedAddress(String str) {
        this.formattedAddress = str;
    }

    public String getDetails() {
        return this.details;
    }

    public void setDetails(String str) {
        this.details = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.lat);
        parcel.writeDouble(this.lng);
        parcel.writeString(this.formattedAddress);
        parcel.writeString(this.details);
    }

    public String toString() {
        return "FormattedAddress{org_lat=" + this.lat + ", org_lng=" + this.lng + ", formattedAddress='" + this.formattedAddress + '\'' + ", details='" + this.details + '\'' + '}';
    }
}
