package cab.snapp.passenger.data.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;
import java.util.ArrayList;
import java.util.List;

public class RideHistoryInfo implements Parcelable {
    public static final Parcelable.Creator<RideHistoryInfo> CREATOR = new Parcelable.Creator<RideHistoryInfo>() {
        public final RideHistoryInfo createFromParcel(Parcel parcel) {
            return new RideHistoryInfo(parcel);
        }

        public final RideHistoryInfo[] newArray(int i) {
            return new RideHistoryInfo[i];
        }
    };
    @c("created_at")
    private String createdAt;
    @c("destination_details")
    private String destinationDetail;
    @c("destination_formatted_address")
    private String destinationFormattedAddress;
    @c("destination_lat")
    private double destinationLat;
    @c("destination_lng")
    private double destinationLng;
    @c("driver_name")
    private String driverName;
    @c("driver_photo")
    private String driverPhotoUrl;
    @c("estimated_distance")
    private double estimatedDistance;
    @c("estimated_duration")
    private double estimatedDuration;
    @c("final_price")
    private double finalPrice;
    @c("has_rated")
    private boolean hasRated;
    @c("human_readable_id")
    private String humanReadableID;
    @c("is_delivery")
    private boolean isDelivery;
    @c("latest_ride_status")
    private int lastestRideStatus;
    @c("map_url")
    private String map_url;
    @c("origin_details")
    private String originDetail;
    @c("origin_formatted_address")
    private String originFormattedAddress;
    @c("origin_lat")
    private double originLat;
    @c("origin_lng")
    private double originLng;
    @c("rate")
    private int rate;
    @c("receipt_link")
    private String receiptLink;
    @c("options")
    private Options rideOptions;
    @c("rows")
    private List<RideHistoryDetailRow> rows;
    @c("title")
    private String title;
    @c("updated_at")
    private String updatedAt;
    @c("vehicle_model")
    private String vehicleModel;

    public int describeContents() {
        return 0;
    }

    public RideHistoryInfo() {
    }

    protected RideHistoryInfo(Parcel parcel) {
        this.originLat = parcel.readDouble();
        this.originLng = parcel.readDouble();
        this.originDetail = parcel.readString();
        this.originFormattedAddress = parcel.readString();
        this.destinationLat = parcel.readDouble();
        this.destinationLng = parcel.readDouble();
        this.destinationDetail = parcel.readString();
        this.destinationFormattedAddress = parcel.readString();
        this.estimatedDuration = parcel.readDouble();
        this.estimatedDistance = parcel.readDouble();
        this.finalPrice = parcel.readDouble();
        this.humanReadableID = parcel.readString();
        this.lastestRideStatus = parcel.readInt();
        this.createdAt = parcel.readString();
        this.updatedAt = parcel.readString();
        this.map_url = parcel.readString();
        this.driverName = parcel.readString();
        this.driverPhotoUrl = parcel.readString();
        boolean z = true;
        this.hasRated = parcel.readByte() != 0;
        this.rate = parcel.readInt();
        this.rows = new ArrayList();
        parcel.readList(this.rows, RideHistoryDetailRow.class.getClassLoader());
        this.title = parcel.readString();
        this.vehicleModel = parcel.readString();
        this.receiptLink = parcel.readString();
        this.rideOptions = (Options) parcel.readParcelable(Options.class.getClassLoader());
        this.isDelivery = parcel.readByte() == 0 ? false : z;
    }

    public double getOriginLat() {
        return this.originLat;
    }

    public void setOriginLat(double d) {
        this.originLat = d;
    }

    public double getOriginLng() {
        return this.originLng;
    }

    public void setOriginLng(double d) {
        this.originLng = d;
    }

    public String getOriginDetail() {
        return this.originDetail;
    }

    public void setOriginDetail(String str) {
        this.originDetail = str;
    }

    public String getOriginFormattedAddress() {
        return this.originFormattedAddress;
    }

    public void setOriginFormattedAddress(String str) {
        this.originFormattedAddress = str;
    }

    public double getDestinationLat() {
        return this.destinationLat;
    }

    public void setDestinationLat(double d) {
        this.destinationLat = d;
    }

    public double getDestinationLng() {
        return this.destinationLng;
    }

    public void setDestinationLng(double d) {
        this.destinationLng = d;
    }

    public String getDestinationDetail() {
        return this.destinationDetail;
    }

    public void setDestinationDetail(String str) {
        this.destinationDetail = str;
    }

    public String getDestinationFormattedAddress() {
        return this.destinationFormattedAddress;
    }

    public void setDestinationFormattedAddress(String str) {
        this.destinationFormattedAddress = str;
    }

    public double getEstimatedDuration() {
        return this.estimatedDuration;
    }

    public void setEstimatedDuration(double d) {
        this.estimatedDuration = d;
    }

    public double getEstimatedDistance() {
        return this.estimatedDistance;
    }

    public void setEstimatedDistance(double d) {
        this.estimatedDistance = d;
    }

    public double getFinalPrice() {
        return this.finalPrice;
    }

    public void setFinalPrice(double d) {
        this.finalPrice = d;
    }

    public String getHumanReadableID() {
        return this.humanReadableID;
    }

    public void setHumanReadableID(String str) {
        this.humanReadableID = str;
    }

    public int getLastestRideStatus() {
        return this.lastestRideStatus;
    }

    public void setLastestRideStatus(int i) {
        this.lastestRideStatus = i;
    }

    public String getCreatedAt() {
        return this.createdAt;
    }

    public void setCreatedAt(String str) {
        this.createdAt = str;
    }

    public String getUpdatedAt() {
        return this.updatedAt;
    }

    public void setUpdatedAt(String str) {
        this.updatedAt = str;
    }

    public String getMap_url() {
        return this.map_url;
    }

    public void setMap_url(String str) {
        this.map_url = str;
    }

    public String getDriverName() {
        return this.driverName;
    }

    public void setDriverName(String str) {
        this.driverName = str;
    }

    public String getDriverPhotoUrl() {
        return this.driverPhotoUrl;
    }

    public void setDriverPhotoUrl(String str) {
        this.driverPhotoUrl = str;
    }

    public boolean getHasRated() {
        return this.hasRated;
    }

    public int getRate() {
        return this.rate;
    }

    public void setRate(int i) {
        this.rate = i;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public List<RideHistoryDetailRow> getRows() {
        return this.rows;
    }

    public void setRows(List<RideHistoryDetailRow> list) {
        this.rows = list;
    }

    public boolean isHasRated() {
        return this.hasRated;
    }

    public void setHasRated(boolean z) {
        this.hasRated = z;
    }

    public String getVehicleModel() {
        return this.vehicleModel;
    }

    public void setVehicleModel(String str) {
        this.vehicleModel = str;
    }

    public String getReceiptLink() {
        return this.receiptLink;
    }

    public void setReceiptLink(String str) {
        this.receiptLink = str;
    }

    public Options getRideOptions() {
        return this.rideOptions;
    }

    public void setRideOptions(Options options) {
        this.rideOptions = options;
    }

    public boolean isDelivery() {
        return this.isDelivery;
    }

    public void setDelivery(boolean z) {
        this.isDelivery = z;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.originLat);
        parcel.writeDouble(this.originLng);
        parcel.writeString(this.originDetail);
        parcel.writeString(this.originFormattedAddress);
        parcel.writeDouble(this.destinationLat);
        parcel.writeDouble(this.destinationLng);
        parcel.writeString(this.destinationDetail);
        parcel.writeString(this.destinationFormattedAddress);
        parcel.writeDouble(this.estimatedDuration);
        parcel.writeDouble(this.estimatedDistance);
        parcel.writeDouble(this.finalPrice);
        parcel.writeString(this.humanReadableID);
        parcel.writeInt(this.lastestRideStatus);
        parcel.writeString(this.createdAt);
        parcel.writeString(this.updatedAt);
        parcel.writeString(this.map_url);
        parcel.writeString(this.driverName);
        parcel.writeString(this.driverPhotoUrl);
        parcel.writeByte(this.hasRated ? (byte) 1 : 0);
        parcel.writeInt(this.rate);
        parcel.writeList(this.rows);
        parcel.writeString(this.title);
        parcel.writeString(this.vehicleModel);
        parcel.writeString(this.receiptLink);
        parcel.writeParcelable(this.rideOptions, i);
        parcel.writeByte(this.isDelivery ? (byte) 1 : 0);
    }
}
