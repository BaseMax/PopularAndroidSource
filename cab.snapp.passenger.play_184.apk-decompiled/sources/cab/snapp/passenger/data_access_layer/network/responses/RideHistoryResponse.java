package cab.snapp.passenger.data_access_layer.network.responses;

import android.os.Parcel;
import android.os.Parcelable;
import cab.snapp.passenger.data.models.RideHistoryInfo;
import cab.snapp.snappnetwork.model.f;
import com.google.gson.a.c;
import java.util.List;

public class RideHistoryResponse extends f implements Parcelable {
    public static final Parcelable.Creator<RideHistoryResponse> CREATOR = new Parcelable.Creator<RideHistoryResponse>() {
        public final RideHistoryResponse createFromParcel(Parcel parcel) {
            return new RideHistoryResponse(parcel);
        }

        public final RideHistoryResponse[] newArray(int i) {
            return new RideHistoryResponse[i];
        }
    };
    @c("passenger_photo_url")
    private String passengerPhotoUrl;
    @c("rides")
    private List<RideHistoryInfo> ridesList;
    @c("snapp_duration")
    private String snappDuration;
    @c("snapp_mileage")
    private String snappMileage;
    @c("successful_snapp_rides")
    private String successfulRides;

    public int describeContents() {
        return 0;
    }

    public RideHistoryResponse() {
    }

    protected RideHistoryResponse(Parcel parcel) {
        this.ridesList = parcel.createTypedArrayList(RideHistoryInfo.CREATOR);
        this.snappDuration = parcel.readString();
        this.snappMileage = parcel.readString();
        this.successfulRides = parcel.readString();
        this.passengerPhotoUrl = parcel.readString();
    }

    public List<RideHistoryInfo> getRidesList() {
        return this.ridesList;
    }

    public void setRidesList(List<RideHistoryInfo> list) {
        this.ridesList = list;
    }

    public String getSnappDuration() {
        return this.snappDuration;
    }

    public void setSnappDuration(String str) {
        this.snappDuration = str;
    }

    public String getSnappMileage() {
        return this.snappMileage;
    }

    public void setSnappMileage(String str) {
        this.snappMileage = str;
    }

    public String getSuccessfulRides() {
        return this.successfulRides;
    }

    public void setSuccessfulRides(String str) {
        this.successfulRides = str;
    }

    public String getPassengerPhotoUrl() {
        return this.passengerPhotoUrl;
    }

    public void setPassengerPhotoUrl(String str) {
        this.passengerPhotoUrl = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.ridesList);
        parcel.writeString(this.snappDuration);
        parcel.writeString(this.snappMileage);
        parcel.writeString(this.successfulRides);
        parcel.writeString(this.passengerPhotoUrl);
    }

    public String toString() {
        return "SnappPassengerRideHistoryResponse{ridesList=" + this.ridesList + ", snappDuration='" + this.snappDuration + '\'' + ", snappMileage='" + this.snappMileage + '\'' + ", successfulRides='" + this.successfulRides + '\'' + ", passengerPhotoUrl='" + this.passengerPhotoUrl + '\'' + '}';
    }
}
