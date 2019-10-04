package cab.snapp.passenger.data_access_layer.network.requests;

import cab.snapp.snappnetwork.model.d;
import com.google.gson.a.c;

public class PriceRequest extends d {
    @c("destination_lat")
    private double destinationLat;
    @c("destination_lng")
    private double destinationLng;
    @c("destination_place_id")
    private int destinationPlaceID;
    @c("extra_destination_lat")
    private Double extraDestinationLat;
    @c("extra_destination_lng")
    private Double extraDestinationLng;
    @c("origin_lat")
    private double originLat;
    @c("origin_lng")
    private double originLng;
    @c("services")
    private boolean packageDelivery;
    @c("round_trip")
    private boolean roundTrip;
    @c("service_type")
    private int serviceType;
    @c("tag")
    private String tag;
    @c("voucher_code")
    private String voucherCode;
    @c("waiting")
    private String waiting;

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

    public int getServiceType() {
        return this.serviceType;
    }

    public void setServiceType(int i) {
        this.serviceType = i;
    }

    public String getVoucherCode() {
        return this.voucherCode;
    }

    public void setVoucherCode(String str) {
        this.voucherCode = str;
    }

    public int getDestinationPlaceID() {
        return this.destinationPlaceID;
    }

    public void setDestinationPlaceID(int i) {
        this.destinationPlaceID = i;
    }

    public boolean isPackageDelivery() {
        return this.packageDelivery;
    }

    public void setPackageDelivery(boolean z) {
        this.packageDelivery = z;
    }

    public String getWaiting() {
        return this.waiting;
    }

    public void setWaiting(String str) {
        this.waiting = str;
    }

    public boolean isRoundTrip() {
        return this.roundTrip;
    }

    public void setRoundTrip(boolean z) {
        this.roundTrip = z;
    }

    public Double getExtraDestinationLng() {
        return this.extraDestinationLng;
    }

    public void setExtraDestinationLng(Double d) {
        this.extraDestinationLng = d;
    }

    public Double getExtraDestinationLat() {
        return this.extraDestinationLat;
    }

    public void setExtraDestinationLat(Double d) {
        this.extraDestinationLat = d;
    }

    public String getTag() {
        return this.tag;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public String toString() {
        return "SnappPassengerPriceRequest{originLat=" + this.originLat + ", originLng=" + this.originLng + ", destinationLat=" + this.destinationLat + ", destinationLng=" + this.destinationLng + ", serviceType=" + this.serviceType + ", voucherCode='" + this.voucherCode + '\'' + ", destinationPlaceID=" + this.destinationPlaceID + ", extraDestinationLat=" + this.extraDestinationLat + ", extraDestinationLng=" + this.extraDestinationLng + ", roundTrip=" + this.roundTrip + ", waiting='" + this.waiting + '\'' + ", packageDelivery=" + this.packageDelivery + ", tag='" + this.tag + '\'' + '}';
    }
}
