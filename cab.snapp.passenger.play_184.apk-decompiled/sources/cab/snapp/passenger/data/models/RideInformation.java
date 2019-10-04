package cab.snapp.passenger.data.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.a.c;
import javax.inject.Inject;

public class RideInformation implements Parcelable {
    public static final Parcelable.Creator<RideInformation> CREATOR = new Parcelable.Creator<RideInformation>() {
        public final RideInformation createFromParcel(Parcel parcel) {
            return new RideInformation(parcel);
        }

        public final RideInformation[] newArray(int i) {
            return new RideInformation[i];
        }
    };
    @c("can_use_ride_voucher")
    private boolean canUseRideVoucher;
    @c("current_state")
    private int currentState;
    @c("destination")
    private FormattedAddress destination;
    @c("final_price")
    private double finalPrice;
    @c("is_delivery")
    private boolean isDelivery;
    @c("origin")
    private FormattedAddress origin;
    @c("reallotted")
    private String reallottedRideId;
    @c("ride_id")
    private String rideId;
    @c("service_type")
    private int serviceType;
    @c("shareurl")
    private String shareUrl;
    @c("start_time")
    private String startTime;
    @c("sub_service_type")
    private int subServiceType;
    @c("title")
    private String title;

    public int describeContents() {
        return 0;
    }

    @Inject
    public RideInformation() {
    }

    protected RideInformation(Parcel parcel) {
        this.rideId = parcel.readString();
        this.serviceType = parcel.readInt();
        boolean z = true;
        this.isDelivery = parcel.readByte() != 0;
        this.subServiceType = parcel.readInt();
        this.finalPrice = parcel.readDouble();
        this.origin = (FormattedAddress) parcel.readParcelable(FormattedAddress.class.getClassLoader());
        this.destination = (FormattedAddress) parcel.readParcelable(FormattedAddress.class.getClassLoader());
        this.currentState = parcel.readInt();
        this.startTime = parcel.readString();
        this.shareUrl = parcel.readString();
        this.canUseRideVoucher = parcel.readByte() == 0 ? false : z;
        this.title = parcel.readString();
    }

    public String getRideId() {
        return this.rideId;
    }

    public String getReallottedRideId() {
        return this.reallottedRideId;
    }

    public void setRideId(String str) {
        this.rideId = str;
    }

    public int getSubServiceType() {
        return this.subServiceType;
    }

    public void setSubServiceType(int i) {
        this.subServiceType = i;
    }

    public double getFinalPrice() {
        return this.finalPrice;
    }

    public void setFinalPrice(double d) {
        this.finalPrice = d;
    }

    public FormattedAddress getOrigin() {
        return this.origin;
    }

    public void setOrigin(FormattedAddress formattedAddress) {
        this.origin = formattedAddress;
    }

    public FormattedAddress getDestination() {
        return this.destination;
    }

    public void setDestination(FormattedAddress formattedAddress) {
        this.destination = formattedAddress;
    }

    public int getCurrentState() {
        return this.currentState;
    }

    public void setCurrentState(int i) {
        this.currentState = i;
    }

    public String getShareUrl() {
        return this.shareUrl;
    }

    public void setShareUrl(String str) {
        this.shareUrl = str;
    }

    public String getStartTime() {
        return this.startTime;
    }

    public void setStartTime(String str) {
        this.startTime = str;
    }

    public boolean isCanUseRideVoucher() {
        return this.canUseRideVoucher;
    }

    public void setCanUseRideVoucher(boolean z) {
        this.canUseRideVoucher = z;
    }

    public int getServiceType() {
        return this.serviceType;
    }

    public void setServiceType(int i) {
        this.serviceType = i;
    }

    public boolean isDelivery() {
        return this.isDelivery;
    }

    public void setDelivery(boolean z) {
        this.isDelivery = z;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.rideId);
        parcel.writeString(this.reallottedRideId);
        parcel.writeInt(this.serviceType);
        parcel.writeByte(this.isDelivery ? (byte) 1 : 0);
        parcel.writeInt(this.subServiceType);
        parcel.writeDouble(this.finalPrice);
        parcel.writeParcelable(this.origin, i);
        parcel.writeParcelable(this.destination, i);
        parcel.writeInt(this.currentState);
        parcel.writeString(this.startTime);
        parcel.writeString(this.shareUrl);
        parcel.writeByte(this.canUseRideVoucher ? (byte) 1 : 0);
        parcel.writeString(this.title);
    }

    public String toString() {
        return "RideInformation{rideId='" + this.rideId + '\'' + ", reallotted=" + this.reallottedRideId + "', serviceType=" + this.serviceType + ", isDelivery=" + this.isDelivery + ", subServiceType=" + this.subServiceType + ", finalPrice=" + this.finalPrice + ", origin=" + this.origin + ", destination=" + this.destination + ", currentState=" + this.currentState + ", startTime='" + this.startTime + '\'' + ", shareUrl='" + this.shareUrl + '\'' + ", canUseRideVoucher=" + this.canUseRideVoucher + ", title='" + this.title + '\'' + '}';
    }
}
